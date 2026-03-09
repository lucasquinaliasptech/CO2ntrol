select * from usuario;
select * from endereco;
select * from armazenamento;
select * from sensor;

select * from sensor where date(data_registro) = current_date();
select * from sensor where date(data_registro) between current_date() - 7 and current_date();

select *,
	case
		when nivel_carbono > nivel_carbono_max then 'NÍVEL DE CARBONO ACIMA DO IDEAL'
        when nivel_carbono < nivel_carbono_min then 'NÍVEL DE CARBONO ABAIXO DO IDEAL'
        else 'Nível de carbono dentro do esperado'
	end as status_nivel_carbono
from sensor;

select *,
	case
		when nivel_carbono > nivel_carbono_max then 'NÍVEL DE CARBONO ACIMA DO IDEAL'
        when nivel_carbono < nivel_carbono_min then 'NÍVEL DE CARBONO ABAIXO DO IDEAL'
        else 'Nível de carbono dentro do esperado'
	end as status_nivel_carbono
from sensor where date(data_registro) = current_date();

select *,
	case
		when nivel_carbono > nivel_carbono_max then 'NÍVEL DE CARBONO ACIMA DO IDEAL'
        when nivel_carbono < nivel_carbono_min then 'NÍVEL DE CARBONO ABAIXO DO IDEAL'
        else 'Nível de carbono dentro do esperado'
	end as status_nivel_carbono
from sensor where date(data_registro) between current_date() - 7 and current_date();

select * from armazenamento where tipo = 'FOUDRE';
select * from armazenamento where tipo = 'TANQUE';

select * from armazenamento where capacidade > 10000;
select * from armazenamento where capacidade <= 10000;

select * from armazenamento where utilizacao = 1;
select * from armazenamento where utilizacao = 0;

select * from armazenamento where utilizacao = 0 and capacidade > 10000;