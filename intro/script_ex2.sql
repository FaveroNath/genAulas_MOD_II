CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
    quantidade BIGINT(5),
    ativo BOOLEAN,
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,preco,quantidade,ativo) 
	VALUES
	("Escova de dente",5.50,600,true),
	("Laranja",2.90,733,true),
	("Caderno",12.50,180,true),
	("Chocolate em pó", 4.45, 0 ,false),
	("Notebook", 1550.99,1200,true),
	("Fone de ouvido", 600.99, 333 ,true),
	("Arroz", 20.50, 560 ,true),
	("Feijão", 15.35, 50, true);
    
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;
    
UPDATE tb_produtos SET quantidade = 7, ativo = true
	WHERE id = 4;
    
SELECT * FROM tb_produtos;