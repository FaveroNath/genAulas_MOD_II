CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ambiente VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto(
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
    quantidade BIGINT(5) NULL,
    categoria_id BIGINT(5)  NOT NULL,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
    
);

INSERT INTO tb_categoria(tipo,ambiente)
VALUES
    ("Hidraulico","casa"),
    ("Civil","casa"),
    ("Revestimentos","casa"),
    ("Marcenária","casa"),
    ("Civil","jardim");
    
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id)
VALUES
    ("Cimento",34.90,400,2),
    ("Porcelanato", 55.99,233,3),
    ("Janelas",80.99, 105,4),
    ("Porta",65.99,789,4),
    ("Luminária",63.89,4301,5),
    ("Mesinha",55.90,77,5),
    ("Prego",1.90,1500,2),
    ("Canos",59.90,900,1);
    
    
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
SELECT * FROM tb_produto WHERE nome LIKE "%j%";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.tipo = "Civil";

SELECT * FROM tb_categoria;

