CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT, 
tipo VARCHAR (30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT NOT NULL AUTO_INCREMENT, 
curso VARCHAR (30),
descrição VARCHAR (100),
tempo FLOAT NOT NULL,
valor DECIMAL (10,2) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo) VALUES ("EAD");
INSERT INTO tb_categorias (tipo) VALUES ("Semi presencial");
INSERT INTO tb_categorias (tipo) VALUES ("Presencial");

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos (curso, descrição, tempo, valor, categorias_id) VALUES ("Historia","Licenciatura","3","2000.00","1");
INSERT INTO tb_cursos (curso, descrição, tempo, valor, categorias_id) VALUES ("Economia","Bacharelado","4","5000.00","2");
INSERT INTO tb_cursos (curso, descrição, tempo, valor, categorias_id) VALUES ("ADS","Bacharelado","5","8000.00","3");
INSERT INTO tb_cursos (curso, descrição, tempo, valor, categorias_id) VALUES ("Engenharia Civil","Bacharelado","5","3000.00","2");
INSERT INTO tb_cursos (curso, descrição, tempo, valor, categorias_id) VALUES ("Geografia","Licenciatura","4","1000.00","1");

SELECT * FROM tb_cursos WHERE valor > 3000.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 2000.00 AND 5000.00;

SELECT * FROM tb_cursos WHERE curso LIKE "a%";

SELECT * from tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categorias_id;

SELECT * from tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categorias_id
WHERE descrição = "Licenciatura";






