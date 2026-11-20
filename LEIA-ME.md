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

## Curadoria dos filmes automáticos
Abra o site com `?curadoria=1` (por exemplo, `https://owguh.github.io/?curadoria=1`) ou use o botão "Curadoria dos filmes" no modo apresentação.

1. A fila mostra primeiro os filmes **aguardando curadoria** e depois os automáticos, dos mais conhecidos para os menos. Dá para filtrar por gênero ou ver só os que estão sem subgênero.
2. Para cada filme, confira e corrija gênero, subgênero, atmosfera (até 2), narrativa (até 2), ritmo, reviravolta e clássico. Depois aprove. Atalhos: Enter aprova, → pula, ← volta.
3. As revisões ficam salvas no navegador. Quando quiser, toque em **Baixar arquivo** para gerar `cineexpert-curadoria.json`.
4. Aplique no catálogo e publique:
```powershell
uv run --no-project python dev/aplicar_curadoria.py "$HOME\Downloads\cineexpert-curadoria.json"
node dev/testes_catalogo.cjs
git add dados.js
git commit -m "Curadoria: N filmes revisados"
git push
```
O script refaz as etiquetas das regras com a mesma função da classificação automática e marca os filmes revisados como `"origem": "curada"`, o que tira o aviso de classificação automática da ficha. Os que aguardavam curadoria passam a entrar nas recomendações. Depois de aplicar, use **Limpar revisões** na tela de curadoria para começar uma nova rodada.

## Classificação com o MovieLens (Tag Genome)

Em vez de revisar 1.800 filmes à mão, dá para reclassificá-los com o Tag Genome do MovieLens: notas de 0 a 1 que a comunidade do MovieLens deu a mais de mil etiquetas ("twist ending", "dark", "tense", "slow", "feel-good", "detective"...). O script `dev/importar_movielens.py` traduz essas notas para atmosfera, narrativa, ritmo, reviravolta e subgênero.

1. Baixe o **MovieLens 25M** (`ml-25m.zip`, ~250 MB) em https://grouplens.org/datasets/movielens/25m/ . Não descompacte, não coloque no repositório.
2. Simule: `uv run --no-project python dev/importar_movielens.py "C:\Users\voce\Downloads\ml-25m.zip" --simular`
3. Grave: o mesmo comando sem `--simular`.
4. Teste: `node dev/testes_catalogo.cjs` e `node dev/testes_4_4.cjs`; depois commit de `dados.js` e `dev/movielens_relatorio.csv`.

Regras:
- Só muda filmes com `"origem": "automatica"` e os aguardando curadoria (que passam a "preliminar" e entram nas recomendações). Filmes curados à mão não são tocados.
- O gênero nunca muda sozinho. Quando o MovieLens indica outro gênero com força, o filme recebe `genero_sugerido` e aparece no filtro **Gênero a revisar** da tela de curadoria.
- O MovieLens 25M cobre filmes até 2019; os mais recentes ficam com a classificação automática anterior.
- A ficha do filme passa a dizer que as características vêm do MovieLens.
- Aprovar um filme na curadoria remove `fonte_classificacao` e `genero_sugerido`.

Uso não comercial/acadêmico. Cite: Jesse Vig, Shilad Sen e John Riedl. 2012. *The Tag Genome: Encoding Community Knowledge to Support Novel Interaction*. ACM TiiS 2(3). E: F. Maxwell Harper e Joseph A. Konstan. 2015. *The MovieLens Datasets: History and Context*. ACM TiiS 5(4).

## Filmes fora do MovieLens (classificação do assistente)

Os 283 filmes que o MovieLens não cobre (quase todos de 2020 em diante) foram classificados um a um pelo assistente Claude, a partir da sinopse e do conhecimento geral de cada filme. A classificação está em `dev/classificacao_claude.csv` (uma linha por filme, fácil de abrir no Excel) e foi aplicada com:

`uv run --no-project python dev/aplicar_classificacao.py dev/classificacao_claude.csv`

O script valida cada valor contra as opções do gênero antes de gravar. Para corrigir algo, edite o CSV e rode de novo, ou aprove o filme na tela de curadoria. Esses filmes aparecem na curadoria e a ficha indica a origem da classificação. Filmes futuros sem dados podem ganhar um CSV no mesmo formato.
