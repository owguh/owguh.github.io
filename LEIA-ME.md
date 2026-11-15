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

Testes: `node testes_local.cjs`, `node testes_adaptativos.cjs` e `node testes_4_3.cjs`.

## Gerar pôsteres e dados do TMDB antes de publicar
A versão PWA é estática; não coloque `TMDB_BEARER_TOKEN` em arquivos JavaScript ou no Netlify.

1. Encontre seu arquivo PRIVADO `.env` da versão CineExpert 3.x, que contém `TMDB_BEARER_TOKEN`.
2. No terminal, execute (adapte o caminho):

```powershell
uv run --no-project python preparar_tmdb.py --env "C:\caminho\para\CineExpert_3.7_Versionamento\backend\.env"
```

Para testar só 5 filmes:

```powershell
uv run --no-project python preparar_tmdb.py --env "C:\caminho\para\backend\.env" --limite 5
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
