CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    classe varchar(255),
    tipo varchar(255)
);

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(255),
    ataque int,
    defesa int,
    agilidade int,
    destreza int,
    mana int,
    inteligencia int,
    classe_id bigint,
    
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(classe,tipo)VALUES("Paladin","Melee");
INSERT INTO tb_classes(classe,tipo)VALUES("Glaivier","Melee");
INSERT INTO tb_classes(classe,tipo)VALUES("Gunslinger","Range");
INSERT INTO tb_classes(classe,tipo)VALUES("Bard","Range");
INSERT INTO tb_classes(classe,tipo)VALUES("Deathblade","Melee");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Fred",1700,2000,900,1000,2500,2250,1);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Joana",2200,1400,1100,1300,100,100,2);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Maikon",2120,1350,1300,1000,20,100,3);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Gabriel",1650,1200,1500,100,3000,200,4);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Eduardo",2010,1000,2000,2500,50,100,5);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Renan",2120,1350,1300,100,20,100,3);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Mateus",1700,2000,900,1000,2500,2250,1);
INSERT INTO tb_personagens(nome,ataque,defesa,agilidade,destreza,mana,inteligencia,classe_id)VALUES("Bruno",2010,1000,2000,2500,50,100,5);

SELECT * FROM tb_personagens WHERE ataque > 2000 ORDER BY classe_id ASC;
SELECT * FROM tb_personagens WHERE defesa >= 1000  AND defesa <= 2000 ORDER BY classe_id ASC;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

/*Unindo os dados das 2 tabelas*/
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id ORDER BY classe_id;

/*Trazendo os personagens que pertecem a mesma classe*/
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE classe LIKE "Bard";