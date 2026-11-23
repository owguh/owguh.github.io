% CineExpert em Prolog: o mesmo motor de inferência do motor.js.
% Uso:  swipl prolog/motor.pl
%   ?- recomendar([genero=suspense, narrativa=investigacao, reviravolta=sim], 3).
%   ?- explicar([genero=suspense, reviravolta=sim], 'clube-da-luta').
:- encoding(utf8).
:- ensure_loaded(base_conhecimento).

% Fatos do usuário com valores padrão para o que não foi respondido.
padrao([formato=qualquer, foco=indiferente, atmosfera=indiferente, narrativa=indiferente,
        ritmo=indiferente, reviravolta=indiferente, epoca=qualquer, genero=qualquer]).
valor(Fatos, Chave, V) :- memberchk(Chave=V0, Fatos), !, V = V0.
valor(_, Chave, V) :- padrao(P), memberchk(Chave=V, P).

% Uma regra dispara quando todas as condições batem com os fatos.
satisfaz(Fatos, Condicoes) :- forall(member(K=V, Condicoes), valor(Fatos, K, V)).

% 1ª etapa (encadeamento para frente): gênero + foco -> subgênero (perfil).
inferir(Fatos, [perfil=P|Fatos], Trilha) :-
    perfil(Id, Cond, P, J), satisfaz(Fatos, Cond), !, Trilha = [Id-J].
inferir(Fatos, Fatos, []).

% Restrições obrigatórias: eliminam filmes antes da pontuação.
epoca_ok(_, qualquer).
epoca_ok(Ano, antigo)        :- Ano =< 1999.
epoca_ok(Ano, intermediario) :- Ano >= 2000, Ano =< 2017.
epoca_ok(Ano, recente)       :- Ano >= 2018.
obrigatorio(F, Id) :-
    filme(Id, _, Ano, G, Fmt, _, _, _, Rev, _),
    valor(F, genero, PG), (PG == qualquer ; PG == G),
    valor(F, formato, PF), (PF == qualquer ; PF == Fmt),
    valor(F, reviravolta, PR), \+ (PR == nao, Rev == sim),
    valor(F, epoca, PE), epoca_ok(Ano, PE).

% Critérios de pontuação: crit(Fatos, Filme, Pontos, Motivo).
crit(F, Id, 6, 'Corresponde ao gênero escolhido') :-
    valor(F, genero, G), G \== qualquer, filme(Id, _, _, G, _, _, _, _, _, _).
crit(F, Id, 3, 'Apresenta a atmosfera procurada') :-
    valor(F, atmosfera, A), A \== indiferente, filme(Id, _, _, _, _, As, _, _, _, _), memberchk(A, As).
crit(F, Id, 4, 'Possui o estilo narrativo escolhido') :-
    valor(F, narrativa, N), N \== indiferente, filme(Id, _, _, _, _, _, Ns, _, _, _), memberchk(N, Ns).
crit(F, Id, 2, 'Possui o ritmo desejado') :-
    valor(F, ritmo, R), R \== indiferente, filme(Id, _, _, _, _, _, _, R, _, _).
crit(F, Id, 3, 'Atende à preferência por reviravoltas') :-
    valor(F, reviravolta, sim), filme(Id, _, _, _, _, _, _, _, sim, _).
crit(F, Id, Peso, Motivo) :-              % regras R01–R45 disparadas
    regra(R, Cond, Tag, Peso, J), satisfaz(F, Cond),
    filme(Id, _, _, _, _, _, _, _, _, Tags), memberchk(Tag, Tags),
    atomic_list_concat([R, ': ', J], Motivo).

pontuar(F, Id, Total, Motivos) :-
    findall(P-M, crit(F, Id, P, M), Ps), Ps \== [],
    pairs_keys_values(Ps, Pts, Motivos), sum_list(Pts, Total).

% Critérios pedidos que o filme não atende (usados no desempate e na explicação).
falta(F, Id, 'Atmosfera diferente da desejada') :-
    valor(F, atmosfera, A), A \== indiferente, filme(Id, _, _, _, _, As, _, _, _, _), \+ memberchk(A, As).
falta(F, Id, 'Estilo narrativo diferente do desejado') :-
    valor(F, narrativa, N), N \== indiferente, filme(Id, _, _, _, _, _, Ns, _, _, _), \+ memberchk(N, Ns).
falta(F, Id, 'Ritmo diferente do desejado') :-
    valor(F, ritmo, R), R \== indiferente, filme(Id, _, _, _, _, _, _, R2, _, _), R2 \== R.
falta(F, Id, 'Não é filme de grandes reviravoltas') :-
    valor(F, reviravolta, sim), filme(Id, _, _, _, _, _, _, _, nao, _).
falta(F, Id, 'Não corresponde ao subgênero pedido') :-
    valor(F, perfil, P), filme(Id, _, _, _, _, _, _, _, _, Tags), \+ memberchk(P, Tags).

% Ordenação igual à do motor.js: mais pontos, menos critérios faltando, mais motivos, título.
recomendar(Pref, N) :-
    inferir(Pref, F, Trilha),
    forall(member(Id-J, Trilha), format('Perfil inferido por ~w: ~w~n', [Id, J])),
    findall(k(NT, NF, NM, Titulo)-Id,
            ( obrigatorio(F, Id), pontuar(F, Id, T, Ms), filme(Id, Titulo, _, _, _, _, _, _, _, _),
              aggregate_all(count, falta(F, Id, _), NF), length(Ms, Q), NT is -T, NM is -Q ), L0),
    length(L0, Total), format('~d filmes candidatos~n~n', [Total]),
    keysort(L0, L), length(L, Len), K is min(N, Len), length(Top, K), append(Top, _, L),
    forall(member(k(NT, _, _, _)-Id, Top), (T is -NT, mostrar(F, Id, T))).

mostrar(F, Id, T) :-
    filme(Id, Titulo, Ano, _, _, _, _, _, _, _), pontuar(F, Id, T, Ms),
    format('~w (~w) — ~w pontos~n', [Titulo, Ano, T]),
    forall(member(M, Ms), format('   • ~w~n', [M])),
    forall(falta(F, Id, M), format('   ✗ ~w~n', [M])).

% Por que (ou por que não) este filme?
explicar(Pref, Id) :-
    inferir(Pref, F, _),
    (   \+ obrigatorio(F, Id) -> format('~w foi eliminado por uma restrição obrigatória.~n', [Id])
    ;   pontuar(F, Id, T, _) -> mostrar(F, Id, T)
    ;   format('~w não atende a nenhum critério.~n', [Id]) ).
