CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(10,2) NULL,
    materia VARCHAR(255),
    matricula INT UNIQUE,
    
	PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome,nota,materia,matricula)
	VALUES
	("Nathalia Favero",10.00,"matemática",1235),
    ("Antonio Joaquim",9.7,"Física",1236),
    ("Claudia Fenix",5.5,"Arte contemporâne",7235),
    ("Paula Mara",4.5,"Filosofia",1785),
    ("Gregório",3.3,"Geografia",1205),
    ("Antonieta Severo",7.7,"Educação física",2235),
    ("Feynman",10.00,"Física",1258),
    ("Paulo",10.0,"Sociologia",8935);
    
SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 3.56 WHERE id = 8;

SELECT * FROM tb_alunos;

 