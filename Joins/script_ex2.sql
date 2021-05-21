CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    vegana boolean,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
    sabor VARCHAR(255) NOT NULL,
    categoria_id BIGINT(5) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, vegana)
VALUES 
	("Pizza doce", TRUE),
    ("Pizza doce", FALSE),
    ("Pizza salgada", TRUE),
    ("Pizza salgada", FALSE),
	("Esfiha", FALSE);
    
INSERT INTO tb_pizza(nome,preco,sabor,categoria_id)
VALUES 
	("Pizza a moda da casa",45.50,"Palmito e queijo",4),
    ("Baina", 19.50,"Ovo, calabresa, pimenta e cebola",4),
    ("Portuguesa", 35.99,"Presunto, queijo, ovo e milho",4),
    ("Esfiha de carne",20.50,"carne",5),
    ("Calamussa", 50.50,"Calabresa e mussarela",4),
    ("Verde saboroso",67.35,"Escarola, queijo vegano e alcaparras",3),
    ("Romeu e Julieta", 76.30,"Queijo e goibada",2),
    ("Delicia suprema",23.65,"Banana e canela",1);
 
 -- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
 SELECT * FROM tb_pizza
 WHERE preco > 45;
 
 -- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
 SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
 
 -- Faça um select utilizando LIKE buscando os Produtos com a letra C.

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";
SELECT * FROM tb_pizza WHERE nome LIKE "%c";
SELECT * FROM tb_pizza WHERE nome LIKE "c%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.tipo LIKE "%Pizza doce%";
    
    
    
SELECT * FROM tb_categoria;