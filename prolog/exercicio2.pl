% Fatos
bonita(cassia).
rico(marcos).
bonito(marcos).
rica(ana).
forte(ana).
forte(fabiano).
bonito(fabiano).
amavel(silvio).
forte(silvio).

% Regras 
gosta(X, Y) :- homem(X), mulher(Y), bonita(Y), gosta(Y, X).
gosta(X, Y) :- homem(X), mulher(Y), rica(Y), gosta(Y, X).
gosta(X, Y) :- homem(X), mulher(Y), forte(Y), gosta(Y, X).
gosta(ana, X) :- homem(X), gosta(X, ana).
gosta(cassia, X) :- homem(X), (rico(X); amavel(X); bonito(X)), gosta(X, cassia).

feliz(X) :- homem(X), gosta(X, Y), gosta(Y, X).
feliz(Y) :- mulher(Y), gosta(X, Y), gosta(Y, X).
feliz(X) :- homem(X), rico(X).
feliz(X) :- homem(X), mulher(Y), gosta(X, Y), gosta(Y, X).


?- gosta(X, Y).
?- gosta(X, ana), bonito(X).
?- feliz(X).
?- bonito(cassia).
?- homem(X), mulher(Y), gosta(Y, X), gosta(X, Y).