CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    graos BOOLEAN,
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

INSERT INTO tb_categoria(tipo,graos)
VALUES
    ("Legumes",false),
    ("Verduras",false),
    ("Não perecíveis", true),
    ("Frutas",false),
    ("temperos",false);
    
INSERT INTO tb_produto(nome,preco,quantidade,categoria_id)
VALUES
    ("Cenoura",6.35,300,1),
    ("Batata", 2.35,550,1),
    ("Beterraba",8.35,150,1),
    ("Couve flor",5.35,881,2),
    ("Orégano",12.00,984,5),
    ("Laranja", 9.35,50 , 4),
    ("Lentilha",70.99,1001,3),
    ("Coco",60.35,123,4);
    
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco  BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE nome LIKE "c%";
SELECT * FROM tb_produto WHERE nome LIKE "%c%";
SELECT * FROM tb_produto WHERE nome LIKE "%c";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.tipo = "Frutas";

SELECT * FROM tb_categoria;    


