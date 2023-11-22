% Fatos
aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).


# pergunta A
% Regras 
aluno(Aluno, Disciplina),
professor(Professor, Disciplina).

# consulta
?- aluno_do_professor(Aluno, carlos).


# pergunta B
% Regras
pessoa_da_universidade(Pessoa, Universidade) :-(aluno(Pessoa, _) ; professor(Pessoa, _) ; funcionario(Pessoa, _)),frequenta(Pessoa, Universidade).

#consulta
?- pessoa_da_universidade(Pessoa, puc).
