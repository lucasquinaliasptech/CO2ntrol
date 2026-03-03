create database co2ntrol;
use co2ntrol;

create table usuarios (
	id_usuario int primary key auto_increment not null,
	cnpj varchar (14) not null,
	nome_fantasia varchar (60) not null ,
    
	tipo_armazenamento varchar (15)
		constraint chkArmazenamento
        check(tipo_armazenamento in ('Barril', 'Tanque')) not null,
        
	senha char(6) not null
);


create table foudres (
	id_foudre int primary key auto_increment not null,
	capacidade_litros decimal (5,2),
    
	material varchar (30) not null,
		constraint chkMaterial
        check(material in ('Barril', 'Tanque')),
        
	CO2_ideal decimal (3,2)
		constraint chkCO2
		check(CO2_ideal in (CO2_ideal >=0.2 and CO2_ideal <=0.4)) not null,
        
	situacao_foudre char (8)
		constraint chkFoudre
		check(situacao_foudre in ('Ativo', 'Inativo')) not null
);

create table monitoramento (
	id_sistema int primary key auto_increment not null,
    
    situacao_sistema char (8)
		constraint chkMonitoramento
		check(situacao_sistema in ('Ativo', 'Inativo')) not null,
        
	situacao_CO2 char (10)
		constraint chkNivel_CO2
		check(situacao_CO2 in ('Regular', 'Irregular')) not null,
        
	nivel_CO2 decimal (8,2) not null,
	registro_CO2 datetime
);

