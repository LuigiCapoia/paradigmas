% Fatos
unificacao_a(ponto(A, B), ponto(1, 2)) :- A = 1, B = 2.
unificacao_b(2+2 = 4).
unificacao_e(+(2, D) = +(E, 2)) :- D = E.
unificacao_f(t(p(-1, 0), P2, P3) = t(P1, p(1, 0), p(0, Y))) :- P1 = p(-1, 0), P2 = p(1, 0), P3 = p(0, Y).

% Regras
exemplo :-unificacao_a(PontoA, ponto(1, 2)), write('Unificação a: '), write(PontoA), nl, unificacao_b(ResultadoB), write('Unificação b: '), write(ResultadoB), nl, unificacao_e(ResultadoE), write('Unificação e: '), write(ResultadoE), nl, unificacao_f(ResultadoF), write('Unificação f: '), write(ResultadoF), nl.


#consulta
?- exemplo.
