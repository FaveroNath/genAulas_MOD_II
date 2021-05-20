CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios(nome,cargo,setor,salario) 
	VALUES 
    	("Maria Das Dores", "secretária", "atendimento", 1750.50),
	("Adalberto", "assitente de TI", "TI", 1250.66),
	("Clara Maria", "CEO", "TI", 60750.50),
	("Humberto", "Limpeza", "atendimento", 1550.50),
	("Mariana", "Desenvolvedora Júnior", "TI", 20350.50);

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios set salario = 2500.45 where id = 1;

SELECT * FROM tb_funcionarios;