-- apagando banco de dados caso exista
DROP DATABASE IF EXISTS DBEXERCICIO12;
-- criando banco de dados
CREATE DATABASE DBEXERCICIO12;
-- conectando ao banco de dados
USE DBEXERCICIO12;
-- criandos as tabelas
CREATE TABLE PESSOA (
IDPESSOA INT NOT NULL AUTO_INCREMENT
, NOME VARCHAR(120) NOT NULL
, DATA_NASCIMENTO DATE NOT NULL
, PRIMARY KEY (IDPESSOA)
);
CREATE TABLE CIN (
IDCIN INT NOT NULL AUTO_INCREMENT
, CPF CHAR(11) NOT NULL
, DATA_EMISSAO DATE NOT NULL
, IDPESSOA INT NOT NULL UNIQUE -- UNIQUE PORQUE É UMA RELAÇÃO 1:1
, PRIMARY KEY (IDCIN)
, FOREIGN KEY (IDPESSOA) REFERENCES PESSOA (IDPESSOA)
);