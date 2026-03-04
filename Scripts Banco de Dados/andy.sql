create database vinho;

use vinho;

create table usuário(
id int primary key not null auto_increment,
nome varchar (30) not null,
senha varchar (30) not null,
cnpj char(14) not null,
número varchar (9),
email varchar(100),
empresa varchar (40)
);
alter table usuário add constraint chk_senha check(nome >=8 );
