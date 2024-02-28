-- ----------------
-- Consultas Básicas
-- -----------------

SELECT * FROM Aluno;

-- SELECT
-- FROM 
-- WHERE
-- ORDER BY

SELECT *
FROM aluno
WHERE matricula > 3
ORDER BY nome;

-- Operadores Matemáticos e Lógicos:
SELECT * FROM disciplina;

SELECT Nome, Horas
FROM disciplina
WHERE horas >= 40 AND horas <= 50;

-- Aliases para Melhor Legibilidade
SELECT nome AS nome_disciplina, horas AS carga_horaria
FROM disciplina;

-- Exiba da tabela professor, todos os professores por ordem alfabetica
-- onde o professor tenha ID maior do que 2 e menor do que 6
-- não exibindo especialização e mudando a coluna "Nome" para "Nome_Professor"

SELECT Nome AS nome_professor, ID
FROM professor 
WHERE id > 2 AND id < 6
ORDER BY nome;

-- Exemplo: Contar quantas disciplinas existem

SELECT COUNT(*) as QuantidadeDeDisciplinas
FROM disciplina
WHERE horas > 50;

-- Me informe qunatas matriculas foram feitas no curso de ID 2

SELECT COUNT(*) as QuantidadeMatriculas
FROM matricula
WHERE Curso_ID = 2;

-- Exemplo: Selecionar professor com especialização que envolva Tecnologia
SELECT * 
FROM professor
WHERE especializacao LIKE '%Tecnologia%';

-- Exercicio: Selecione todos os cursos que terminem com "medicina" ou começa com a letra "D"

SELECT *
FROM curso
WHERE nome LIKE '%Medicina' OR nome LIKE 'D%';

-- Utilizando o DISTINCT para Obter Valores Distintos

SELECT DISTINCT especializacao FROM professor;