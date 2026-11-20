"""Aplica uma classificação em CSV (atmosfera, narrativa, ritmo, reviravolta, subgênero) a filmes automáticos.

Usado para os filmes que o MovieLens não cobre (lançados depois de 2019 ou pouco votados lá).
O arquivo dev/classificacao_claude.csv foi preenchido pelo assistente Claude a partir da sinopse
e do conhecimento geral de cada filme; vale como classificação preliminar, sem revisão editorial.

  uv run --no-project python dev/aplicar_classificacao.py dev/classificacao_claude.csv [--simular]

Só altera filmes com "origem": "automatica" ou aguardando curadoria, e nunca os já classificados pelo
MovieLens ou revisados na curadoria. O gênero não muda: sugestões vão para "genero_sugerido".
"""
import argparse,csv,json,pathlib,sys,collections
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parent))
from expandir_catalogo import derivar_tags,ATM_G,NAR_G,ROOT,ler_js

def main():
    ap=argparse.ArgumentParser();ap.add_argument('arquivo');ap.add_argument('--fonte',default='claude');ap.add_argument('--simular',action='store_true')
    a=ap.parse_args()
    PRE='const CINE_DATA = ';dados=ler_js(ROOT/'dados.js',PRE)
    por_id={f['id']:f for f in dados['filmes']}
    perfis=collections.defaultdict(set)
    for r in dados['perfis']:perfis[r['se']['genero']].add(r['entao']['perfil'])
    TODOS_PERFIS=set().union(*perfis.values())
    erros=[];ok=[];ignorados=0
    with open(a.arquivo,encoding='utf-8-sig',newline='') as fh:
        for n,row in enumerate(csv.DictReader(fh,delimiter=';'),2):
            f=por_id.get(row['id'])
            if not f:erros.append(f'linha {n}: filme {row["id"]} não existe');continue
            if not(f.get('origem')=='automatica' or f.get('classificacao_status')=='pendente') or f.get('fonte_classificacao')=='movielens':ignorados+=1;continue
            g=f['genero'];atm=[x for x in row['atmosferas'].split(',') if x];nar=[x for x in row['narrativas'].split(',') if x]
            perfil=row['subgenero'] or None;sug=row.get('genero_sugerido') or None
            if not atm or len(atm)>2 or any(x not in ATM_G[g] for x in atm):erros.append(f'linha {n} ({f["titulo"]}): atmosfera {atm} fora de {ATM_G[g]}')
            if not nar or len(nar)>2 or any(x not in NAR_G[g] for x in nar):erros.append(f'linha {n} ({f["titulo"]}): narrativa {nar} fora de {NAR_G[g]}')
            if row['ritmo'] not in('lento','moderado','rapido'):erros.append(f'linha {n}: ritmo {row["ritmo"]}')
            if row['reviravolta'] not in('sim','nao'):erros.append(f'linha {n}: reviravolta deve ser sim/nao')
            if perfil and perfil not in perfis[g]:erros.append(f'linha {n} ({f["titulo"]}): subgênero {perfil} não é de {g}')
            if sug and (sug not in ATM_G or sug==g):erros.append(f'linha {n}: genero_sugerido {sug} inválido')
            ok.append((f,atm,nar,row['ritmo'],row['reviravolta']=='sim',perfil,sug))
    if erros:print('\n'.join(erros));raise SystemExit(f'{len(erros)} erro(s); nada foi gravado.')
    for f,atm,nar,ritmo,twist,perfil,sug in ok:
        extras=[t for t in f.get('tags',[]) if t not in TODOS_PERFIS and t not in derivar_tags(f['genero'],f.get('atmosferas') or [],f.get('narrativas') or [],f.get('ritmo',''),bool(f.get('tem_reviravolta')),None)]
        f.update({'atmosferas':atm,'narrativas':nar,'ritmo':ritmo,'tem_reviravolta':twist,
                  'tags':list(dict.fromkeys(derivar_tags(f['genero'],atm,nar,ritmo,twist,perfil)+extras)),'fonte_classificacao':a.fonte})
        if sug:f['genero_sugerido']=sug
        else:f.pop('genero_sugerido',None)
        if f.get('classificacao_status')=='pendente':f['classificacao_status']='preliminar'
    print(f'Classificados: {len(ok)} · ignorados (já do MovieLens ou curados): {ignorados} · com reviravolta: {sum(o[4] for o in ok)} · gênero a revisar: {sum(1 for o in ok if o[6])}')
    if a.simular:print('Simulação: nada foi gravado.');return
    (ROOT/'dados.js').write_text(PRE+json.dumps(dados,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    print('Gravado: dados.js')
if __name__=='__main__':main()
