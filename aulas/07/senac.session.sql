use gestaoacademica;
CREATE TABLE IF NOT EXISTS Disciplina_Curso(
    Disciplina_ID INT,
    Curso_ID INT,
    PRIMARY KEY(Disciplina_ID, Curso_ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Id),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Id)
);
-- Criação do Banco de Dados
CREATE DATABASE GestaoAcademica;

-- CREATE DATABASE IF NOT EXISTS GestaoAcademica;
-- DROP DATABASE GestaoAcademica;

-- Seleção do Banco de Dados
USE GestaoAcademica;

CREATE TABLE IF NOT EXISTS Curso (
    Id INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Disciplina (
    Id INT PRIMARY KEY,
    Nome VARCHAR(50),
    Creditos INT
);

CREATE TABLE IF NOT EXISTS Professor (
    Id INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especializacao VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Aluno (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Matricula (
    Aluno_ID INT,
    Curso_ID INT,
    Data_Matricula DATE,
    PRIMARY KEY(Aluno_ID, Curso_ID),
    FOREIGN KEY (Aluno_ID) REFERENCES Aluno(Matricula),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Id)
);

CREATE TABLE IF NOT EXISTS Professor_Disciplina(
    Professor_ID INT,
    Disciplina_ID INT,
    PRIMARY KEY (Professor_ID, Disciplina_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professor(Id),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Id)
);

CREATE TABLE IF NOT EXISTS Disciplina_Curso(
    Disciplina_ID INT,
    Curso_ID INT,
    PRIMARY KEY(Disciplina_ID, Curso_ID)
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Id),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Id)
);