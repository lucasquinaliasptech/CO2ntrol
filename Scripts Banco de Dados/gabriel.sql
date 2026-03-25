create database CONTROL;
use CONTROL;
create table vinicolas(
idEmpresa int primary key auto_increment,
NomeEmpresa varchar(100) not null,
CNPJ char(16) not null,
Endereço varchar(200),
Situação_cadastral  varchar(10)
);
alter table vinicolas modify CNPJ varchar(55);
desc vinicolas;

insert vinicolas
values(1, 'Vinícola Aurora','11.111.111/1111-11','Rua', 'Ativa'),
	    (2, 'Vinícola Almadén', '22.222.222/2222-22', 'Rua_santos', 'Ativa'),
      (3, 'Casa Valduga', '33.333.333/3333-33', 'Rua_tetiane', 'Ativa'),
      (4, 'Vinícola Góes', '44.444.444/4444-44', 'Estrada', 'Ativa');

select * from vinicolas;

create table co2(
id_foldre int primary key not null auto_increment,
capacidade_litros varchar(100),
nivel_co2 varchar(2),
condição varchar(50)
);
alter table co2 modify nivel_co2 varchar(4);

insert co2 values
 (1, 1000, '0,4', 'ativo'),
 (2, 5000, '0.3', 'ativo'),
 (3, 5000, '0.0', 'inativo'),
 (4, 2000, '0.3', 'ativo');

select * from co2;

select * from vinicolas where idEMpresa = 1;
select NomeEmpresa from vinicolas;
select CNPJ, Endereço from vinicolas;

select * from co2 where condição = 'ativo';
update co2 set condição = 'ativo' where id_foldre = 3;
update co2 set nivel_co2 = '0.3' where id_foldre = 3;
select * from co2;
