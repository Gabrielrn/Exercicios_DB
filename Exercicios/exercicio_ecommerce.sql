CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    nome varchar(50),
	fabricador varchar(50),
    categoria varchar(50),
    preco decimal(10,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Teclado","T-Dagger","Hardware",250.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Mouse","Logitech","Hardware",280.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Headset","Redragon","Hardware",320.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("MousePad","Husky","Hardware",250.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Monitor","Alienware","Hardware",3120.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Placa de vídeo","GeForce","Hardware",2500.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Processador","AMD","Hardware",2750.00);
INSERT INTO tb_produtos (nome,fabricador,categoria,preco)VALUES("Gabinete","Pichau","Hardware",247.00);

SELECT id,nome,preco FROM tb_produtos WHERE preco > 500;
SELECT id,nome,preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 250.00 WHERE id = 8;