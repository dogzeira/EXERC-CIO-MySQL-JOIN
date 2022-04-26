CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
borda VARCHAR (50) NOT NULL,
tipo VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

-- Criaçao 
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(30) NOT NULL,
acompanhamento VARCHAR(30),
endereco VARCHAR(30) NOT NULL,
preco DECIMAL NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id) 
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (borda, tipo) VALUES ('Grossa', 'Doce');
INSERT INTO tb_categorias (borda, tipo) VALUES ('Fina', 'salgado');
INSERT INTO tb_categorias (borda, tipo) VALUES ('Grossa', 'salgado');
INSERT INTO tb_categorias (borda, tipo) VALUES ('Grossa', 'Doce');
INSERT INTO tb_categorias (borda, tipo) VALUES ('Fina', 'Doce');

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ("Calabresa", "Nao", "Rua sao judas 971", 40, 2);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ('Brigadeiro', 'Sim', 'Rua maronitas 333', 30, 1);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ('Frango', 'Nao', 'Rua  tadeu 978', 60, 3);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ('portuguesa', 'sim', 'Rua sagrada esperança 456', 20, 4);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ('Pepperoni', 'sim', 'Rua 11 de novembro 345', 80, 5);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id) 
VALUES ('Prestigio', 'Nao', 'Rua toledana 18', 70, 4);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id)
VALUES ('Romeu e Julieta', 'Sim', 'Rua salesiana 88', 35, 5);
INSERT INTO tb_pizzas (sabor, acompanhamento, endereco, preco, categorias_id)
VALUES ('Lombo', 'Nao', 'Rua matarazo 33', 60, 3);

UPDATE tb_pizzas SET categorias_id = 2 WHERE id = 5;

UPDATE tb_pizzas SET categorias_id = 2 WHERE id = 4; 

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";


