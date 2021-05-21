CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    generico BOOLEAN NULL,
    PRIMARY KEY(id)
);


CREATE TABLE tb_produto(
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
    descricao VARCHAR(255) NULL,
    categoria_id BIGINT(5)  NOT NULL,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
    
);

INSERT INTO tb_categoria(tipo,generico)
VALUES 
    ("Cosmético",0),
    ("Medicamentos", true),
    ("Medicamentos",false),
    ("Higiene e beleza",0),
    ("Conveniência",0);
    
INSERT INTO tb_produto(nome,preco,descricao,categoria_id)
VALUES
    ("Dipirona",3.30,"500 mg",2),
    ("Dipirona",10.30,"1 g",3),
    ("Batom", 15.50,"cor de rosa",1),
    ("cetoprofeno", 2.30,"100 mg",2),
    ("Ibuprofeno", 7.30,"Gostas",3),
    ("Secador", 150.90 ,"Seca cabelos",4),
    ("Sabonete liguído nivea",61.30,"Anti acne",4),
    ("Balinha de canela", 1.30,"canela",5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome LIKE "b%";
SELECT * FROM tb_produto WHERE nome LIKE "%b%";
SELECT * FROM tb_produto WHERE nome LIKE "%b";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT tb_produto.nome, tb_produto.preco, tb_produto.descricao, tb_categoria.tipo, tb_categoria.generico AS Medicamento_Generico FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
SELECT * FROM tb_produto
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.tipo = "Cosmético";

SELECT * FROM tb_categoria
