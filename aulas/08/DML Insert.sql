USE gestaoAcademica;

INSERT INTO aluno (Matricula, nome, cpf) values
 ('5', 'Pedro Rocha', '6658431578'),
 ('6', 'Monica Souza', '7658431978'),
 ('7', 'Fabio Silva', '965848578');

SELECT * from aluno;

INSERT INTO curso values 
(1, 'Ciencia da computação'),
(2, 'Engenharia Civil'),
(3, 'Administração'),
(4, 'Medicina'),
(5, 'Arquitetura');

SELECT * from curso

SELECT * from matricula;

INSERT INTO matricula (Aluno_ID, Curso_ID, Data_matricula) values
(6, 2, '2023-05-25');

SELECT * from professor;

Insert INTO professor values
 (1, 'Juliano Santos', 'Front-End'),
 (2, 'Camila Fernanda', 'Back-End'),
 (3, 'Marcos Paulo', 'Segurança da Informação'),
 (4, 'Matheus Rocha', 'QA'),
 (5, 'Luana Fernanda', 'Full Stack');
 
 SELECT * from disciplina;
 
 INSERT INTO disciplina values
 (1, 'Banco de Dados', '45'),
 (2, 'Logica de Programação', '180'),
 (3, 'POO', '80');
 
 SELECT * from professor_disciplina;
 
 INSERT INTO professor_disciplina values
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 1),
 (5, 3);







