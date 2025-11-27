-- Passo 1
CREATE DATABASE db_escola;
USE db_escola;

-- Passo 2
CREATE TABLE tb_alunos(
matricula BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
media_final NUMERIC(4,2) NOT NULL,
observacoes TEXT
);

SELECT * FROM tb_alunos;

-- Passo 3
INSERT INTO tb_alunos(nome, idade, media_final, observacoes)
VALUES 
("Carla", 15, 9.85 , "Parabéns, você passou de ano! Continue assim."),
("Diego", 13, 7.50,"Parabéns, você passou de ano! Lembre-se de melhorar cada vez mais."),
("Artur", 18, 5.70, "Lamento, você rodou de ano! Se esforce mais."),
("Eliza", 18, 6.00, "Parabéns, você passou de ano! Foque em melhorar cada vez mais."),
("Caio", 15, 3.50, "Lamento, você rodou de ano! Dedique-se ano que vem."),
("Pedro", 14, 10.00, "Parabéns, você passou de ano com a média máxima!"),
("Camila", 13, 8.80, "Parabéns, você passou de ano! Continue se dedicando.");
SELECT * FROM tb_alunos;

-- Passo 4
SELECT * FROM tb_alunos WHERE media_final > 7;

-- Passo 5
SELECT * FROM tb_alunos WHERE media_final < 7;

-- Passo 6
SET SQL_SAFE_UPDATES = 1;
UPDATE tb_alunos SET media_final = CASE matricula 
WHEN 4 THEN 7.90 END
WHERE matricula in(4);
