% Fatos
filme(amnesia, suspense, nolan, 2000, 113).
filme(babel, drama, inarrtu, 2006, 142).
filme(capote, drama, miller, 2005, 98).
filme(casablanca, romance, curtiz, 1942, 102).
filme(matrix, ficcao, wachovvsk, 1999, 136).
filme(rebecca, suspense, hitchcock, 1940, 130).
filme(shrek, aventura, adamson, 2001, 90).
filme(sinais, ficcao, shymalan, 2002, 106).
filme(spartacus, acao, kubrik, 1960, 184).
filme(superman, aventura, donner, 1978, 143).
filme(titanic, romance, cameron, 1997, 194).
filme(tubarao, suspense, spielberg, 1975, 124).
filme(volver, drama, almodovar, 2006, 121).

#5.1
% Regras
#a
diretor_do_filme(Diretor, titanic) :- filme(titanic, _, Diretor, _, _).
#b
filmes_de_suspense(Titulo) :- filme(Titulo, suspense, _, _, _).
#c
filmes_de_donner(Titulo) :- filme(Titulo, _, donner, _, _).
#d
ano_de_lancamento(Titulo, Ano) :- filme(Titulo, _, _, Ano, _).
#e
filmes_duracao_inferior_100(Titulo) :- filme(Titulo, _, _, _, Duracao), Duracao < 100.
#f
filmes_lancados_entre_2000_2005(Titulo) :- filme(Titulo, _, _, Ano, _), Ano >= 2000, Ano =< 2005.

#consultas
?- diretor_do_filme(Diretor, titanic).
?- filmes_de_suspense(Titulo).
?- filmes_de_donner(Titulo).
?- ano_de_lancamento(sinais, Ano).
?- filmes_duracao_inferior_100(Titulo).
?- filmes_lancados_entre_2000_2005(Titulo).

#////////////////////////////////////////////////////////////////////
#5.2
% Regras
classico(Titulo) :- filmes_lancados_entre_2000_2005(Titulo), ano_de_lancamento(Titulo, Ano), Ano < 1980.

#consultas
?- classico(Titulo).

#//////////////////////////////////////////////////////////////////////
#5.3

% Regras
genero(Titulo, Genero) :- filme(Titulo, Genero).

#consultas
?- genero(Titulo, suspense).
?- genero(Titulo, romance).
?- genero(Titulo, aventura).
?- genero(Titulo, drama).
?- genero(Titulo, ficcao).
?- genero(Titulo,acao ).

#////////////////////////////////////////////////////////////////////////////////////
#5.4

% Regras
classico_suspense(Titulo) :- classico(Titulo), genero(Titulo, suspense).

#consultas
?- classico_suspense(Titulo).