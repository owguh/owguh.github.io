"""Separa sinopses e elenco de metadados.js em pacotes pequenos (sinopses/00.json … 63.json).

Por que: com milhares de filmes, baixar todas as sinopses na abertura do site pesaria vários MB.
Assim, metadados.js fica só com o essencial para as listas (capa, nota, duração, direção) e a
sinopse e o elenco de cada filme são baixados quando alguém abre a ficha.

O pacote de cada filme é escolhido pelo mesmo hash usado em aplicativo.js (FNV-1a de 32 bits
do id, módulo 64). O script pode ser rodado quantas vezes quiser: junta o que já existe,
move o que ainda estiver em metadados.js e apaga entradas de filmes que saíram do catálogo.

Uso:  python dev/dividir_metadados.py
(preparar_tmdb.py e expandir_catalogo.py já chamam isto no final.)
"""
import json,pathlib

ROOT=pathlib.Path(__file__).resolve().parent.parent
PACOTES=64
PESADOS=('overview','cast')

def pacote(fid):
    h=2166136261
    for b in fid.encode('utf-8'):
        h^=b;h=(h*16777619)&0xffffffff
    return h%PACOTES

def ler_js(path,prefix):
    return json.loads(path.read_text(encoding='utf-8').strip()[len(prefix):].rstrip(';'))

def dividir(root=ROOT,verbose=True):
    DPRE,MPRE='const CINE_DATA = ','const CINE_METADATA = '
    ids={f['id'] for f in ler_js(root/'dados.js',DPRE)['filmes']}
    meta=ler_js(root/'metadados.js',MPRE)
    pasta=root/'sinopses';pasta.mkdir(exist_ok=True)
    pesado={}
    for arq in pasta.glob('*.json'):
        pesado.update(json.loads(arq.read_text(encoding='utf-8')))
    movidos=0
    for fid,m in meta.items():
        if any(k in m for k in PESADOS):
            pesado[fid]={'o':m.pop('overview','') or '','c':m.pop('cast',[]) or []};movidos+=1
    meta={k:v for k,v in meta.items() if k in ids}
    pesado={k:v for k,v in pesado.items() if k in ids}
    grupos=[{} for _ in range(PACOTES)]
    for fid in sorted(pesado):grupos[pacote(fid)][fid]=pesado[fid]
    for i,g in enumerate(grupos):
        (pasta/f'{i:02d}.json').write_text(json.dumps(g,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    (root/'metadados.js').write_text(MPRE+json.dumps(meta,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    if verbose:
        tam=sum(p.stat().st_size for p in pasta.glob('*.json'))
        print(f'Sinopses: {len(pesado)} filmes em {PACOTES} pacotes ({tam/1024:.0f} KB no total, '
              f'~{tam/PACOTES/1024:.0f} KB cada); {movidos} movidas de metadados.js agora. '
              f'metadados.js: {(root/"metadados.js").stat().st_size/1024:.0f} KB.')
    return len(pesado)

if __name__=='__main__':dividir()
