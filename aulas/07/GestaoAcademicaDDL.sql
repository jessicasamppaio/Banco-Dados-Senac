CREATE DATABASE GestaoAcademica;

USE GestaoAcademica;
 
CREATE TABLE Curso (
    ID INT PRIMARY KEY,
    Nome VARCHAR (100)
);
 
CREATE TABLE Disciplina (
    Id INT PRIMARY KEY,
    Nome VARCHAR (255),
    Creditos INT
);
 
CREATE TABLE Professor (
    Id INT PRIMARY KEY,
    Nome VARCHAR (100),
    Especializacao VARCHAR (50)
);
 
CREATE TABLE Aluno (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR (100)
);  
 
CREATE TABLE IF NOT EXISTS Matricula (
    Aluno_ID INT,
    Curso_ID INT,
    Data_Matricula DATE,
    PRIMARY KEY (Aluno_ID, Curso_ID) ,
    FOREIGN KEY (Aluno_ID) REFERENCES Aluno (Matricula),
    FOREIGN KEY (Curso_ID) REFERENCES Curso (Id)
);

-- DDL ADD COLUNM

ALTER TABLE professor
	ADD carga_horaria INT NOT NULL;

alter table aluno
	add cpf varchar (11) not null unique;
    
		SELECT * FROM ALUNO;
    
    -- DDL DROP COLUMN
    
ALTER TABLE professor
		DROP COLUMN carga_horaria;
        
-- Altere a coluna aluno.nome paa um varchar de 50 carecteres. nao nulo

ALTER TABLE aluno
ADD nome VARCHAR(50) NOT NULL UNIQUE;

-- Altere a coluna disciplina.credito para "Horas nao nulo

ALTER TABLE disciplina
ADD horas INT NOT NULL;
