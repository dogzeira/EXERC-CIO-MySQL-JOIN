CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR (30),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT NOT NULL AUTO_INCREMENT,
produto VARCHAR (30) NOT NULL,
utilidade VARCHAR (100),
valor DECIMAL (5,2) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo) VALUES ("Elétrica");
INSERT INTO tb_categorias (tipo) VALUES ("Hidráulica");
INSERT INTO tb_categorias (tipo) VALUES ("Tinturaria");
INSERT INTO tb_categorias (tipo) VALUES ("Serralharia");
INSERT INTO tb_categorias (tipo) VALUES ("Marcenaria");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Cano PVC", "Utilizado para passagem de água, esgoto e etc...", "100.00", 2);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Rolo de fio", "Utilizado para instalação de energia elétrica", "500.00", 1);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Tábua bruta pinus", "Utilizado para construção de andaime", "85.00", 5);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Barra de ferro", "Utilizado para passagens de fios em instalações industriais", "800.00", 4);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Lata de tinta", "Utilizado para pinturas", "50.00", 3);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Pincel", "Utilizado para pinturas", "25.00", 3);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Multímetro", "Utilizado para testa passagem de energia elétrica", "40.00", 1);
INSERT INTO tb_produtos (produto, utilidade, valor, categorias_id) 
VALUES ("Veda rosca", "Utilizado para apertar a rosca dos canos", "150.00", 2);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 500.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%a";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE tipo = "Hidraúlica";
