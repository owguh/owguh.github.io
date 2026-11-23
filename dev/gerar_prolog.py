"""Gera prolog/base_conhecimento.pl a partir de dados.js (filmes, regras R01–R45 e perfis P01–P25)."""
import sys,pathlib;sys.path.insert(0,str(pathlib.Path(__file__).resolve().parent))
from expandir_catalogo import ler_js,ROOT
d=ler_js(ROOT/'dados.js','const CINE_DATA = ')
q=lambda s:"'"+str(s).replace('\\','\\\\').replace("'","\\'")+"'"
L=['% Gerado por dev/gerar_prolog.py a partir de dados.js. Não edite à mão.',':- encoding(utf8).','']
L.append('% perfil(Id, Condicoes, Perfil, Justificativa).  Regras de inferência de subgênero')
for r in d['perfis']:L.append(f"perfil({q(r['id'])}, [{', '.join(f'{k}={q(v)}' for k,v in r['se'].items())}], {q(r['entao']['perfil'])}, {q(r['justificativa'])}).")
L+=['','% regra(Id, Condicoes, Etiqueta, Peso, Justificativa).  Regras de prioridade']
for r in d['regras']:L.append(f"regra({q(r['id'])}, [{', '.join(f'{k}={q(v)}' for k,v in r['se'].items())}], {q(r['entao']['priorizar_tag'])}, {r['entao']['peso']}, {q(r['justificativa'])}).")
L+=['','% filme(Id, Titulo, Ano, Genero, Formato, Atmosferas, Narrativas, Ritmo, Reviravolta, Etiquetas).']
for f in d['filmes']:
    if f.get('classificacao_status')=='pendente':continue
    lst=lambda xs:'['+', '.join(q(x) for x in xs)+']'
    L.append(f"filme({q(f['id'])}, {q(f['titulo'])}, {f['ano']}, {q(f['genero'])}, {q(f['formato'])}, {lst(f['atmosferas'])}, {lst(f['narrativas'])}, {q(f['ritmo'])}, {'sim' if f['tem_reviravolta'] else 'nao'}, {lst(f['tags'])}).")
(ROOT/'prolog'/'base_conhecimento.pl').write_text('\n'.join(L)+'\n',encoding='utf-8')
print(len(d['filmes']),'filmes,',len(d['regras']),'regras,',len(d['perfis']),'perfis')
