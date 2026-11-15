"""Prepara metadados e capas estáticas. Uso: py preparar_tmdb.py --env 'C:\\...\\backend\\.env'.
Credenciais nunca são escritas nos arquivos publicados. Requer conexão somente na preparação.
"""
import argparse,json,os,re,unicodedata,urllib.request,urllib.parse,urllib.error,time,pathlib
ROOT=pathlib.Path(__file__).resolve().parent

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

def choose(results,f):
    # não associa dois filmes com títulos/anos ambíguos
    titles={norm(f['titulo']),norm(f.get('busca_tmdb',''))}-{''}
    year=int(f['ano']); ranked=[]
    for item in results:
        y=int((item.get('release_date') or '0000')[:4])
        name={norm(item.get('title')),norm(item.get('original_title'))}
        match=bool(titles & name)
        if match and abs(y-year)<=1:ranked.append(item)
    return ranked[0] if len(ranked)==1 else None

def main():
    p=argparse.ArgumentParser();p.add_argument('--env',help='Caminho do .env anterior (mantido fora do site)');p.add_argument('--limite',type=int,default=0,help='Limita quantidade para teste; 0 significa todo catálogo')
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
    for i,f in enumerate(films,1):
        try:
            tmdb_id=f.get('tmdb_id') or existing.get(f['id'],{}).get('tmdb_id')
            if not tmdb_id:
                query=urllib.parse.urlencode({'query':f.get('busca_tmdb') or f['titulo'],'language':'pt-BR','include_adult':'false'})
                search=get_json('https://api.themoviedb.org/3/search/movie?'+query,token)
                found=choose(search.get('results',[]),f)
                if not found:
                    notfound.append(f['titulo']);continue
                tmdb_id=found['id']
            info=get_json('https://api.themoviedb.org/3/movie/'+str(tmdb_id)+'?language=pt-BR&append_to_response=credits',token)
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
    print(f'Concluído: {ok} filmes com metadados, {len(notfound)} não associados, {len(errors)} erros.')
    if notfound: print('Não associados (revisão manual): '+', '.join(notfound[:30]))
    if errors:print('Erros: '+str(errors[:5]))
    print('Republique a pasta inteira no Netlify. Não publique seu .env nem o token.')
if __name__=='__main__':main()
