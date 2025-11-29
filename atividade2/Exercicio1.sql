-- Passo 1

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Passo 2

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    atributo_principal VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Passo 3
INSERT INTO tb_classes (nome, descricao, atributo_principal) VALUES
("Guerreiro", "Combatente corpo a corpo", "Força"),
("Mago", "Manipulador de energias arcanas", "Magia"),
("Arqueiro", "Especialista em ataques de longa distância", "Agilidade"),
("Assassino", "Mestre da furtividade", "Destreza"),
("Paladino", "Guerreiro sagrado com poderes de cura", "Vitalidade");

-- Passo 4

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
("Ragnar Lothbrok", 60, 3500, 3000, 1),     
("Lagertha", 43, 2200, 1935, 3),            
("Bjorn Ironside", 48, 2650, 2400, 1),      
("Floki", 50, 2900, 1750, 2),               
("Rollo", 53 , 3150, 2650, 1),               
("Ivar the Boneless", 44, 2350, 1760, 4),   
("Ubbe", 38, 1850, 2090, 5),                
("Hvitserk", 36, 1900, 1500, 2);            

-- Passo 6 

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Passo 7

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Passo 8

SELECT * FROM tb_personagens WHERE nome LIKE "R%";

-- Passo 9

SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_personagens.nivel,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_classes.nome AS classe, -- AS renomeia a coluna no resultado do SELECT
    tb_classes.atributo_principal
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id; -- INNER JOIN só retorna registros que existem na tabela ao mesmo tempo

-- Passo 10

SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_personagens.nivel,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Arqueiro";

