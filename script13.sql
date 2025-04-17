-- apagando banco de dados caso exista
DROP DATABASE IF EXISTS DBEXERCICIO13;
-- criando banco de dados
CREATE DATABASE DBEXERCICIO13;
-- conectando ao banco de dados
USE DBEXERCICIO13;
-- criandos as tabelas
CREATE TABLE CLIENTE (
IDCLIENTE INT NOT NULL AUTO_INCREMENT
, NOME VARCHAR(120) NOT NULL
, PRIMARY KEY (IDPESSOA)
);
CREATE TABLE PEDIDO (
IDPRODUTO INT NOT NULL AUTO_INCREMENT
, DTPEDIDO DATE NOT NULL
, PRODUTO VARCHAR(50) NOT NULL
, QTD INT
, IDCLIENTE INT NOT NULL
, PRIMARY KEY (IDPEDIDO)
, FOREIGN KEY (IDCLIENTE) REFERENCES PESSOA (IDCLIENTE)
);