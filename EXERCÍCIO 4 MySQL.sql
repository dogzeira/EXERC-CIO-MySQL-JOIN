CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR (30),
PRIMARY KEY (id)
 );
 
 CREATE TABLE tb_produtos(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR (30) NOT NULL,
qualidade VARCHAR (30),
preço DECIMAL (4,2) NOT NULL,
id_categorias BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
 );
 
 SELECT * FROM tb_categorias;
 
iNSERT INTO tb_categorias (id,tipo) VALUES (1,"Verdura");
INSERT INTO tb_categorias (id,tipo) VALUES (2,"Legumes");
INSERT INTO tb_categorias (id,tipo) VALUES (3,"Frutas");
INSERT INTO tb_categorias (id,tipo) VALUES (4,"Raízes");
INSERT INTO tb_categorias (id,tipo) VALUES (5,"Leguminosas");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Maça", "Tipo A", 10.90, 3);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Goiaba", "Tipo C", 9.99, 3);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Cenoura", "Tipo B", 12.90, 4);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Mandioca", "Tipo A", 5.90, 4);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Soja", "Tipo C", 15.90, 5);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Gão de bico", "Tipo B", 20.00, 5);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Melancia", "Tipo A", 12.00, 3);
INSERT INTO tb_produtos (nome, qualidade, preço, id_categorias) VALUES ("Espinafre", "Tipo C", 30.00, 1);

SELECT * FROM tb_produtos WHERE preço > 9.90;

SELECT * FROM tb_produtos WHERE preço BETWEEN 12.90 AND 30.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%o%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categorias
WHERE tipo = "frutas";