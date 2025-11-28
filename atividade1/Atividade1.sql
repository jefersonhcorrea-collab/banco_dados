-- Passo 1
CREATE DATABASE db_rh;
USE db_rh;

-- Passo 2
CREATE TABLE tb_colaboradores(
rg BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
data_admissao DATE,
salario DECIMAL (6,2)
);
SELECT * FROM tb_colaboradores;
describe tb_colaboradores;

-- Passo 3
INSERT INTO tb_colaboradores(nome, cargo, data_admissao,salario)
VALUES 
("Ana","Secretária",'2020-05-10',1800.00),
("João","Analista de RH",'2022-07-03',5000.00),
("Luiz", "Trainee",'2025-04-22',1500.00),
("Julia","Gestora de Finanças",'2021-10-27',6000.00),
("Caroline","Coordenadora de RH",'2024-05-22',9000.00);
SELECT * FROM  tb_colaboradores;

-- Passo 4
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Passo 5
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Passo 6
SET SQL_SAFE_UPDATES = 1;
UPDATE tb_colaboradores SET salario = 1900.00 WHERE rg = 1;
SELECT * FROM tb_colaboradores;





