"""Prepara metadados e capas estáticas. Uso: py preparar_tmdb.py --env 'C:\\...\\backend\\.env'.
Credenciais nunca são escritas nos arquivos publicados. Requer conexão somente na preparação.
"""
import argparse,json,os,re,unicodedata,urllib.request,urllib.parse,urllib.error,time,pathlib
ROOT=pathlib.Path(__file__).resolve().parent.parent  # raiz do site (este script fica em dev/)

def token_from(path):
    token=os.getenv('TMDB_BEARER_TOKEN','').strip()
    if path:
        env=pathlib.Path(path).expanduser()
        if not env.exists():raise SystemExit(f'Arquivo .env não encontrado: {env}')
        for line in env.read_text(encoding='utf-8-sig').splitlines():
            if line.strip().startswith('TMDB_BEARER_TOKEN='):
                token=line.split('=',1)[1].strip().strip('"\'')
    if not token:raise SystemExit('Defina TMDB_BEARER_TOKEN no ambiente ou use --env com o .env antigo do backend.')
    return token

def get_json(url,token):
    req=urllib.request.Request(url,headers={'Authorization':'Bearer '+token,'Accept':'application/json','User-Agent':'CineExpertAcademico/4.3'})
    for attempt in range(3):
        try:
            with urllib.request.urlopen(req,timeout=20) as rsp:return json.load(rsp)
        except urllib.error.HTTPError as e:
            if e.code in (429,500,502,503) and attempt<2:time.sleep(2*(attempt+1));continue
            raise

def norm(s):
    s=unicodedata.normalize('NFD',str(s or ''))
    return re.sub(r'[^a-z0-9]+',' ',''.join(c for c in s if unicodedata.category(c)!='Mn').lower()).strip()

def titles_of(f):
    return {norm(f['titulo']),norm(f.get('busca_tmdb',''))}-{''}

def year_of(item):
    try:return int((item.get('release_date') or '0000')[:4])
    except ValueError:return 0

def choose(results,f):
    """Escolhe o resultado da busca. Retorna (item, motivo_da_recusa).
    Títulos comuns ("Dune", "The Gift", "Split") devolvem vários resultados; antes o script
    desistia sempre que havia mais de um. Agora: título igual e ano ±1; havendo empate,
    prefere o ano exato e, depois, o filme claramente mais conhecido (3x mais votos)."""
    titles=titles_of(f);year=int(f['ano'])
    ranked=[i for i in results if titles & {norm(i.get('title')),norm(i.get('original_title'))} and abs(year_of(i)-year)<=1]
    if not ranked:return None,'nenhum resultado com o mesmo título e ano'
    if len(ranked)>1:
        exact=[i for i in ranked if year_of(i)==year]
        if exact:ranked=exact
    if len(ranked)>1:
        ranked.sort(key=lambda i:i.get('vote_count') or 0,reverse=True)
        a,b=(ranked[0].get('vote_count') or 0),(ranked[1].get('vote_count') or 0)
        if a<3*max(b,1):
            return None,'ambíguo: '+'; '.join(f"{i.get('title')} ({year_of(i)}, id {i.get('id')})" for i in ranked[:3])
    return ranked[0],''

def confirm(info,f):
    """Confere se um tmdb_id gravado em dados.js corresponde mesmo ao filme (evita capa errada)."""
    # O TMDB às vezes registra o ano do lançamento comercial nos EUA, não o da estreia
    # (ex.: Atividade Paranormal 2007→2009, A Morte do Demônio 1981→1983). Com o título
    # conferido, aceitamos até 3 anos de diferença.
    same_title=bool(titles_of(f) & {norm(info.get('title')),norm(info.get('original_title'))})
    return same_title and abs(year_of(info)-int(f['ano']))<=3

def main():
    p=argparse.ArgumentParser();p.add_argument('--env',help='Caminho do .env anterior (mantido fora do site)');p.add_argument('--limite',type=int,default=0,help='Limita quantidade para teste; 0 significa todo catálogo')
    p.add_argument('--atualizar',action='store_true',help='Busca de novo também os filmes que já têm capa e metadados')
    a=p.parse_args();token=token_from(a.env)
    prefix='const CINE_DATA = '
    txt=(ROOT/'dados.js').read_text(encoding='utf-8').strip()
    films=json.loads(txt[len(prefix):].rstrip(';'))['filmes']
    if a.limite:films=films[:a.limite]
    target=ROOT/'capas';target.mkdir(exist_ok=True)
    metapath=ROOT/'metadados.js'
    existing={}
    if metapath.exists():
        current=metapath.read_text(encoding='utf-8').strip()
        if current.startswith('const CINE_METADATA = '):
            try:existing=json.loads(current.removeprefix('const CINE_METADATA = ').rstrip(';'))
            except json.JSONDecodeError:pass
    ok=0;notfound=[];errors=[]
    skipped=0
    for i,f in enumerate(films,1):
        try:
            # Por padrão, só processa o que falta: filmes sem metadados ou sem o arquivo da capa.
            if not a.atualizar and existing.get(f['id'],{}).get('poster') and (target/(f['id']+'.jpg')).exists():
                skipped+=1;continue
            fixed=f.get('tmdb_id')
            tmdb_id=fixed or existing.get(f['id'],{}).get('tmdb_id')
            if not tmdb_id:
                found=None;why=''
                for q in dict.fromkeys([f.get('busca_tmdb'),f['titulo']]):
                    if not q:continue
                    query=urllib.parse.urlencode({'query':q,'language':'pt-BR','include_adult':'false','year':f['ano']})
                    found,why=choose(get_json('https://api.themoviedb.org/3/search/movie?'+query,token).get('results',[]),f)
                    if not found:
                        query=urllib.parse.urlencode({'query':q,'language':'pt-BR','include_adult':'false'})
                        found,why=choose(get_json('https://api.themoviedb.org/3/search/movie?'+query,token).get('results',[]),f)
                    if found:break
                if not found:
                    notfound.append(f"{f['titulo']} ({f['ano']}): {why}");continue
                tmdb_id=found['id']
            info=get_json('https://api.themoviedb.org/3/movie/'+str(tmdb_id)+'?language=pt-BR&append_to_response=credits',token)
            if fixed and not confirm(info,f):
                notfound.append(f"{f['titulo']} ({f['ano']}): o tmdb_id {tmdb_id} em dados.js é \"{info.get('title')}\" ({year_of(info)}) — confira o id");continue
            poster_path=info.get('poster_path')
            if not poster_path or not re.fullmatch(r'/[a-zA-Z0-9_-]+\.(jpg|png)',poster_path):
                notfound.append(f['titulo']+' (sem pôster)');continue
            filepath=target/(f['id']+'.jpg')
            if not filepath.exists():
                url='https://image.tmdb.org/t/p/w342'+poster_path
                with urllib.request.urlopen(urllib.request.Request(url,headers={'User-Agent':'CineExpertAcademico/4.3'}),timeout=20) as rsp:raw=rsp.read(1_500_001)
                if len(raw)>1_500_000:raise RuntimeError('Imagem muito grande')
                filepath.write_bytes(raw)
            crew=info.get('credits',{}).get('crew',[])
            director=next((x.get('name','') for x in crew if x.get('job')=='Director'),'')
            existing[f['id']]={'poster':True,'tmdb_id':tmdb_id,'overview':info.get('overview') or '', 'runtime':info.get('runtime'),'vote_average':info.get('vote_average'),'director':director,'cast':[x.get('name','') for x in info.get('credits',{}).get('cast',[])[:5]]}
            ok+=1
        except (urllib.error.URLError,RuntimeError,ValueError,TimeoutError) as e:errors.append((f['titulo'],str(e)))
        if i%10==0:print(f'Processados {i}/{len(films)}...')
    metapath.write_text('const CINE_METADATA = '+json.dumps(existing,ensure_ascii=False,separators=(',',':'))+';\n',encoding='utf-8')
    print(f'Concluído: {ok} filmes atualizados, {skipped} já estavam completos, {len(notfound)} não associados, {len(errors)} erros.')
    if notfound:
        print('Não associados (revisão manual — grave o tmdb_id certo em dados.js):')
        for x in notfound:print('  - '+x)
    if errors:print('Erros: '+str(errors[:5]))
    print('Depois faça commit de capas/ e metadados.js. Nunca publique seu .env nem o token.')
if __name__=='__main__':main()
