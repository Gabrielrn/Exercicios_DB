CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	tipo varchar(255),
    nome_curso varchar(255)
);

CREATE TABLE tb_cursos(
	id bigint auto_increment primary key,
    nome varchar(255),
    nome_prof varchar(255),
    avaliacao decimal(4,2),
    preco decimal(10,2),
    
    categoria_id bigint,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo,nome_curso)VALUES("Linguagem de Programação","Java");
INSERT INTO tb_categorias(tipo,nome_curso)VALUES("Linguagem de Programação","C#");
INSERT INTO tb_categorias(tipo,nome_curso)VALUES("Linguagem de Programação","JavaScript");
INSERT INTO tb_categorias(tipo,nome_curso)VALUES("Linguagem de Programação","Python");
INSERT INTO tb_categorias(tipo,nome_curso)VALUES("Linguagem de Programação","Ruby");

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de Java","Nélio Alves",4.8,550.00,1);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de Java Orientado a Objetos","Nélio Alves",4.7,600.00,1);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de C#","Nélio Alves",4.8,520.00,2);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de C# Orientado a Objetos","Nélio Alves",4.6,590.00,2);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de JavaScript","Nélio Alves",4.9,490.90,3);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de Python","Gustavo Guanabara",5,00.00,4);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de Machine Learning com Python","Nélio Alves",5,800.00,4);
INSERT INTO tb_cursos(nome,nome_prof,avaliacao,preco,categoria_id)VALUES("Curso de Ruby","Nélio Alves",4.5,490.00,5);

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco >= 600.00 AND preco <= 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categoria_id WHERE categoria_id LIKE 1;



