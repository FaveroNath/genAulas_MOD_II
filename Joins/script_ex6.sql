CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
    id BIGINT(7) AUTO_INCREMENT,
    materia VARCHAR(255) NOT NULL,
    nicho VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_curso(
    id BIGINT(7) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    prof VARCHAR(255) NOT NULL,
    categoria_id BIGINT(7) NOT NULL,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
    
);

INSERT INTO tb_categoria(materia,nicho)
VALUES
    ("Ciências","Exatas"),
    ("Matemática","Exatas"),
    ("Finanças","Exatas"),
    ("Literatura","Humanas"),
    ("Java","Programação");

INSERT INTO tb_curso(nome,preco,prof,categoria_id)
VALUES
    ("Introdução a eletrodinâmica Quântica",22.90,"Feynman",1),
    ("Literatura Russa", 27.90 ," Nikolai Leskov", 4),
    ("Introdução ao Java", 47.90 ,"Adalberto", 5),
    ("Como economizar de forma fácil", 56.90 ,"Marina Mellier", 3),
    ("Geometria não euclidiana", 59.99 ,"Riemann", 2),
    ("Equações diferênciais e ordinárias", 67.90 ,"Zapata", 2),
    ("As Narrativas da Memória na Literatura", 280.00 ,"Ingrid Fagundez", 4),
    ("Java COMPLETO Programação Orientada a Objetos +Projetos", 189.90 ,"Nelio Alves", 5);
    
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_curso WHERE preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
SELECT * FROM tb_curso WHERE nome LIKE "%j%";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT tb_curso.nome AS Curso, tb_curso.preco, tb_curso.prof AS Professor, tb_categoria.materia, tb_categoria.nicho FROM tb_curso 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_curso.categoria_id; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
SELECT * FROM tb_curso 
INNER JOIN tb_categoria 
ON tb_categoria.id = tb_curso.categoria_id
WHERE tb_categoria.materia = "Java"; 

SELECT * FROM tb_categoria;