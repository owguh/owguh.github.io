"""Aplica ao catálogo o arquivo baixado na tela de Curadoria do site.

Uso:
    uv run --no-project python dev/aplicar_curadoria.py "C:\\Users\\voce\\Downloads\\cineexpert-curadoria.json"
    uv run --no-project python dev/aplicar_curadoria.py arquivo.json --simular   (só mostra o que mudaria)

Para cada filme revisado: grava gênero, subgênero, atmosferas, narrativas, ritmo, reviravolta e
clássico; refaz as etiquetas das regras R01–R45 com a mesma função da classificação automática;
e marca o filme como curado ("origem": "curada"), o que tira o aviso de classificação automática
da ficha. O arquivo pode ser aplicado mais de uma vez: a última revisão de cada filme vale.
"""
import argparse,json,pathlib,sys
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parent))
from expandir_catalogo import derivar_tags,ATM_G,NAR_G,ROOT,ler_js

GENEROS=list(ATM_G)
RITMOS=('lento','moderado','rapido')

def validar(fid,r,perfis_por_genero):
    g=r.get('genero')
    if g not in GENEROS:return f'gênero desconhecido "{g}"'
    if r.get('ritmo') not in RITMOS:return f'ritmo inválido "{r.get("ritmo")}"'
    atm,nar=r.get('atmosferas') or [],r.get('narrativas') or []
    if not atm or not nar:return 'precisa de ao menos uma atmosfera e uma narrativa'
    if any(x not in ATM_G[g] for x in atm):return f'atmosfera fora das opções de {g}'
    if any(x not in NAR_G[g] for x in nar):return f'narrativa fora das opções de {g}'
    p=r.get('perfil')
    if p and p not in perfis_por_genero.get(g,set()):return f'subgênero "{p}" não pertence a {g}'
    return ''

def main():
    ap=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('arquivo',help='cineexpert-curadoria.json baixado na tela de Curadoria')
    ap.add_argument('--simular',action='store_true',help='Mostra o que mudaria, sem gravar')
    a=ap.parse_args()
    DPRE='const CINE_DATA = '
    dados=ler_js(ROOT/'dados.js',DPRE)
    arq=pathlib.Path(a.arquivo).expanduser()
    if not arq.exists():
        # O navegador renomeia downloads repetidos ("cineexpert-curadoria (1).json"): usa o mais recente.
        candidatos=sorted(arq.parent.glob('cineexpert-curadoria*.json'),key=lambda x:x.stat().st_mtime,reverse=True) if arq.parent.exists() else []
        if candidatos:
            arq=candidatos[0];print(f'Usando o arquivo mais recente: {arq.name}')
        else:
            print(f'Arquivo não encontrado: {arq}')
            print('Ele é criado na tela de curadoria (https://owguh.github.io/?curadoria=1): revise alguns filmes e toque em "Baixar arquivo".')
            print('Depois rode este comando de novo, com o caminho onde o navegador salvou o arquivo.')
            return
    pacote=json.loads(arq.read_text(encoding='utf-8'))
    revisoes=pacote.get('filmes',pacote)
    por_id={f['id']:f for f in dados['filmes']}
    perfis={}
    for r in dados['perfis']:perfis.setdefault(r['se'].get('genero'),set()).add(r['entao']['perfil'])
    todos_perfis=set().union(*perfis.values())
    aplicados=0;problemas=[];mudancas={'genero':0,'reviravolta':0}
    for fid,r in revisoes.items():
        f=por_id.get(fid)
        if not f:problemas.append(f'{fid}: não existe em dados.js');continue
        erro=validar(fid,r,perfis)
        if erro:problemas.append(f'{fid} ({f["titulo"]}): {erro}');continue
        g=r['genero'];twist=bool(r.get('tem_reviravolta'));perfil=r.get('perfil') or None
        if g!=f['genero']:mudancas['genero']+=1
        if twist!=bool(f.get('tem_reviravolta')):mudancas['reviravolta']+=1
        # Etiquetas que não vêm da classificação (ex.: escolhas editoriais antigas) são mantidas,
        # menos as de subgênero e as derivadas, que são refeitas.
        derivaveis=todos_perfis|{'reviravolta','sem_reviravolta','investigativo','misterio_complexo','sombrio','ritmo_intenso','psicologico',
          'terror_psicologico','tensao_alta','construcao_lenta','fantasia','aventura','acolhedor','emocional','filosofico','reflexivo','humor','critica_social'}
        extras=[t for t in f.get('tags',[]) if t not in derivaveis]
        f.update({'genero':g,'formato':'animacao' if g=='animacao' else ('live_action' if f.get('formato')=='animacao' else f.get('formato','live_action')),
                  'atmosferas':r['atmosferas'][:2],'narrativas':r['narrativas'][:2],'ritmo':r['ritmo'],'tem_reviravolta':twist,
                  'tags':derivar_tags(g,r['atmosferas'],r['narrativas'],r['ritmo'],twist,perfil)+extras,
                  'classico_editorial':bool(r.get('classico_editorial'))})
        if f.get('origem')=='automatica':f['origem']='curada'
        if f.get('classificacao_status') in ('preliminar','pendente'):f.pop('classificacao_status')
        f.pop('fonte_classificacao',None);f.pop('genero_sugerido',None)
        aplicados+=1
    print(f'Revisões no arquivo: {len(revisoes)} · aplicadas: {aplicados} · gênero trocado: {mudancas["genero"]} · reviravolta trocada: {mudancas["reviravolta"]}')
    for p in problemas[:30]:print('  não aplicado: '+p)
    if a.simular:print('Simulação: nada foi gravado.');return
    (ROOT/'dados.js').write_text(DPRE+json.dumps(dados,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    print('Gravado em dados.js. Confira com: node dev/testes_catalogo.cjs — depois faça commit e push.')

if __name__=='__main__':main()
