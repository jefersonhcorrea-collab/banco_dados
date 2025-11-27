-- Passo 1
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- Passo 2
CREATE TABLE tb_mercado(
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco_kg DECIMAL(6,3),
quantidade INT,
descricao TEXT
);
SELECT * FROM tb_mercado;

-- Passo 3
INSERT INTO tb_mercado(nome_produto, preco_kg, quantidade, descricao)
VALUES 
("Carne moída", 32, 500 , "Carne moída de segunda"),
("Coxa de frango", 15, 300,"Coxa de frango Perdigão"),
("Arroz", 9.35, 1000, "Arroz branco"),
("Feijao", 10.90 , 1500, "Feijão preto"),
("Farinha", 8.75, 1300, "Farinha trigo"),
("Tomate", 5.50, 250, "Tomate longa vida"),
("Laranja", 3.80, 250, "Laranja Montenegrina"),
("Batata", 2.90, 150, "Batata inglesa");
SELECT * FROM tb_mercado;
ALTER TABLE tb_mercado
CHANGE COLUMN quantidade quantidade_kg VARCHAR(255);

-- Passo 4
SELECT * FROM tb_mercado WHERE quantidade_kg > 500;

-- Passo 5
SELECT * FROM tb_mercado WHERE quantidade_kg < 500;

-- Passo 6
SET SQL_SAFE_UPDATES = 1;
UPDATE tb_mercado SET preco_kg = CASE id 
WHEN 1 THEN 33.50 WHEN 2 THEN 16.89 END
WHERE id in(1,2);






















);



