CREATE TABLE depto(

codDepto NUMBER(2) PRIMARY KEY,
nomeDepto VARCHAR(30) NOT NULL

);

INSERT INTO depto VALUES(1,'Compras');
INSERT INTO depto VALUES(2,'Financeiro');
INSERT INTO depto VALUES(3,'Informática');
INSERT INTO depto VALUES(4,'Producao'); 
INSERT INTO depto VALUES(5,'Vendas');


CREATE TABLE func(

idFunc NUMBER(4) PRIMARY KEY,
nomeFunc VARCHAR(30) NOT NULL,
salario NUMBER(7,2) NOT NULL,
comissao NUMBER(7,2),
codDepto NUMBER(2) NOT NULL

);

INSERT INTO func VALUES (1,'Steve Jobs',3400.00,600.00,3);
INSERT INTO func VALUES (2,'Linus Torvalds',4300.00,2000.00,2);
INSERT INTO func VALUES (3,'Blaise Pascal',4500.00,2500.00,1);
INSERT INTO func VALUES (4,'Ada Augusta',1200.00,640.00,3);
INSERT INTO func VALUES (5,'George Boole',2700.00,NULL,4);
INSERT INTO func VALUES (6,'Bill Gates',8000.00,1250.00,5);
INSERT INTO func VALUES (7,'Margaret Hamilton',4500.00,NULL,2);
INSERT INTO func VALUES (8,'Alan Turing',3400.00,440.00,5);
INSERT INTO func VALUES (9,'Grace Hopper',8200.00,640.00,2);


SELECT COUNT(*) AS TOTAL_FUNC FROM Func;

SELECT COUNT(*) AS TOTAL_FUNC FROM Func WHERE codDepto = 3;

SELECT COUNT(codDepto) AS Nome_Departamento FROM depto;

SELECT COUNT(comissao) as Comissao FROM func;

SELECT MAX(salario), MIN(salario) FROM func;

SELECT MAX(comissao) FROM func;

SELECT SUM(salario) AS Total_Salario FROM Func;

SELECT floor(AVG(salario)) as Media_dos_salarios_dos_funcionarios FROM Func;

SELECT SUM(salario) + SUM(COMISSAO) AS "Soma salarios e comissao do departamento de vendas" FROM Func WHERE codDepto = 5;

SELECT MIN(salario) as "Minímo de salarios", MAX(salario) as "Máximo de salarios", floor(AVG(salario)) as "Média de salarios" FROM Func WHERE codDepto = 2;

