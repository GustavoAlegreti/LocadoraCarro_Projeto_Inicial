CREATE DATABASE Locadora;
USE Locadora;
CREATE TABLE Usu�rio (
  CodUsu�rio int key auto_increment,
  Nome varchar(100),
  RG varchar(13),
  CNH varchar(11),
  DataNasc date,
  Endere�o varchar(200) );
SHOW TABLES;
DESC Usu�rio;
CREATE TABLE Carro (
  CodCarro int key auto_increment,
  Marca varchar(50),
  Modelo varchar(50),
  Ano varchar(4),
  Cor varchar(50),
  N�Chassi varchar(50),
  Placa varchar(8) );
DESC Carro;
CREATE TABLE Aluga (
  CodUsu�rio int,
  CodCarro int,
  DataAlug date,
  Hora time,
  foreign key (CodUsu�rio)
    references
  Usu�rio(CodUsu�rio));
  foreign key (CodCarro)
    references
  Carro(CodCarro));
DESC Aluga;
CREATE TABLE Categoria (
  CodCategoria int key auto_increment,
  Nome varchar(50),
  Descricao varchar(500),
  Pre�oDiaria float );
DESC Categoria;
CREATE TABLE HistConserto (
  CodConserto int key auto_increment,
  Dia date,
  Valor float,
  Descri��o varchar(200),
  Oficina varchar(200) );
DESC HistConserto
-- adicionar mais caso necess�rio.