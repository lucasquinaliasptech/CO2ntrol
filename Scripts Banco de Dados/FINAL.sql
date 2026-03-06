create database CO2ntrol;

use CO2ntrol;

create table usuario (
	id int primary key auto_increment,
    nome_fantasia varchar(100),
    razao_social varchar(100) not null,
    cnpj char(14) not null,
    telefone char(11),
    email varchar(100) not null,
    senha varchar(100) not null,
    situacao tinyint check (situacao in (0,1)) not null default 1
);

create table endereco (
	id int primary key auto_increment,
    id_usuario int not null,
    cep char(8) not null,
    logradouro varchar(100) not null,
    numero int,
    complemento varchar(100),
    estado char(2) not null,
    municipio varchar(50) not null
);

create table armazenamento (
	id int primary key auto_increment,
    id_usuario int not null,
    tipo varchar(20) check (tipo in ('FOUDRE', 'TANQUE')) not null,
    capacidade decimal(10,2) not null,
    utilizacao tinyint check (utilizacao in (0,1)) not null
);

create table sensor (
	id int primary key auto_increment,
    id_armazenamento int not null,
    nivel_carbono decimal (10,2),
    nivel_carbono_min decimal(10,2) not null,
    nivel_carbono_max decimal(10,2) not null,
    data_registro datetime default current_timestamp(),
    situacao tinyint check (situacao in (0, 1))
);