% Fatos
é_pássaro(joao).
é_peixe(pedro).
é_minhoca(maria).
% Fatos adicionais
nome(meu_gato, 'Chuck Norris').


gosta(pássaro, minhoca).
gosta(gato, peixe).
gosta(gato, pássaro).
gosta(amigos, uns_dos_outros).
amigo(meu_gato, eu).
come(meu_gato, X) :- gosta(meu_gato, X), X \= pessoa.

% Regras
gosta(amigo, X) :- amigo(meu_gato, X).


?- gosta(X, minhoca).
?- amigo(meu_gato, X).
?- come(meu_gato, X).
