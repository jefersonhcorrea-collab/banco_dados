-- Passo 1

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Passo 2

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Passo 3

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes VARCHAR(200),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Passo 4

INSERT INTO tb_categorias (nome, descricao) 
VALUES
('Tradicional', 'Pizzas salgadas clássicas'),
('Doce', 'Pizzas com recheios doces'),
('Vegana', 'Pizzas de vegetais'),
('Premium', 'Pizzas especiais e gourmet'),
('Promocional', 'Pizzas em oferta');

-- Passo 5

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoria_id) 
VALUES
('Pepperoni', 'Grande', 52.00, 'Pepperoni, queijo mussarela, molho de tomate', 1),
('Portuguesa', 'Grande', 58.00, 'Presunto, ovo, cebola, azeitona, queijo', 1),
('Camarão Especial', 'Média', 75.00, 'Camarão, catupiry, alho, salsa', 1),
('Nutella com Morango', 'Média', 65.00, 'Nutella, morango fresco, leite condensado', 2),
('Romeu e Julieta', 'Pequena', 55.00, 'Goiabada, queijo minas', 2),
('Vegana Mediterrânea', 'Grande', 68.00, 'Tomate seco, rúcula, azeitonas pretas, queijo vegano', 3),
('Trufada Gourmet', 'Grande', 95.00, 'Queijo brie, cogumelos trufados, azeite especial', 4),
('Promoção Calabresa', 'Média', 38.00, 'Calabresa, cebola, molho de tomate', 5);

-- Passo 6

SELECT * FROM tb_pizzas WHERE preco > 45.00;


-- Passo 7

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Passo 8

SELECT * FROM tb_pizzas WHERE nome LIKE "C%";

-- Passo 9

SELECT 
    tb_pizzas.id,
    tb_pizzas.nome AS nome_pizza,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.nome AS categoria,
    tb_categorias.descricao AS descricao_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- Passo 10

SELECT 
    tb_pizzas.id,
    tb_pizzas.nome AS nome_pizza,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';








