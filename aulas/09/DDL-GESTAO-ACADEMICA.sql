CREATE SCHEMA IF NOT EXISTS gestaoacademica;
USE gestaoacademica;

-- ----------------------------
-- DDL - Criação de Tabelas
-- ----------------------------
CREATE TABLE IF NOT EXISTS aluno(
	Matricula INT auto_increment,
    Nome VARCHAR(50) NOT NULL,
    Cpf VARCHAR(11) NOT NULL UNIQUE,
    PRIMARY KEY(Matricula)
);

CREATE TABLE IF NOT EXISTS curso(
	ID INT AUTO_INCREMENT,
    Nome VARCHAR(50) NULL DEFAULT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS disciplina(
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(50) NULL DEFAULT NULL,
    Horas INT NOT NULL DEFAULT 0,
    PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS gestaoacademica.professor(
	ID INT AUTO_INCREMENT,
    Nome VARCHAR(100) NULL DEFAULT NULL,
    Especializacao VARCHAR(50) NULL DEFAULT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS matricula(
	Aluno_ID INT,
    Curso_ID INT,
    DataMatricula DATE NOT NULL,
    PRIMARY KEY(Aluno_ID, Curso_ID),
    FOREIGN KEY(Aluno_ID) REFERENCES aluno(Matricula),
    FOREIGN KEY(Curso_ID) REFERENCES curso(ID)
);

CREATE TABLE IF NOT EXISTS disciplina_cursos(
	Disciplina_ID INT,
    Curso_ID INT,
    PRIMARY KEY(Disciplina_ID, Curso_ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Curso(ID)
);

CREATE TABLE IF NOT EXISTS professor_disciplinas(
	Professor_ID INT,
    Disciplina_ID INT,
    PRIMARY KEY (Professor_ID, Disciplina_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professor(ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(ID)
);