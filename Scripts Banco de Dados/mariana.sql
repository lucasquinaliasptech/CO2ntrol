CREATE DATABASE projeto_vinicola;
USE projeto_vinicola;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    rasao_social VARCHAR(50),
    cnpj CHAR(18) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(30) NOT NULL, 
    endereco TEXT NOT NULL,
    data_cadastro DATE
);

CREATE TABLE projeto (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    descricao TEXT NOT NULL,
    num_arduinos INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    localizacao TEXT
);

CREATE TABLE simulador (
    id_s INT PRIMARY KEY,
    id_usuario INT,
    media_litros FLOAT NOT NULL,
    quant_fouders INT NOT NULL,
    perda FLOAT NOT NULL
);
