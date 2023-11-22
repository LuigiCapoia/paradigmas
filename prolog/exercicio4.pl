
% Fatos
nota(maria, 6.0).
nota(joana, 8.0).
nota(cleuza, 8.5).
nota(joaquim, 4.5).
nota(mara, 4.0).
nota(mary, 10.0).

% Regras 
ARR(Nota, 'Aprovado') :- Nota >= 7.0, Nota =< 10.0.
ARR(Nota, 'Recuperacao') :- Nota >= 5.0, Nota < 6.9.
ARR(Nota, 'Reprovado') :- Nota >= 0.0, Nota < 5.0.
situacao_aluno(Aluno, Situacao) :- nota(Aluno, Nota), ARR(Nota, Situacao).


#consultas
?- situacao_aluno(maria, Situacao).
?- situacao_aluno(joana, Situacao). 
?- situacao_aluno(joaquim, Situacao).
?- situacao_aluno(mary, Situacao). 