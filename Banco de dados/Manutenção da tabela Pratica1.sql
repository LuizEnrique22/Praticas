--Manutenção de tabela 

CREATE TABLE Funcionario(

codFunc	 NUMBER(3) PRIMARY KEY, 
nomeFunc VARCHAR2(50) NOT NULL,
salario  NUMBER(10,2) NOT NULL); 

ALTER TABLE Funcionario ADD telFunc NUMBER(12) NOT NULL;

ALTER TABLE Funcionario MODIFY nomeFunc VARCHAR2(70);

ALTER TABLE Funcionario MODIFY telFunc Number(12);

ALTER TABLE Funcionario MODIFY salario Number NULL;

ALTER TABLE Funcionario ADD Email VARCHAR2(30);

ALTER TABLE Funcionario RENAME COLUMN salario TO sal;

RENAME Funcionario to Colaborador;

ALTER TABLE Colaborador ADD Idade NUMBER(2) CHECK (idade >= 16);

ALTER TABLE Colaborador ADD datadeadmissao DATE DEFAULT SYSDATE;

ALTER TABLE Colaborador DROP COLUMN telFunc;

DROP TABLE Colaborador;
