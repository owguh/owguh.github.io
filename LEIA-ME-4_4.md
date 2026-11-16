# CineExpert Mobile 4.4 — Catálogo de 200 filmes

Esta edição continua o CineExpert 4.3.3 com a correção comprovada da grade desktop.

## O que mudou
- 200 filmes catalogados: 124 anteriores + 48 com atributos preliminares + 28 aguardando classificação.
- 172 podem participar da recomendação; os 28 pendentes aparecem apenas em Explorar catálogo. As 48 classificações preliminares são hipóteses editoriais, ainda não validadas.
- O motor mantém as 45 regras de recomendação e 25 regras de perfil, com desempate por quantidade de critérios não atendidos e critérios atendidos antes da ordenação por título.
- Sem duplicar títulos e sem inserir IDs TMDB presumidos.

## Antes de publicar
1. Preserve seus metadados reais: copie o `metadados.js` gerado no computador da versão 4.3 e a pasta `capas` para a nova pasta 4.4. O pacote contém apenas a versão de demonstração, não suas imagens baixadas localmente.
2. Para obter pôsteres novos, execute `uv run --no-project python dev/preparar_tmdb.py --env "CAMINHO_ABSOLUTO_DO_ENV"`. O `.env` deve permanecer FORA da pasta publicada.
3. Títulos sem correspondência exata de ano/nome no TMDB terão capa alternativa; revise manualmente.
4. Teste com `node dev/testes_4_4.cjs`, depois inicie `uv run --no-project python -m http.server 5500`.
5. Envie somente a pasta pública ao Netlify. Nunca envie `.env`, `env/` ou tokens. Para maior segurança, remova scripts Python e CSVs da pasta antes da publicação, se não forem necessários.

## Limitações
- As classificações dos 48 novos filmes são **preliminares** e precisam de revisão humana antes de representar resultados validados.
- Os 28 outros filmes não participam das recomendações até serem classificados.
- Nenhum pôster TMDB novo foi obtido automaticamente neste ambiente.
- Os critérios de desempate não são evidência de satisfação: precisam de validação com usuários reais.
- O aplicativo continua offline após o primeiro carregamento, mas as capas só estarão disponíveis offline após serem carregadas/cached; verifique no dispositivo.
