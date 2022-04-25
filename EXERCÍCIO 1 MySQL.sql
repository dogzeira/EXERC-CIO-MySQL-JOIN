CREATE DATABASE game;

USE game;

CREATE TABLE tb_classes (
id BIGINT NOT NULL AUTO_INCREMENT, 
classe VARCHAR (30) NOT NULL,
tipo   VARCHAR (30) not null,
 PRIMARY KEY(id)
);

CREATE TABLE tb_personagens (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR (30) NOT NULL,
genêro VARCHAR (30) NOT NULL,
armadura BOOLEAN NOT NULL,
ataque BIGINT NOT NULL,
defesa BIGINT NOT NULL,
id_classes BIGINT,          
PRIMARY KEY(id),
FOREIGN KEY (id_classes) REFERENCES tb_classes (id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (classe, tipo) VALUES ("Arqueiro","Ar");
INSERT INTO tb_classes (classe, tipo) VALUES ("Tanque","Fogo");
INSERT INTO tb_classes (classe, tipo) VALUES ("Druida","Cura");
INSERT INTO tb_classes (classe, tipo) VALUES ("Fentiçeira","Magia");
INSERT INTO tb_classes (classe, tipo) VALUES ("Assasino","Trevas");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Faizam","Masculino",10000,5000,True,1);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Mars","Masculino",3000,10000,True,2);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Fate","Feminino",20000,8000,False,3);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Fenice","Feminino",1500,12000,False,4);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Dors","Masculino",2900,7000,True,5);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Keng","Masculino",1000,9500,False,1);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Katrina","Feminino",2000,6000,False,3);
INSERT INTO tb_personagens (nome, genêro, ataque, defesa, armadura, id_classes) VALUES ("Smol","Masculino",8000,1500,True,2);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 5000;

SELECT * FROM tb_personagens WHERE nome LIKE "%i%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

SELECT nome, genêro, armadura, ataque, defesa, classe, tipo FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id 
WHERE tb_classes.classe = "arqueiro";

SELECT nome, genêro, armadura, ataque, defesa, classe, tipo FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id 
WHERE tb_classes.classe = "arqueiro";
