-- apagando o banco de dados caso exista
drop database if exists bdexercicio03;

-- criando banco de dados
create database dbexercicio03;

-- conectando no banco de dados
use dbexercicio03;

-- criando tabelas
create table usuario (
idusuario int not null
, nome varchar(60) not null
, sobrenome varchar(60) not null
, email varchar(150) not null unique
, senha varchar(50) not null
, cpf char(11) not null unique
, primary key (idusuario)
);