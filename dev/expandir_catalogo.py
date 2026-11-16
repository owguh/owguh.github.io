"""Expande o catálogo do CineExpert com filmes do TMDB e classificação automática.

Uso (no seu computador, com o mesmo .env do preparar_tmdb.py):
    uv run --no-project python dev/expandir_catalogo.py --env "C:\\caminho\\para\\backend\\.env"
    uv run --no-project python dev/expandir_catalogo.py --env "..." --total 1000 --simular

O que faz:
1. Busca no TMDB os filmes mais votados de cada gênero do CineExpert até o catálogo
   chegar a --total filmes (padrão 1000), repartindo igualmente entre os 8 gêneros.
2. Classifica cada filme novo automaticamente (atmosfera, narrativa, ritmo, reviravolta,
   subgênero) a partir dos gêneros e das palavras-chave do TMDB. As etiquetas usadas
   pelas regras do motor são derivadas dessa classificação, como nos filmes curados.
3. Baixa a capa em tamanho w185 (~14 KB) para capas/ e grava sinopse, direção e elenco
   em metadados.js.

Os 200 filmes curados à mão não são alterados. Os novos entram com
classificacao_status "preliminar" e origem "automatica".
--simular mostra o que seria adicionado sem gravar nada.
"""
import argparse,json,re,sys,time,pathlib,urllib.request,urllib.parse,urllib.error,datetime
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parent))
from preparar_tmdb import token_from,get_json,norm  # mesmo token e mesma normalização

ROOT=pathlib.Path(__file__).resolve().parent.parent
API='https://api.themoviedb.org/3'

# Gêneros do TMDB: 12 aventura, 14 fantasia, 16 animação, 18 drama, 27 terror, 28 ação, 35 comédia,
# 36 história, 53 thriller, 80 crime, 878 ficção científica, 9648 mistério, 10749 romance, 10751 família, 10752 guerra.
# Ordem de processamento = prioridade quando um filme serve para mais de um gênero do CineExpert.
GENEROS=[
 ('animacao',          {'with_genres':'16'}),
 ('terror',            {'with_genres':'27','without_genres':'16'}),
 ('ficcao_cientifica', {'with_genres':'878','without_genres':'16,27'}),
 ('romance',           {'with_genres':'10749','without_genres':'16,27,878'}),
 ('comedia',           {'with_genres':'35','without_genres':'16,27,878,10749'}),
 ('acao',              {'with_genres':'28','without_genres':'16,27,878'}),
 ('suspense',          {'with_genres':'53|9648','without_genres':'16,27,878,28'}),
 ('drama',             {'with_genres':'18','without_genres':'16,27,878,35,28,53,10749,9648'}),
]
# Atmosferas e narrativas permitidas por gênero (as mesmas listas da entrevista em aplicativo.js).
ATM_G={'comedia':['leve','emocional','reflexiva'],'acao':['tensa','leve','emocional','reflexiva'],'romance':['leve','emocional','reflexiva'],
 'terror':['sombria','tensa','reflexiva'],'suspense':['tensa','sombria','reflexiva','leve'],'animacao':['fantastica','leve','emocional','reflexiva'],
 'ficcao_cientifica':['fantastica','tensa','reflexiva','emocional'],'drama':['emocional','reflexiva','sombria','leve']}
NAR_G={'terror':['psicologica','misterio','investigacao','critica_social'],'suspense':['investigacao','misterio','psicologica','critica_social'],
 'animacao':['aventura','emocional','filosofica','critica_social'],'ficcao_cientifica':['filosofica','aventura','misterio','psicologica'],
 'drama':['emocional','critica_social','psicologica','filosofica'],'comedia':['emocional','critica_social','aventura'],
 'acao':['aventura','investigacao','critica_social','emocional'],'romance':['romantica','emocional','filosofica']}
PADRAO={'suspense':(['tensa'],['misterio']),'terror':(['sombria','tensa'],['misterio']),'animacao':(['leve'],['aventura']),
 'ficcao_cientifica':(['fantastica'],['aventura']),'drama':(['emocional'],['emocional']),'comedia':(['leve'],['emocional']),
 'acao':(['tensa'],['aventura']),'romance':(['emocional'],['romantica'])}

# Sinais por palavras-chave do TMDB (em inglês, comparadas em minúsculas e por trecho).
KW={
 'twist':['plot twist','twist ending','surprise ending','unreliable narrator','mind bending','mindfuck','shocking ending'],
 'investigacao':['investigation','detective','police','murder investigation','serial killer','journalist','missing person','whodunit','fbi','private investigator','crime scene','cold case','interrogation'],
 'misterio':['mystery','puzzle','conspiracy','enigma','amnesia','time loop','secret','cover-up','riddle'],
 'psicologica':['psychological','paranoia','obsession','insanity','psychopath','manipulation','delusion','mental illness','schizophrenia','gaslighting','trauma','isolation'],
 'sobrenatural':['supernatural','ghost','demon','possession','haunted','exorcism','curse','witch','evil spirit','paranormal','poltergeist'],
 'folk':['folk horror','cult','pagan','ritual','folklore','village','rural','sacrifice'],
 'filosofica':['philosophy','existential','consciousness','meaning of life','identity','free will','memory','dystopia','utopia','human nature','time travel'],
 'tecnologia':['artificial intelligence','robot','android','cyberpunk','virtual reality','computer','hacker','technology','cyborg','simulation','clone'],
 'espaco':['space','spaceship','astronaut','alien','galaxy','planet','space travel','space opera','extraterrestrial'],
 'superacao':['based on true story','biography','sports','inspirational','underdog','disability','illness','cancer','overcoming','struggle','true story'],
 'relacoes':['family','relationship','marriage','friendship','father','mother','daughter','son','coming of age','siblings','love','divorce'],
 'critica_social':['racism','social commentary','poverty','politics','class','corruption','discrimination','injustice','prison','slavery','immigration','satire','inequality','capitalism','dictatorship'],
 'satira':['satire','parody','dark comedy','black comedy','spoof','mockumentary'],
 'emocional':['friendship','grief','loss','tearjerker','heartwarming','feel-good','death of','loneliness','coming of age'],
 'espionagem':['spy','secret agent','espionage','cia','mi6','kgb','undercover','double agent','assassin','heist'],
 'perseguicao':['car chase','chase','street racing','car race','fugitive','revenge','one man army','martial arts','manhunt','escape','getaway'],
 'aventura':['adventure','superhero','treasure','quest','jungle','based on comic','expedition','journey','pirate'],
 'fantasia':['magic','fairy tale','dragon','fantasy world','wizard','princess','mythology','spirit','enchanted'],
 'lento':['slow burn','meditative','contemplative','minimalism'],
 'sombria':['serial killer','murder','violence','neo-noir','film noir','revenge','gore','brutality','torture','death'],
 'reflexiva':['philosophy','existential','social commentary','reflection','melancholy','memory','grief'],
}
def tem(kws,chave):return sum(1 for k in KW[chave] if any(k in x for x in kws))

def classificar(gen,info,kws):
    """Classificação automática. Devolve atmosferas, narrativas, ritmo, reviravolta, perfil e etiquetas."""
    G={g['id'] for g in info.get('genres',[])}
    rt=info.get('runtime') or 0
    s={k:tem(kws,k) for k in KW}
    # Subgênero (perfil): maior sinal entre as opções do gênero; sem sinal, fica sem subgênero.
    cand={
     'terror':{'terror_psicologico':s['psicologica'],'terror_sobrenatural':s['sobrenatural']+(1 if 14 in G else 0),'folk_horror':s['folk'],'terror_investigativo':s['investigacao']+(1 if 9648 in G else 0)},
     'suspense':{'suspense_investigativo':s['investigacao']+(1 if 80 in G else 0),'suspense_enigmatico':s['misterio']+(1 if 9648 in G else 0),'suspense_psicologico':s['psicologica']},
     'animacao':{'animacao_fantasia':s['fantasia']+(2 if 14 in G else 0),'animacao_aventura':s['aventura']+(2 if 12 in G else 0),'animacao_emocional':s['emocional']+(2 if 18 in G else 0)},
     'ficcao_cientifica':{'ficcao_filosofica':s['filosofica'],'ficcao_aventura':s['espaco']+s['aventura']+(1 if 12 in G else 0),'ficcao_tecnologia':s['tecnologia']},
     'drama':{'drama_superacao':s['superacao'],'drama_relacoes':s['relacoes'],'drama_critica_social':s['critica_social']+(1 if 36 in G or 10752 in G else 0)},
     'comedia':{'comedia_leve':1+(1 if 10751 in G else 0),'comedia_emocional':s['emocional']+(2 if 18 in G else 0),'comedia_social':2*s['satira']+s['critica_social']},
     'acao':{'acao_espionagem':s['espionagem'],'acao_perseguicao':s['perseguicao']+(1 if 80 in G else 0),'acao_aventura':s['aventura']+(2 if 12 in G else 0)},
     'romance':{'romance_leve':2 if 35 in G else 0,'romance_drama':2 if 18 in G else 0,'romance_classico':3 if int((info.get('release_date') or '9999')[:4])<=1999 else 0},
    }[gen]
    perfil=max(cand,key=cand.get) if max(cand.values())>0 else None

    # Atmosfera
    atm=[]
    if 53 in G or 27 in G or s['psicologica']:atm.append('tensa')
    if 27 in G or 80 in G or s['sombria']>=2:atm.append('sombria')
    if 35 in G or 10751 in G:atm.append('leve')
    if 18 in G or 10749 in G or s['emocional']:atm.append('emocional')
    if s['reflexiva'] or s['filosofica'] or s['critica_social']>=2:atm.append('reflexiva')
    if 14 in G or (878 in G and s['espaco']) or (gen=='animacao' and s['fantasia']):atm.append('fantastica')
    atm=[a for a in dict.fromkeys(atm) if a in ATM_G[gen]][:2] or PADRAO[gen][0]

    # Narrativa
    nar=[]
    if s['investigacao'] or 80 in G:nar.append('investigacao')
    if s['misterio'] or 9648 in G:nar.append('misterio')
    if s['psicologica']:nar.append('psicologica')
    if s['filosofica']:nar.append('filosofica')
    if s['critica_social']>=1 and (gen in ('drama','comedia') or s['critica_social']>=2):nar.append('critica_social')
    if s['aventura'] or 12 in G or s['espaco']:nar.append('aventura')
    if s['emocional'] or 18 in G:nar.append('emocional')
    if 10749 in G:nar.append('romantica')
    # o subgênero puxa a narrativa correspondente para a frente
    pref={'terror_psicologico':'psicologica','terror_investigativo':'investigacao','suspense_investigativo':'investigacao','suspense_enigmatico':'misterio',
          'suspense_psicologico':'psicologica','ficcao_filosofica':'filosofica','ficcao_aventura':'aventura','drama_critica_social':'critica_social',
          'comedia_social':'critica_social','acao_espionagem':'investigacao','acao_aventura':'aventura','animacao_aventura':'aventura','animacao_emocional':'emocional'}.get(perfil)
    if pref:nar.insert(0,pref)
    nar=[n for n in dict.fromkeys(nar) if n in NAR_G[gen]][:2] or PADRAO[gen][1]

    # Ritmo
    if s['lento'] or (gen=='terror' and perfil in ('terror_psicologico','folk_horror')) or (gen in ('drama','romance') and rt>=140):ritmo='lento'
    elif gen in ('acao',) or (28 in G) or (gen in ('suspense','terror') and rt and rt<=100):ritmo='rapido'
    else:ritmo='moderado'

    twist=s['twist']>0
    # Etiquetas das regras R01–R45, derivadas da classificação (como nos filmes curados).
    tags=[]
    regra=[('suspense',None,'reviravolta',twist),('suspense','investigacao','investigativo',None),('suspense','misterio','misterio_complexo',None),
           ('suspense','sombria','sombrio',None),('suspense','rapido','ritmo_intenso',None),('suspense','psicologica','psicologico',None),
           ('terror','psicologica','terror_psicologico',None),('terror','tensa','tensao_alta',None),('terror','lento','construcao_lenta',None),
           ('animacao','fantastica','fantasia',None),('animacao','aventura','aventura',None),('animacao','leve','acolhedor',None),('animacao','emocional','emocional',None),
           ('ficcao_cientifica','filosofica','filosofico',None),('ficcao_cientifica','aventura','aventura',None),('ficcao_cientifica','reflexiva','reflexivo',None),
           ('drama','emocional','emocional',None),('comedia','leve','humor',None)]
    fatos=set(atm)|set(nar)|{ritmo}
    for g,fato,tag,cond in regra:
        if g!=gen:continue
        if (cond if fato is None else fato in fatos):tags.append(tag)
    if twist and gen in ('terror','ficcao_cientifica'):tags.append('reviravolta')
    if 'critica_social' in nar:tags.append('critica_social')
    if not twist:tags.append('sem_reviravolta')
    if perfil:tags.append(perfil)
    return {'atmosferas':atm,'narrativas':nar,'ritmo':ritmo,'tem_reviravolta':twist,'tags':list(dict.fromkeys(tags)),'perfil':perfil}

def slug(s):
    return re.sub(r'\s+','-',norm(s)).strip('-')[:70] or 'filme'

def ler_js(path,prefix):
    txt=path.read_text(encoding='utf-8').strip()
    return json.loads(txt[len(prefix):].rstrip(';'))

def main():
    p=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('--env',help='Caminho do .env com TMDB_BEARER_TOKEN (mantido fora do site)')
    p.add_argument('--total',type=int,default=1000,help='Tamanho final do catálogo (padrão 1000)')
    p.add_argument('--votos-minimos',type=int,default=300,help='Ignora filmes com menos votos no TMDB (padrão 300)')
    p.add_argument('--simular',action='store_true',help='Mostra o que seria adicionado, sem gravar')
    a=p.parse_args();token=token_from(a.env)
    DPRE,MPRE='const CINE_DATA = ','const CINE_METADATA = '
    dados=ler_js(ROOT/'dados.js',DPRE);meta=ler_js(ROOT/'metadados.js',MPRE) if (ROOT/'metadados.js').exists() else {}
    filmes=dados['filmes']
    faltam=a.total-len(filmes)
    if faltam<=0:print(f'O catálogo já tem {len(filmes)} filmes. Nada a fazer.');return
    cota=-(-a.total//len(GENEROS))  # por gênero, arredondado para cima
    usados_tmdb={f.get('tmdb_id') for f in filmes}|{m.get('tmdb_id') for m in meta.values()}
    usados_tit={(norm(f['titulo']),f['ano']) for f in filmes}|{(norm(f.get('busca_tmdb','')),f['ano']) for f in filmes}
    ids={f['id'] for f in filmes}
    hoje=datetime.date.today().isoformat()
    novos=[];novos_meta={};relatorio=[];pulados=0
    (ROOT/'capas').mkdir(exist_ok=True)
    for gen,filtro in GENEROS:
        atual=sum(1 for f in filmes if f['genero']==gen)+sum(1 for f in novos if f['genero']==gen)
        precisa=min(cota-atual,faltam-len(novos))
        page=1
        print(f'{gen}: {atual} no catálogo, buscando {max(precisa,0)} novos...')
        while precisa>0 and page<=40:
            q={'language':'pt-BR','sort_by':'vote_count.desc','include_adult':'false','vote_count.gte':a.votos_minimos,
               'primary_release_date.lte':hoje,'page':page,**filtro}
            res=get_json(f'{API}/discover/movie?'+urllib.parse.urlencode(q),token).get('results',[])
            if not res:break
            for r in res:
                if precisa<=0:break
                ano=int((r.get('release_date') or '0')[:4] or 0)
                if not ano or not r.get('poster_path') or r['id'] in usados_tmdb:continue
                if (norm(r.get('title')),ano) in usados_tit or (norm(r.get('original_title')),ano) in usados_tit:continue
                try:
                    info=get_json(f"{API}/movie/{r['id']}?language=pt-BR&append_to_response=credits,keywords",token)
                    kws=[k.get('name','').lower() for k in info.get('keywords',{}).get('keywords',[])]
                    c=classificar(gen,info,kws)
                    titulo=info.get('title') or r.get('title') or r.get('original_title')
                    fid=slug(titulo)
                    if fid in ids:fid=f'{fid}-{ano}'
                    if fid in ids:fid=f"{fid}-{r['id']}"
                    poster=info.get('poster_path') or r.get('poster_path')
                    if not re.fullmatch(r'/[a-zA-Z0-9_-]+\.(jpg|png)',poster or ''):pulados+=1;continue
                    if not a.simular:
                        destino=ROOT/'capas'/(fid+'.jpg')
                        if not destino.exists():
                            req=urllib.request.Request('https://image.tmdb.org/t/p/w185'+poster,headers={'User-Agent':'CineExpertAcademico/4.6'})
                            with urllib.request.urlopen(req,timeout=20) as rsp:raw=rsp.read(600_001)
                            if len(raw)>600_000 or raw[:2]!=b'\xff\xd8':pulados+=1;continue
                            destino.write_bytes(raw)
                    f={'id':fid,'titulo':titulo,'ano':ano,'genero':gen,'formato':'animacao' if gen=='animacao' else 'live_action',
                       'atmosferas':c['atmosferas'],'narrativas':c['narrativas'],'ritmo':c['ritmo'],'tem_reviravolta':c['tem_reviravolta'],
                       'tags':c['tags'],'busca_tmdb':info.get('original_title') or titulo,'tmdb_id':r['id'],
                       # "Clássico" automático: lançado há 20+ anos, nota alta e muito votado.
                       'classico_editorial':ano<=datetime.date.today().year-20 and (info.get('vote_average') or 0)>=7.8 and (info.get('vote_count') or 0)>=3000,
                       'classificacao_status':'preliminar','origem':'automatica'}
                    crew=info.get('credits',{}).get('crew',[])
                    novos_meta[fid]={'poster':True,'tmdb_id':r['id'],'overview':info.get('overview') or '','runtime':info.get('runtime'),
                       'vote_average':info.get('vote_average'),'director':next((x.get('name','') for x in crew if x.get('job')=='Director'),''),
                       'cast':[x.get('name','') for x in info.get('credits',{}).get('cast',[])[:5]]}
                    novos.append(f);ids.add(fid);usados_tmdb.add(r['id']);usados_tit.add((norm(titulo),ano));precisa-=1
                    relatorio.append([fid,titulo,ano,gen,c['perfil'] or '',' '.join(c['atmosferas']),' '.join(c['narrativas']),c['ritmo'],'sim' if c['tem_reviravolta'] else 'não',str(len(kws))])
                    time.sleep(0.03)
                except (urllib.error.URLError,TimeoutError,ValueError,KeyError) as e:
                    pulados+=1;print(f"  aviso: {r.get('title')} ignorado ({e})")
            page+=1
        if precisa>0:print(f'  {gen}: faltaram {precisa} (o TMDB não tinha mais filmes com {a.votos_minimos}+ votos sem repetir)')
    print(f'\nNovos filmes: {len(novos)} · ignorados: {pulados} · catálogo final: {len(filmes)+len(novos)}')
    sem_perfil=sum(1 for r in relatorio if not r[4]);print(f'Sem subgênero identificado: {sem_perfil} (continuam recomendáveis pelo gênero e demais critérios)')
    rel=ROOT/'dev'/'expansao_relatorio.csv'
    if a.simular:
        for r in relatorio[:25]:print('  ',r)
        print('Simulação: nada foi gravado.');return
    dados['filmes']=filmes+novos;meta.update(novos_meta)
    (ROOT/'dados.js').write_text(DPRE+json.dumps(dados,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    (ROOT/'metadados.js').write_text(MPRE+json.dumps(meta,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    import csv
    with rel.open('w',newline='',encoding='utf-8-sig') as fh:
        w=csv.writer(fh,delimiter=';');w.writerow(['id','titulo','ano','genero','subgenero','atmosferas','narrativas','ritmo','reviravolta','palavras_chave']);w.writerows(relatorio)
    print(f'Gravado: dados.js, metadados.js, {len(novos)} capas em capas/ e o relatório {rel.relative_to(ROOT)}.')
    print('Confira com: node dev/testes_catalogo.cjs  — depois faça commit e push.')

if __name__=='__main__':main()
