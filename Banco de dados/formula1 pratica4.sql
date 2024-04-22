CREATE TABLE Funcio( 
    
idFunc NUMBER(4) PRIMARY KEY,
nomeFunc VARCHAR(30) NOT NULL,
salario NUMBER(7,2) NOT NULL, 
comissao NUMBER(7,2)
    
);

INSERT INTO funcio VALUES (1,'Fernanda Lima',3400.00,600.00);
INSERT INTO funcio VALUES (2,'Vilmar Almeida',4300.00,200.00);
INSERT INTO funcio VALUES (3,'Silvio Santos',4500.00,NULL);  
INSERT INTO funcio VALUES (4,'Paulo Gonçalves',1200.00,640.00);
INSERT INTO funcio VALUES (5,'Lima Duarte',3400.00,670.00);
INSERT INTO funcio VALUES (6,'Ana Paula',8800.00,344.00);
INSERT INTO funcio VALUES (7,'Mauricio Souza',4500.00,NULL);
INSERT INTO funcio VALUES (8,'Victor Lima',3400.00,440.00);
INSERT INTO funcio VALUES (9,'Bento Ribeiro',8200.00,640.00);

-- ATIVIDADES (BETWEEN, IN, IS)

SELECT * FROM funcio WHERE salario BETWEEN 1000.00 AND 4000.0;

SELECT * FROM funcio WHERE salario NOT BETWEEN 5000.00 AND 10000.00;

SELECT nomeFunc as Nome_dos_funcionarios, comissao FROM funcio WHERE comissao IN (200,640); 

SELECT nomeFunc as nome_dos_funcionarios, salario as salario_dos_funcionarios FROM funcio WHERE salario NOT IN (3400.00,4500.00); 

SELECT nomeFunc as nome_dos_funcionarios, comissao FROM funcio WHERE comissao IS NULL; 

SELECT nomeFunc as nome_dos_funcionarios, comissao FROM funcio WHERE comissao IS NOT NULL; 

-- ATIVIDADES (LIKE)

SELECT * FROM funcio WHERE nomeFunc LIKE 'A%';

SELECT * FROM funcio WHERE nomeFunc LIKE '%s';

SELECT * FROM funcio WHERE nomeFunc LIKE '_i%';

SELECT * FROM funcio WHERE nomeFunc NOT LIKE '%i%';

SELECT * FROM funcio WHERE nomeFunc LIKE '%e%' OR nomeFunc LIKE '%u%' ;

SELECT * FROM funcio WHERE nomeFunc LIKE '%e%' AND nomeFunc LIKE '%u%' ;

SELECT * FROM funcio WHERE nomeFunc LIKE '%t_' ;

SELECT * FROM funcio WHERE nomeFunc LIKE '%Lima%' ;

-- Formula 1

CREATE TABLE formula1 (

codPiloto NUMBER(3) PRIMARY KEY,
piloto VARCHAR(30) NOT NULL,
equipe VARCHAR(20) NOT NULL,
pais VARCHAR(20),
numVitoria NUMBER(3),
dataNasc date NOT NULL

    
);

INSERT INTO formula1 VALUES (01,'Lewis Hamilton','Sauber','Inglaterra',33, TO_DATE('07-01-1985','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (02,'Ayrton Senna','Williams','Brasil',41,TO_DATE('21-03-1960','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (03,'Felipe Massa','Williams','Brasil',11,TO_DATE('25-04-1981','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (04,'Carlos Sainz','Toro Rosso','Espanha',NULL,TO_DATE('24-02-1971','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (05,'Emerson Fittipaldi','Copersucar','Brasil',22,TO_DATE('12-12-1946','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (06,'Robert Kubica','Renault','Polonia',NULL,TO_DATE('07-12-1984','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (07,'Sergio Perez','Force India','Mexico',NULL,TO_DATE('26-01-1990','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (08,'Fernando Alonso','Mclaren','Espanha',32,TO_DATE('29-07-1981','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (09,'Nelson Piquet','Benetton','Brasil',23,TO_DATE('17-08-1952','DD-MM-YYYY'));
INSERT INTO formula1 VALUES (10,'Rubens Barrichelo','Williams','Brasil',11,TO_DATE('23-05-1972','DD-MM-YYYY'));

INSERT INTO formula1 VALUES (11,'Nico Rosberg','Mercedes','Alemanha',16,TO_DATE('27-06-1985','DD-MM-YYYY'));

DELETE FROM formula1 WHERE piloto LIKE '%Kubica%';

ALTER TABLE formula1 MODIFY pais NOT NULL;

UPDATE formula1 SET numVitoria = 62, equipe = 'Mercedes' WHERE piloto LIKE '%Lewis Hamilton%'; 

SELECT DISTINCT equipe FROM formula1 ORDER BY equipe ASC;	

SELECT piloto as Nome_dos_pilotos, numVitoria as Numero_de_vitorias FROM formula1 WHERE pais = 'Brasil' ORDER BY numVitoria DESC;	

SELECT piloto FROM formula1 WHERE piloto LIKE '%e%' AND piloto LIKE '%a';

SELECT piloto, (2024-TO_NUMBER(TO_CHAR(dataNasc,'YYYY'))) AS idade FROM formula1 WHERE (2024-TO_NUMBER(TO_CHAR(dataNasc,'YYYY')))> 45 ORDER BY piloto ASC;

SELECT SUM (numVitoria) as Total_Vitorias, SUM (numVitoria)/COUNT(piloto) as Media_Vitorias FROM formula1 WHERE pais = 'Brasil';

SELECT piloto, dataNasc,(TO_NUMBER(TO_CHAR(sysdate,’YYYY’))-TO_NUMBER(TO_CHAR(dataNasc,’YYYY’))) as idade FROM formula1 WHERE (pais = ‘espanha’ or pais = ‘inglaterra’) and NumVitoria >0 ORDER BY (2024-TO_NUMBER(TO_CHAR(dataNasc,’YYYY’)));
