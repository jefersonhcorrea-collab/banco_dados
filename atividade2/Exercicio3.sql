-- Passo 1

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Passo 2

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Passo 3

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    fabricante VARCHAR(50),
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Passo 4

INSERT INTO tb_categorias (nome, descricao)
VALUES
('Medicamentos', 'Produtos destinados ao tratamento de doenças'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Infantil', 'Produtos destinados ao público infantil');

-- Passo 5

INSERT INTO tb_produtos (nome, preco, fabricante, quantidade, categoria_id)
VALUES
('Paracetamol 500mg', 12.90, 'EMS', 50, 1),
('Ibuprofeno 400mg', 18.50, 'Neo Química', 40, 1),
('Shampoo Anticaspa', 32.00, 'Clear', 25, 2),
('Creme Hidratante Facial', 58.00, 'Nivea', 18, 3),
('Protetor Solar FPS 50', 67.00, 'La Roche-Posay', 15, 3),
('Vitamina C 1g', 45.00, 'Sundown', 20, 4),
('Ômega 3 1000mg', 72.00, 'Unilife', 30, 4),
('Lenço Umedecido Baby', 14.00, 'Huggies', 60, 5);

-- Passo 6

SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Passo 7

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Passo 8

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

-- Passo 9

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Passo 10 

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';







-- atualização
