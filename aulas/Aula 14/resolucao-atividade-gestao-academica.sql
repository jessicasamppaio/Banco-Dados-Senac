  USE gestaoacademica;
  
  -- Selecionar todos os alunos
	select * from aluno;
    
-- Selecionar apenas os nomes e CPFs dos alunos
	select nome, cpf
	from aluno;

-- Selecionar alunos matriculados após uma data específica
    select Aluno_ID, DataMatricula
    from matricula
    where DataMatricula > '2024-02-01';
    
    
-- Contar quantas disciplinas existem com carga horária maior que X
	select count(*) as disciplinas
    from disciplina
    where horas > 40;

-- Contar quantas matrículas existem para cada curso

/* pesquisei no google para saebr como fazer com um unico comando
pois só sabia verificar um curso por vez*/

	SELECT Curso_ID, COUNT(*) as Quantidade_Matriculas
	FROM matricula
	GROUP BY Curso_ID;
	
-- Contar quantas disciplinas cada professor leciona

	/* Esse tive dificuldade e não tenho certeza se está correto*/
    SELECT Professor_ID, COUNT(*) as Quantidade_Disciplinas
	FROM professores_disciplinas
	GROUP BY Professor_ID;
    
    
-- Combinar nome do aluno e data da matrícula
	SELECT aluno.Nome, matricula.DataMatricula 
	FROM aluno
	JOIN matricula ON aluno.matricula = matricula.Aluno_ID;
    

-- Combinar nome do curso e nome do aluno
	SELECT aluno.Nome, curso.nome 
	FROM aluno
	JOIN curso ON aluno.matricula = curso.ID;

-- Contar quantos alunos se matricularam em cada curso
    SELECT Curso_ID, COUNT(*) as Quantidade_Matriculas
	FROM matricula
	GROUP BY Curso_ID;