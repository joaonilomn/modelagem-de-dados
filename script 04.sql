-- apagando o banco de dados caso exista
drop database if exists bdexercicio04;

-- criando banco de dados
create database dbexercicio04;

-- conectando no banco de dados
use dbexercicio04;

-- criando tabelas
create table usuario (
idusuario int not null
, nome varchar(60) not null
, sobrenome varchar(60) not null
, email varchar(150) not null unique
, senha varchar(50) not null
, celular varchar(15) not null
, datanascimento date
, sexo char(1) 
, primary key (idusuario)
);