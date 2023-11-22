% Fatos
adiciona(X, L1, L2) - adiciona o elemento X à lista L1, resultando em L2.
adiciona(X, L1, [X|L1]).

remover(X, L1, L2) - remove o elemento X da lista L1, resultando em L2.
remover(_, [], []).
remover(X, [X|Resto], L2) :- remover(X, Resto, L2).
remover(X, [Y|Resto], [Y|L2]) :- X \= Y, remover(X, Resto, L2).

inverte(L1, L2) - inverte a lista L1, resultando em L2.
inverte([], []).
inverte([X|Resto], L2) :- inverte(Resto, RestoInvertido), append(RestoInvertido, [X], L2).

tamanho(L1, X) - retorna o tamanho (número de elementos) da lista L1.
tamanho([], 0).
tamanho([_|Resto], X) :- tamanho(Resto, TamanhoResto), X is TamanhoResto + 1.

soma(L1, X) - retorna a soma de todos os elementos da lista L1.
soma([], 0).
soma([X|Resto], S) :- soma(Resto, SResto), S is X + SResto.




% Regra 
regra_adiciona :- adiciona(5, [1, 2, 3], L2), write(L2), nl.
regra_remover :- remover(2, [1, 2, 3, 2, 4], L2), write(L2), nl.
regra_inverte :- inverte([1, 2, 3], L2), write(L2), nl.
regra_tamanho :- tamanho([1, 2, 3, 4], X), write(X), nl.
regra_soma :- soma([1, 2, 3], X), write(X), nl.

#consulta
?- regra_adiciona.
?- regra_remover.
?- regra_inverte.
?- regra_tamanho.
?- regra_soma.

