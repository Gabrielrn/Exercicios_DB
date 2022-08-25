CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
	sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Grande",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Vegetariana","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Vegana","Brotinho",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Frango C/ Catupiry",30.00,"Tradicional",5,1);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Mussarela",40.59,"Tradicional",5,2);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Prestigio",50.99,"Tradicional",2,8);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Lombo C/ Catupiry",60.99,"Tradicional",3,5);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Brocolis C/ Catupiry",40.00,"Tradicional",4,9);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Calabresa",45.00,"Tradicional",5,1);

/*O order by ASC ordena em ordem alfabética*/
/*Estrutura de uma consulta: SELECT - CONDIÇÃO - ORDENAÇÃO*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC;
/*Duas maneiras de fazer a mesma consulta*/
SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00 ORDER BY preco ASC;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00 ORDER BY preco ASC;

/*Traz somente os sabores da pizzas com preço entre 50 e 100*/
SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00 ORDER BY preco ASC;
/*Operador Like só funciona para Strings, neste casa a consula retornará uma palavra que contenha a letra M*/
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

/*Ele vai trazer os dados da tabela de pizza e vai fazer uma junção do que tem em comum entre as duas tabelas*/
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao LIKE "Salgada";
