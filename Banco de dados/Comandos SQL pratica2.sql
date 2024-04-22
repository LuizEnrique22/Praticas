CREATE TABLE DVD (

codigo NUMBER(3) PRIMARY KEY, 
titulo VARCHAR2(20) NOT NULL,
preco  NUMBER(5,2) NOT NULL

    
);

DESC DVD 


INSERT INTO DVD (codigo,titulo,preco) VALUES (100, 'Extraordinario', 39.99);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (101, 'A forma da agua', 29.55);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (102, 'Policial federal', 19.44);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (103, 'Star Wars', 39.88);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (104, 'Batman vs Superman', 17.99);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (105, 'Steve jobs', 29.33);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (106, 'Pela janela', 39.88);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (107, 'Mulher Maravilha', 29.99);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (108, 'O regresso', 49.87);
select * from dvd;

INSERT INTO DVD (codigo,titulo,preco) VALUES (109, 'A cabana', 22.55);
select * from dvd;


SELECT * FROM DVD WHERE codigo < 106;



UPDATE DVD SET preco =  24.99 WHERE codigo = 105;
SELECT * FROM DVD

SELECT preco*1.2 as Preco_novo, titulo FROM dvd;
SELECT * FROM DVD

UPDATE DVD SET preco = preco*1.12 WHERE codigo = 104 ;
SELECT * FROM DVD

DELETE FROM DVD WHERE preco < 20.00;
SELECT * FROM DVD

DELETE FROM DVD WHERE codigo = 108;
SELECT * FROM DVD;

UPDATE dvd SET preco = preco * 0.80 WHERE codigo = 103;
SELECT * FROM DVD WHERE codigo = 103;

-- Atividade Extra 

CREATE TABLE depto (

numDep NUMBER(2) PRIMARY KEY,
nomeDep VARCHAR2(15) NOT NULL, 
loc VARCHAR2(10) NOT NULL
);


INSERT INTO depto VALUES (1,'Marketing','Ala 13');
INSERT INTO depto VALUES (2,'Financeira','Ala 13');
INSERT INTO depto VALUES (3,'Produção','Ala 2');
INSERT INTO depto VALUES (4,'Pessoal','Ala 7');
INSERT INTO depto VALUES (5,'Vendas','Ala 13');
INSERT INTO depto VALUES (6,'Contabilidade','Ala 2');
INSERT INTO depto VALUES (7,'Engenharia','Ala 21');
INSERT INTO depto VALUES (8,'Informática','Ala 21');

SELECT numDep as Numerododepartamento, nomeDep as Nomedepartamento, loc as Localizacao FROM depto; 
DESC depto;

SELECT nomeDep as Nome_de_departamentos_cadastrados FROM depto; 
DESC depto;

SELECT numDep as Codigos_de_departamentos_cadastrados FROM depto; 
DESC depto;

SELECT nomeDep as Nomes_de_departamentos_cadastrados, loc as localizacao_de_departamentos_cadastrados FROM depto; 
DESC depto;

SELECT nomeDep as Nomes_de_departamentos_cadastrados FROM depto WHERE loc = 'Ala 2';
DESC depto;

SELECT nomeDep as Nomes_de_departamentos_cadastrados FROM depto WHERE loc = 'Ala 13';
DESC depto;

SELECT nomeDep as Nomes_de_departamentos_cadastrados FROM depto WHERE numDep > '4';
DESC depto;

SELECT nomeDep as Nomes_de_departamentos_cadastrados, loc as Localizacao_de_departamentos_cadastrados FROM depto WHERE numDep = '2';
DESC depto;

SELECT codigo,titulo,preco AS preco_atual, preco * 1.23 AS preco_reajustado,(preco * 1.23) - preco AS diferenca FROM DVD;
SELECT * FROM DVD

