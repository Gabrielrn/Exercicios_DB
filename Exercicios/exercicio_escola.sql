/*Comando de criação de Banco de Dados*/
CREATE DATABASE db_escola;

/*Seleciona o Banco de dados a ser usado*/
USE db_escola;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunos(
	/*O comando auto_increment só pode ser usado uma vez dentro de uma tabela, ele permite que o id não se repita*/
    id bigint auto_increment primary key,
    /*String, o 255 é o limite de caracteres que poderá ser escrito no campo NOME*/
	nome varchar(255),
    /*Ele aceita a data no formato ano, mes e dia*/
    data_nascimento date,
    turma int,
    /*Decimal representa os números com ponto flutuante, o 4 representa a quantidade de números totais que serão aceitos dentro do campo de nota (antes e dps da virgula), e o 2 a quantidade de número dps da virgula que serão aceitos*/
    nota decimal(4,2)
);

/*Comando usado para trazer todos os resultados da tabela alunos (consulta)*/
SELECT * FROM tb_alunos;

/*Inserir dados na tabela - Registros*/
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Gabriel","2003-02-23",57,10);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Renan","1996-05-22",57,10);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Mateus","1997-12-05",57,10);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Eduardo","2003-02-28",57,10);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Maikon","1995-05-12",57,10);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Joao","2003-02-23",57,6.5);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Jose","2001-02-20",57,6.0);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Carlos","2006-02-23",57,5.9);

/*Seleciona todos os dados da tabela de Alunos ONDE a nota for maior que 7*/
SELECT id,nome,nota FROM tb_alunos WHERE nota > 7;
SELECT id,nome,nota FROM tb_alunos WHERE nota < 7;

/*Comando para atualizar um dado na tabela*/
UPDATE tb_alunos SET nota = 7 WHERE id = 6;

/**
SET SQL_SAFE_UPDATES = 0; - para desativar o modo seguro
*/