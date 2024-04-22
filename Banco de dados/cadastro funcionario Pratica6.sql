CREATE TABLE Funcionario(

codFunc NUMBER(4) PRIMARY KEY,
nomeFunc varchar(30) NOT NULL,
dtadm date NOT NULL,
dtdesl date,
dtnasc date NOT NULL

    
);

INSERT INTO Funcionario VALUES(1, 'Flávia Viana', TO_DATE('10-08-2000','DD-MM-YYYY'),null,TO_DATE('21-10-1983','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(2, 'Paula Fernandes', TO_DATE('18-05-1999','DD-MM-YYYY'),TO_DATE('01-11-2017','DD-MM-YYYY'),TO_DATE('21-10-1983','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(3, 'Ana Angélica', TO_DATE('03-02-2017','DD-MM-YYYY'),null,TO_DATE('13-09-1992','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(4, 'Carlos Gomes', TO_DATE('01-11-2014','DD-MM-YYYY'),null,TO_DATE('04-04-1987','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(5, 'Fernanda Lima', TO_DATE('10-05-2003','DD-MM-YYYY'),TO_DATE('02-03-2017','DD-MM-YYYY'),TO_DATE('03-08-1974','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(6, 'José Soares', TO_DATE('02-04-2004','DD-MM-YYYY'),null,TO_DATE('07-10-1972','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(7, 'Renato Aragão', TO_DATE('06-01-2000','DD-MM-YYYY'),null,TO_DATE('02-03-1983','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(8, 'Paloma Oliveira', TO_DATE('03-01-2000','DD-MM-YYYY'),TO_DATE('04-01-2016','DD-MM-YYYY'),TO_DATE('06-10-1975','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(9, 'Sérgio Cardoso', TO_DATE('08-10-2000','DD-MM-YYYY'),null,TO_DATE('01-09-1962','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(10, 'Silvio Santos', TO_DATE('02-04-2014','DD-MM-YYYY'),null,TO_DATE('02-07-1951','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(11, 'Isis Valverde', TO_DATE('11-05-2016','DD-MM-YYYY'),TO_DATE('17-08-2016','DD-MM-YYYY'),TO_DATE('13-04-1990','DD-MM-YYYY'));

INSERT INTO Funcionario VALUES(12, 'Raul Seixas', TO_DATE('10-05-2002','DD-MM-YYYY'),null,TO_DATE('11-01-1961','DD-MM-YYYY'));

SELECT nomeFunc AS "Nome dos funcionarios" from Funcionario WHERE extract(YEAR FROM dtnasc)=1983;

SELECT nomeFunc AS "Nome dos funcionarios" from Funcionario WHERE extract(YEAR FROM dtdesl)=2016;

SELECT nomeFunc AS "Nome dos funcionarios" from Funcionario WHERE extract(YEAR FROM dtadm)=2000 and extract(MONTH FROM dtadm)=01 ORDER BY nomeFunc ASC;

SELECT nomeFunc as "Nome dos Funcionarios", floor((sysdate - dtnasc)/365) as “Funcionarios com mais de 35 anos” from Funcionario where (sysdate - dtnasc)/365 > 35;

SELECT nomeFunc as "Nome dos Funcionarios", floor(months_between(sysdate,dtadm)/12) as "Funcionarios com mais de 6 anos na empresa" from Funcionario WHERE floor(months_between(sysdate,dtadm)/12) > 6;

SELECT nomeFunc as "Nome dos Funcionarios", floor(months_between(sysdate,dtadm)/12) as "Funcionarios com mais de 6 anos na empresa" from Funcionario WHERE floor(months_between(sysdate,dtadm)/12) < 2;

SELECT nomeFunc AS "Nome dos funcionarios", to_char(dtdesl,'dy-dd/month/yyyy') AS "Data de desligamento" from Funcionario ORDER BY nomeFunc ASC;
