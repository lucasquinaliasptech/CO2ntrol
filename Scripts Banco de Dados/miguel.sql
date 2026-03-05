create database bd_miguel;

use bd_miguel;

create table usuario (
	cnpj char(14) primary key,
    nome varchar(50) not null,
    razão_social varchar(50) not null,
    senha varchar(50) not null,
    cep int(8) not null,
    numero int not null,
    email varchar(100) not null
);

create table login (
	cnpj char(14),
    senha varchar(50)
);

create table arduino ( -- nome provisório, tabela para a empresa colocar os dados necessarios para nós dela 
	id int primary key auto_increment,
	tipo_de_armazenamento varchar(40),
    capacidade_do_armazenamento int
    );

create table fermentation (
	quantidade decimal(3,2),
    data_registro date,
    hora_registro time
);