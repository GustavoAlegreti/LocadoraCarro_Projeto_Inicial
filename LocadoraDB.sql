CREATE DATABASE Locadora;
USE Locadora;
CREATE TABLE Usuário (
  CodUsuário int key auto_increment,
  Nome varchar(100),
  RG varchar(13),
  CNH varchar(11),
  DataNasc date,
  Endereço varchar(200) );
SHOW TABLES;
DESC Usuário;
CREATE TABLE Carro (
  CodCarro int key auto_increment,
  Marca varchar(50),
  Modelo varchar(50),
  Ano varchar(4),
  Cor varchar(50),
  NºChassi varchar(50),
  Placa varchar(8) );
DESC Carro;
CREATE TABLE Aluga (
  CodUsuário int,
  CodCarro int,
  DataAlug date,
  Hora time,
  foreign key (CodUsuário)
    references
  Usuário(CodUsuário));
  foreign key (CodCarro)
    references
  Carro(CodCarro));
DESC Aluga;
CREATE TABLE Categoria (
  CodCategoria int key auto_increment,
  Nome varchar(50),
  Descricao varchar(500),
  PreçoDiaria float );
DESC Categoria;
CREATE TABLE HistConserto (
  CodConserto int key auto_increment,
  Dia date,
  Valor float,
  Descrição varchar(200),
  Oficina varchar(200) );
DESC HistConserto
-- adicionar mais caso necessário.