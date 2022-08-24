CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(50),
    empresa varchar(50),
    cpf varchar(50),
    setor varchar(50),
	salario decimal(10,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Gabriel","Itaú","473.892.928-77","Finaceiro",3000.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Renan","Itaú","453.841.038-67","Gerente",5000.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Maikon","Itaú","426.522.828-22","Analista de Banco de Dados",3200.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Mateus","Itaú","356.111.263-75","RH",1800.00);
INSERT INTO tb_colaboradores (nome,empresa,cpf,setor,salario) VALUES ("Eduardo","Itaú","123.242.928-02","Scrum Master",3500.00);

SELECT id,nome,salario FROM tb_colaboradores WHERE salario > 2000;
SELECT id,nome,salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3500 WHERE id = 1;
