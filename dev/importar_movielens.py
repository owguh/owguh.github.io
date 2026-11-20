"""Reclassifica os filmes automáticos com o Tag Genome do MovieLens (GroupLens, Univ. de Minnesota).

O Tag Genome dá, para cada filme, uma nota de 0 a 1 em mais de mil etiquetas ("twist ending",
"dark", "tense", "slow", "feel-good", "thought-provoking", "detective", "supernatural"...).
Este script traduz essas notas para a classificação do CineExpert: atmosfera, narrativa, ritmo,
reviravolta e subgênero. As etiquetas das regras R01–R45 são refeitas com a mesma função da
classificação automática (derivar_tags).

Quem é alterado: só os filmes com "origem": "automatica" (que ainda não passaram pela curadoria)
e os que estão "aguardando curadoria". Os filmes curados à mão nunca são tocados. O gênero não
muda; quando o MovieLens sugere outro gênero com força, o filme ganha "genero_sugerido" e aparece
no filtro "Gênero a revisar" da tela de curadoria.

Como usar (no seu computador):
  1. Baixe o MovieLens 25M em https://grouplens.org/datasets/movielens/25m/  (ml-25m.zip, ~250 MB)
  2. uv run --no-project python dev/importar_movielens.py "C:\\Users\\voce\\Downloads\\ml-25m.zip" --simular
  3. uv run --no-project python dev/importar_movielens.py "C:\\Users\\voce\\Downloads\\ml-25m.zip"
  4. node dev/testes_catalogo.cjs   e depois commit de dados.js e dev/movielens_relatorio.csv
Também aceita a pasta já descompactada no lugar do .zip.

Citação pedida pela GroupLens: Jesse Vig, Shilad Sen e John Riedl. 2012. The Tag Genome: Encoding
Community Knowledge to Support Novel Interaction. ACM TiiS 2(3): 13:1–13:44. Dados de uso não
comercial/pesquisa; o arquivo do MovieLens não é publicado, só a classificação derivada.
"""
import argparse,csv,io,json,pathlib,sys,zipfile,datetime,collections
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parent))
from expandir_catalogo import derivar_tags,ATM_G,NAR_G,ROOT,ler_js

# Conceitos do CineExpert -> etiquetas do Tag Genome (vale a maior nota entre os sinônimos).
# Etiquetas que não existirem na versão baixada são ignoradas e listadas no fim.
CONCEITOS={
 'twist':['twist ending','plot twist','surprise ending','twists & turns','mindfuck'],
 # atmosferas
 'tensa':['tense','suspense','suspenseful','intense','tension'],
 'sombria':['dark','bleak','disturbing','grim','noir','dark atmosphere','violent'],
 'leve':['feel-good','lighthearted','light','funny','humorous','cute','silly','goofy'],
 'emocional':['emotional','touching','heartwarming','sad','tearjerker','moving','heartbreaking','bittersweet'],
 'reflexiva':['thought-provoking','philosophical','reflective','meditative','melancholic','intellectual','contemplative'],
 'fantastica':['fantasy','fantasy world','magic','surreal','imaginative','fairy tale'],
 # narrativas
 'investigacao':['detective','investigation','police investigation','crime','whodunit','serial killer','police'],
 'misterio':['mystery','enigmatic','whodunit','conspiracy','puzzle','secrets'],
 'psicologica':['psychological','psychology','mental illness','insanity','paranoid','psychological thriller','schizophrenia'],
 'aventura':['adventure','quest','treasure hunt','journey','road trip','action packed','epic adventure'],
 'filosofica':['philosophical','philosophy','existentialism','metaphysics'],
 'emocional_n':['emotional','relationships','family','friendship','touching'],
 'critica_social':['social commentary','political','satire','racism','poverty','corruption','social criticism'],
 'romantica':['romance','romantic','love story','love'],
 # ritmo
 'rapido':['fast paced','action packed','adrenaline','fast-paced'],
 'lento':['slow','slow paced','meditative','contemplative','slow-paced'],
 # subgêneros (complementares)
 'sobrenatural':['supernatural','ghosts','haunted house','demons','possession','paranormal','exorcism'],
 'folk':['folklore','pagan','cult','witch','rural','occult'],
 'espaco':['space','space travel','aliens','spaceship','space opera','astronauts'],
 'tecnologia':['artificial intelligence','robots','cyberpunk','virtual reality','computers','technology','androids','hackers'],
 'superacao':['inspirational','true story','biography','sports','underdog','based on a true story','disability'],
 'relacoes':['relationships','family','friendship','marriage','coming of age','father-son relationship','mother-daughter relationship'],
 'satira':['satire','dark comedy','black comedy','parody','political','social commentary'],
 'humor_leve':['feel-good','lighthearted','silly','goofy','light','funny'],
 'espionagem':['spies','espionage','secret service','cia','assassin','heist','undercover'],
 'perseguicao':['car chase','chase','revenge','martial arts','fight scenes','assassination'],
 'classico':['classic'],
 # sugestão de gênero
 'g_comedia':['comedy','funny','hilarious'],'g_terror':['horror','scary','gore','creepy'],
 'g_suspense':['thriller','suspense','suspenseful','mystery'],'g_ficcao_cientifica':['sci-fi','science fiction','futuristic'],
 'g_animacao':['animation','animated','pixar animation','cartoon'],'g_drama':['drama'],
 'g_acao':['action','action packed'],'g_romance':['romance','romantic','love story'],
}
# Subgênero (etiqueta de perfil) -> conceito que o mede
PERFIL_CONCEITO={
 'terror_psicologico':'psicologica','terror_sobrenatural':'sobrenatural','folk_horror':'folk','terror_investigativo':'investigacao',
 'suspense_investigativo':'investigacao','suspense_enigmatico':'misterio','suspense_psicologico':'psicologica',
 'animacao_fantasia':'fantastica','animacao_aventura':'aventura','animacao_emocional':'emocional',
 'ficcao_filosofica':'filosofica','ficcao_aventura':'espaco','ficcao_tecnologia':'tecnologia',
 'drama_superacao':'superacao','drama_relacoes':'relacoes','drama_critica_social':'critica_social',
 'comedia_leve':'humor_leve','comedia_emocional':'emocional','comedia_social':'satira',
 'acao_espionagem':'espionagem','acao_perseguicao':'perseguicao','acao_aventura':'aventura',
 'romance_leve':'leve','romance_drama':'emocional','romance_classico':'classico',
}
LIMIAR_TWIST=0.6       # reviravolta marcada a partir desta nota
LIMIAR_ITEM=0.45       # nota mínima para atmosfera/narrativa/subgênero
LIMIAR_GENERO=(0.35,0.75)  # sugere outro gênero se o atual < 0,35 e outro >= 0,75

def abrir(fonte):
    """Devolve uma função que abre um CSV do MovieLens, seja do .zip ou da pasta."""
    p=pathlib.Path(fonte).expanduser()
    if not p.exists():raise SystemExit(f'Não encontrei {p}. Baixe o ml-25m.zip em https://grouplens.org/datasets/movielens/25m/')
    if p.is_file():
        z=zipfile.ZipFile(p);nomes={pathlib.PurePosixPath(n).name:n for n in z.namelist()}
        def ler(nome):
            if nome not in nomes:raise SystemExit(f'{nome} não está em {p.name}: use o MovieLens 25M (ele traz o Tag Genome).')
            return io.TextIOWrapper(z.open(nomes[nome]),encoding='utf-8',newline='')
    else:
        def ler(nome):
            achados=list(p.rglob(nome))
            if not achados:raise SystemExit(f'{nome} não está em {p}: use o MovieLens 25M (ele traz o Tag Genome).')
            return achados[0].open(encoding='utf-8',newline='')
    return ler

def escolher(opcoes,score,maximo=2):
    """Melhores opções acima do limiar; a segunda só entra se estiver perto da primeira."""
    ord_=sorted(((score.get(o,0),o) for o in opcoes),reverse=True)
    if not ord_ or ord_[0][0]<LIMIAR_ITEM:return []
    out=[ord_[0][1]]
    for s,o in ord_[1:maximo]:
        if s>=max(LIMIAR_ITEM+0.05,ord_[0][0]-0.2):out.append(o)
    return out

def main():
    ap=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('fonte',help='ml-25m.zip ou a pasta descompactada')
    ap.add_argument('--simular',action='store_true',help='Mostra o que mudaria, sem gravar')
    a=ap.parse_args()
    ler=abrir(a.fonte)
    DPRE,MPRE='const CINE_DATA = ','const CINE_METADATA = '
    dados=ler_js(ROOT/'dados.js',DPRE);meta=ler_js(ROOT/'metadados.js',MPRE)
    perfis_genero=collections.defaultdict(list)
    for r in dados['perfis']:perfis_genero[r['se'].get('genero')].append(r['entao']['perfil'])
    alvo={}
    for f in dados['filmes']:
        if f.get('origem')=='automatica' or f.get('classificacao_status')=='pendente':
            tid=f.get('tmdb_id') or meta.get(f['id'],{}).get('tmdb_id')
            if tid:alvo[int(tid)]=f
    print(f'Filmes que podem ser reclassificados: {len(alvo)} (automáticos e aguardando curadoria).')

    print('Lendo links.csv...')
    ml_para_tmdb={}
    for row in csv.DictReader(ler('links.csv')):
        t=row.get('tmdbId')
        if t and t.isdigit() and int(t) in alvo:ml_para_tmdb[row['movieId']]=int(t)
    print(f'  {len(ml_para_tmdb)} filmes do catálogo existem no MovieLens.')

    nomes_usados={t for lst in CONCEITOS.values() for t in lst}
    tag_id={}
    for row in csv.DictReader(ler('genome-tags.csv')):
        if row['tag'].strip().lower() in nomes_usados:tag_id[row['tagId']]=row['tag'].strip().lower()
    faltando=sorted(nomes_usados-set(tag_id.values()))

    print('Lendo genome-scores.csv (15 milhões de linhas, leva cerca de 1 minuto)...')
    notas=collections.defaultdict(dict)
    for i,row in enumerate(csv.reader(ler('genome-scores.csv'))):
        if i==0:continue
        mid,tid,rel=row
        if mid in ml_para_tmdb and tid in tag_id:notas[ml_para_tmdb[mid]][tag_id[tid]]=float(rel)
    print(f'  Tag Genome encontrado para {len(notas)} filmes do catálogo.')

    hoje=datetime.date.today().year
    mudou=collections.Counter();relatorio=[]
    for tmdb,tags in notas.items():
        f=alvo[tmdb];g=f['genero']
        sc={c:max((tags.get(t,0) for t in lst),default=0) for c,lst in CONCEITOS.items()}
        atm=escolher(ATM_G[g],sc)
        nar=escolher(NAR_G[g],{**sc,'emocional':sc['emocional_n']})
        if sc['rapido']>=0.5 and sc['rapido']-sc['lento']>0.15:ritmo='rapido'
        elif sc['lento']>=0.5 and sc['lento']-sc['rapido']>0.15:ritmo='lento'
        else:ritmo='moderado'
        twist=sc['twist']>=LIMIAR_TWIST
        cands=[(sc[PERFIL_CONCEITO[p]],p) for p in perfis_genero[g] if p in PERFIL_CONCEITO]
        if 'romance_classico' in perfis_genero[g] and f['ano']>1999:cands=[c for c in cands if c[1]!='romance_classico']
        perfil=max(cands)[1] if cands and max(cands)[0]>=LIMIAR_ITEM else None
        antes=(f.get('atmosferas'),f.get('narrativas'),f.get('ritmo'),bool(f.get('tem_reviravolta')),next((t for t in f.get('tags',[]) if t in PERFIL_CONCEITO),None))
        if not atm:atm=[x for x in (f.get('atmosferas') or []) if x in ATM_G[g]][:2] or [ATM_G[g][0]]
        if not nar:nar=[x for x in (f.get('narrativas') or []) if x in NAR_G[g]][:2] or [NAR_G[g][0]]
        if not perfil:perfil=antes[4]
        classico=bool(f.get('classico_editorial')) or (sc['classico']>=0.8 and f['ano']<=hoje-20)
        # Sugestão de gênero (não muda o gênero; vai para a curadoria)
        atual=sc.get('g_'+g,0);melhor=max(((sc['g_'+x],x) for x in ATM_G if x!=g),default=(0,''))
        sugerido=melhor[1] if atual<LIMIAR_GENERO[0] and melhor[0]>=LIMIAR_GENERO[1] else None
        if twist!=antes[3]:mudou['reviravolta']+=1
        if perfil!=antes[4]:mudou['subgênero']+=1
        if atm!=antes[0]:mudou['atmosfera']+=1
        if nar!=antes[1]:mudou['narrativa']+=1
        if ritmo!=antes[2]:mudou['ritmo']+=1
        if sugerido:mudou['gênero a revisar']+=1
        relatorio.append([f['id'],f['titulo'],f['ano'],g,' '.join(atm),' '.join(nar),ritmo,'sim' if twist else 'não',perfil or '',sugerido or '',f"{sc['twist']:.2f}"])
        if a.simular:continue
        extras=[t for t in f.get('tags',[]) if t not in PERFIL_CONCEITO and t not in derivar_tags(g,f.get('atmosferas') or [],f.get('narrativas') or [],f.get('ritmo',''),bool(f.get('tem_reviravolta')),None)]
        f.update({'atmosferas':atm,'narrativas':nar,'ritmo':ritmo,'tem_reviravolta':twist,'classico_editorial':classico,
                  'tags':list(dict.fromkeys(derivar_tags(g,atm,nar,ritmo,twist,perfil)+extras)),'fonte_classificacao':'movielens'})
        if sugerido:f['genero_sugerido']=sugerido
        else:f.pop('genero_sugerido',None)
        if f.get('classificacao_status')=='pendente':f['classificacao_status']='preliminar'

    sem=len(alvo)-len(notas)
    print(f'\nReclassificados: {len(notas)} · sem dados no MovieLens (ficam como estão): {sem}')
    print('Mudanças: '+', '.join(f'{k} {v}' for k,v in mudou.most_common()))
    print(f"Com reviravolta depois: {sum(1 for r in relatorio if r[7]=='sim')} de {len(relatorio)}")
    if faltando:print(f'Etiquetas não encontradas nesta versão (ignoradas): {", ".join(faltando[:40])}')
    destaque=sorted(relatorio,key=lambda r:-float(r[10]))[:12]
    print('Maiores notas de reviravolta:');[print(f'  {r[1]} ({r[2]}): {r[10]}') for r in destaque]
    rel=ROOT/'dev'/'movielens_relatorio.csv'
    if a.simular:print('Simulação: nada foi gravado.');return
    (ROOT/'dados.js').write_text(DPRE+json.dumps(dados,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    with rel.open('w',newline='',encoding='utf-8-sig') as fh:
        w=csv.writer(fh,delimiter=';');w.writerow(['id','titulo','ano','genero','atmosferas','narrativas','ritmo','reviravolta','subgenero','genero_sugerido','nota_reviravolta']);w.writerows(relatorio)
    print(f'Gravado: dados.js e {rel.relative_to(ROOT)}. Confira com: node dev/testes_catalogo.cjs — depois faça commit e push.')

if __name__=='__main__':main()
