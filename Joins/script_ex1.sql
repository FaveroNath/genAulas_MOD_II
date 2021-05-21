CREATE DATABASE db_generation_game_online; -- Criando o banco

USE db_generation_game_online;

-- Criando tabelas 
CREATE TABLE tb_personagem(
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque BIGINT(7),
    poder_defesa BIGINT(7),
    classe_id BIGINT(5) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);

CREATE TABLE tb_classe(
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    arma VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

-- Inserindo valores
INSERT INTO tb_classe(tipo,arma)
VALUES
    ("Gnomo","Serra Elétrica"),
    ("Bicho das Trevas","Sugador de almas"),
    ("Cthulhu","Tentáculos"),
    ("Guerreiro","Espada"),
    ("Explorador","Pedra filosofal");
    
INSERT INTO tb_personagem(nome, poder_ataque, poder_defesa, classe_id)
VALUES
    ("Enola", 5000, 2000, 5),
    ("Polvão", 80000, 90000, 3),
    ("Cavaleiro das trevas", 8680 , 1900, 4),
    ("Vandinha", 9000, 6500, 4),
    ("Etéreo", 8900, 1000, 2),
    ("sherlock holmes", 700, 1800, 5),
    ("Doutor estranho", 100000, 88000, 5),
    ("Colord", 1000, 750, 1);
    
 -- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.   
SELECT * FROM tb_personagem 
WHERE poder_ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
SELECT * FROM tb_personagem 
WHERE poder_defesa > 1000 AND poder_defesa < 2000;

SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.

SELECT * FROM tb_personagem 
WHERE nome LIKE "C%"; -- No começo 
SELECT * FROM tb_personagem 
WHERE nome LIKE "%C"; -- No final 
SELECT * FROM tb_personagem 
WHERE nome LIKE "%C%"; -- Na palavra inteira

-- Faça um um select com Inner join entre tabela classe e personagem.

SELECT * FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id  = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).

SELECT * FROM tb_personagem 
INNER JOIN tb_classe ON tb_classe.id  = tb_personagem.classe_id
WHERE tb_classe.tipo LIKE "%Cthulhu%";

SELECT * FROM tb_classe