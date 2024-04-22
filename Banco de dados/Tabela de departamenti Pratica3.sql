CREATE TABLE DEPT (

idDept NUMBER(2) PRIMARY KEY,
nomeDept VARCHAR(20) NOT NULL,
local  VARCHAR(5) NOT NULL

);

DESC DEPT;

INSERT INTO DEPT VALUES(1,'Marketing','SP');
INSERT INTO DEPT VALUES(2,'Financeiro','SP');
INSERT INTO DEPT VALUES(3,'Informatica','MG');
INSERT INTO DEPT VALUES(4,'Producao','SP');
INSERT INTO DEPT VALUES(5,'Vendas','RJ');
INSERT INTO DEPT VALUES(6,'Compras','MG');
INSERT INTO DEPT VALUES(7,'RH','RJ');
INSERT INTO DEPT VALUES(8,'Almoxarifado','RJ');
INSERT INTO DEPT VALUES(9,'Engenharia','MG');
INSERT INTO DEPT VALUES(10,'Contabilidade','SP');

CREATE TABLE Funcionario(

idFunc NUMBER(2) PRIMARY KEY,
nomeFunc VARCHAR(30) NOT NULL,
cargo VARCHAR(15) NOT NULL,
dataAdm DATE NOT NULL,
salario NUMBER(7,2) NOT NULL,
idDept NUMBER(2) NOT NULL

);
    
INSERT INTO Funcionario VALUES (1, 'Antônio Nunes','Programador', TO_DATE ('2009-10-10','YYYY-MM-DD'), 3400.00, 3);

INSERT INTO Funcionario VALUES (2, 'Vilmar Almeida','Analista', TO_DATE ('2012-01-01','YYYY-MM-DD'), 4300.00, 5);

INSERT INTO Funcionario VALUES (3, 'Rogério Meira','Gerente', TO_DATE ('1999-04-10','YYYY-MM-DD'), 6500.00, 1);

INSERT INTO Funcionario VALUES (4, 'Paulo Gonçalves','Auxiliar', TO_DATE ('2008-02-09','YYYY-MM-DD'), 1200.00, 2);

INSERT INTO Funcionario VALUES (5, 'Mauro Mendes','Gerente', TO_DATE ('1999-06-09','YYYY-MM-DD'), 6400.00, 4);

INSERT INTO Funcionario VALUES (6, 'Ana Paula','Presidente', TO_DATE ('1996-04-09','YYYY-MM-DD'), 9900.00, 5);
INSERT INTO Funcionario VALUES (7, 'Mauricio Souza','Auxiliar', TO_DATE ('2009-02-03','YYYY-MM-DD'), 1500.00, 6);

INSERT INTO Funcionario VALUES (8, 'José Ignácio','Supervisor', TO_DATE ('1997-02-06','YYYY-MM-DD'), 4400.00, 6);

INSERT INTO Funcionario VALUES (9, 'Luis Serra','Programador', TO_DATE ('2010-07-08','YYYY-MM-DD'), 3200.00, 3);

SELECT * FROM Funcionario


SELECT DISTINCT cargo FROM Funcionario ORDER BY cargo ASC;

SELECT idFunc as codigo,nomeFunc as Nome_Funcionario,salario as Salario_dos_Funcionario FROM Funcionario ORDER BY nomeFunc ASC;

SELECT idFunc as codigo,nomeFunc as Nome_Funcionario,salario as Salario_dos_Funcionario FROM Funcionario ORDER BY salario DESC;

SELECT  nomeFunc as Nome_Funcionario,idDept as Codigo_de_Departamento, dataAdm as Data_de_Admissao FROM Funcionario ORDER BY dataAdm;

SELECT DISTINCT  local as Localizacao FROM DEPT ORDER BY local ASC;

SELECT idFunc as Codigo_do_funcionario, nomeFunc as Nome_dos_funcionarios FROM Funcionario WHERE salario > 3000.0 and salario < 5000.0

SELECT idFunc as Codigo_do_funcionario, nomeFunc as Nome_dos_funcionarios, dataAdm as Data_de_Inicio, salario as Salario_dos_gerentes FROM Funcionario WHERE cargo = 'Gerente'

SELECT nomeDept as Departamento_das_empresas FROM DEPT WHERE local = 'SP' or local = 'RJ' ORDER BY nomeDept ASC;
