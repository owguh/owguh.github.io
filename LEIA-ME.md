# CineExpert Mobile 4.3 — Gêneros, fichas e pôsteres

## Funcionalidades
- 124 filmes: os 100 anteriores + 12 de Ação e 12 de Romance.
- 70 regras: 45 de recomendação e 25 de perfil. Regras anteriores preservadas.
- Entrevista adaptativa por gênero e subgênero. Comédia leve não oferece atmosfera sombria ou tensa.
- Catálogo pesquisável e paginado, com fichas individuais (sinopse, duração, direção, elenco, pôster e nota quando preparados).
- Motor executado no navegador, sem backend, com funcionamento básico offline.
- Fichas exibem dados editoriais mesmo sem metadados externos.

## Teste local
No terminal do VS Code, dentro da pasta do aplicativo:

```powershell
uv run --no-project python -m http.server 5500
```

Abra http://127.0.0.1:5500/.

Testes: `node dev/testes_local.cjs`, `node dev/testes_adaptativos.cjs` e `node dev/testes_4_3.cjs`.

## Gerar pôsteres e dados do TMDB antes de publicar
A versão PWA é estática; não coloque `TMDB_BEARER_TOKEN` em arquivos JavaScript ou no Netlify.

1. Encontre seu arquivo PRIVADO `.env` da versão CineExpert 3.x, que contém `TMDB_BEARER_TOKEN`.
2. No terminal, execute (adapte o caminho):

```powershell
uv run --no-project python dev/preparar_tmdb.py --env "C:\caminho\para\CineExpert_3.7_Versionamento\backend\.env"
```

Para testar só 5 filmes:

```powershell
uv run --no-project python dev/preparar_tmdb.py --env "C:\caminho\para\backend\.env" --limite 5
```

3. O script consulta o TMDB, valida correspondência por título e ano, cria capas em `capas/` e grava metadados públicos em `metadados.js`.
4. Se alguns títulos não forem encontrados de forma inequívoca, permanecem com capa alternativa e sinopse indisponível. Revise os nomes e execute novamente quando necessário.
5. **Nunca coloque o `.env` dentro da pasta publicada**. A pasta desta versão não inclui a credencial.

O script precisa de internet durante a preparação. Depois disso, os metadados e os pôsteres salvos ficam em arquivos estáticos. O motor e o catálogo base funcionam offline; as capas só ficam disponíveis offline após serem armazenadas no cache do dispositivo.

## Atualizar seu Netlify
No painel do projeto `cineexpert`, em **Deploys**, faça um deploy manual da **pasta completa** `CineExpert_Mobile_4_3_Catalogo_Fichas` contendo `index.html` na raiz.
Não publique a pasta de uma versão 3.x nem um `.env`.

Após publicar, teste em janela privada. O PWA usa uma nova chave de cache 4.3; se o iPhone persistir na versão anterior, remova os dados antigos do site e abra o endereço novamente.

## Testes sugeridos
1. Comédia → Humor leve: Sombria e Tensa não devem aparecer.
2. Ação → Espionagem: deve mostrar perguntas correspondentes e recomendações de ação.
3. Romance → Romance leve: clima leve ou emocional e narrativa romântica.
4. Explorar catálogo → selecionar filme → ver ficha → voltar ao catálogo.
5. Executar recomendações em modo avião, depois de um carregamento online completo.

### Limitações
As classificações dos novos filmes são editoriais preliminares, não equivalem a avaliação de usuários. As sinopses e os pôsteres não são obtidos automaticamente no navegador, para preservar a chave do TMDB e a possibilidade de operar offline. Os materiais e imagens provenientes do TMDB pertencem aos respectivos titulares. Este produto utiliza a API TMDB, mas não é endossado nem certificado pelo TMDB.

## Expandir o catálogo para 1.000 filmes (classificação automática)
O script `dev/expandir_catalogo.py` busca no TMDB os filmes mais votados de cada gênero até o catálogo chegar ao tamanho pedido, repartido igualmente entre os 8 gêneros. Os filmes curados à mão não são alterados.

Cada filme novo recebe uma **classificação automática** (atmosfera, narrativa, ritmo, reviravolta e subgênero), gerada a partir dos gêneros e das palavras-chave do TMDB. As etiquetas das regras R01–R45 saem dessa classificação, como nos filmes curados. Os novos entram como `preliminar`, com `"origem": "automatica"`, e a ficha avisa que a classificação é automática. "Clássico" automático = lançado há 20+ anos, nota ≥ 7,8 e 3.000+ votos.

```powershell
# 1. Primeiro, complete as capas que faltam nos filmes atuais
uv run --no-project python dev/preparar_tmdb.py --env "C:\caminho\para\backend\.env"

# 2. Veja o que seria adicionado, sem gravar nada
uv run --no-project python dev/expandir_catalogo.py --env "C:\caminho\para\backend\.env" --simular

# 3. Expanda de verdade (leva alguns minutos: ~850 consultas e 800 capas)
uv run --no-project python dev/expandir_catalogo.py --env "C:\caminho\para\backend\.env" --total 1000

# 4. Valide e teste
node dev/testes_catalogo.cjs
node dev/testes_4_4.cjs
```

O script grava `dados.js`, `metadados.js`, as capas em `capas/` (tamanho w185, cerca de 14 KB cada, ~11 MB no total) e um relatório em `dev/expansao_relatorio.csv` com a classificação de cada filme. Depois é só fazer commit e push.

Opções: `--total N` define o tamanho final; `--votos-minimos N` ignora filmes pouco votados (padrão 300). Para desfazer a expansão antes do commit, use `git checkout dados.js metadados.js` e `git clean -f capas/`.

## Catálogo grande: 2.000, 5.000 ou 10.000 filmes
O mesmo `expandir_catalogo.py` vai além de 1.000. Ele continua de onde parou: cada execução só acrescenta filmes até o `--total` pedido.

```powershell
# Suba em etapas e confira o resultado no site a cada uma
uv run --no-project python dev/expandir_catalogo.py --env "env\.env" --total 2000
uv run --no-project python dev/expandir_catalogo.py --env "env\.env" --total 5000
uv run --no-project python dev/expandir_catalogo.py --env "env\.env" --total 10000 --votos-minimos 100
node dev/testes_catalogo.cjs
```

- **Tempo:** cerca de 1 segundo por filme (consulta e capa). Para 10.000 filmes, conte 1 a 2 horas. O progresso é salvo a cada 200 filmes; se cair ou você apertar Ctrl+C, rode o mesmo comando de novo que ele continua.
- **Quantidade disponível:** o TMDB não tem 1.250 filmes "puros" de cada gênero com 300+ votos. O script redistribui as vagas entre os gêneros que ainda têm filmes e, se mesmo assim faltar, avisa: rode de novo com `--votos-minimos 100` (filmes menos conhecidos).
- **Sinopses em pacotes:** sinopse e elenco ficam em `sinopses/00.json` a `63.json` e são baixados só quando alguém abre a ficha. `metadados.js` guarda apenas capa, nota, duração e direção. Os scripts fazem essa separação sozinhos (`dev/dividir_metadados.py`).
- **Publicar:** `git add dados.js metadados.js sinopses capas dev/expansao_relatorio.csv`, depois commit e push.
