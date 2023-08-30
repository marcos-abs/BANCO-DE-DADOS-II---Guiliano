-- DML de ajustes para os exerícios
insert into agencia 
values('Anápolis','Anápolis',500);
insert into agencia 
values('Rubiataba','Rubiataba',500);
insert into conta 
values(6,'Anápolis',300)



--1) determinar o maior deposito feito em uma conta(listar o valor do maior deposito)
select max(valor) from depositante
--2) determinar o menor deposito feito em uma conta(listar o valor do menor deposito)
select * from depositante
select min(valor) from depositante
--3) determinar a media dos depósitos feito em uma conta
select avg(valor) from depositante
--4) determinar a quantidade de depósitos feitos por agencia(listar nome da agencia e quantidade de depósitos) - fazer produto cartesiano e inner join 
-- ensinar left join 
select a.agencia_nome,count(conta_numero) total_conta
from agencia a
left join conta c
	on c.agencia_nome = a.agencia_nome
group by a.agencia_nome
	

--Uso de IN e NOT IN (
-- listar clientes da cidade de Anápolis e Ceres) usando OR
select * from cliente c 
where c.cliente_cidade = 'Anápolis' or
	c.cliente_cidade = 'Ceres'
	
select * from cliente c 
where c.cliente_cidade not  IN('Anápolis','Ceres','Curitiba')
-- uso do operador in (agora incluir também Curitiba)


-- listar os clientes da cidade da agencia Portão Ensinar subquery)
select count(*) from (
	select * from cliente  c
	where c.cliente_cidade IN (
		select agencia_cidade
		from agencia a 
		where a.agencia_nome='Portão'
	)
) clientes_portao
-- listar os clientes que não moram na cidade da agencia Portão
select * from cliente  c
	where c.cliente_cidade not IN (
		select agencia_cidade
		from agencia a 
		where a.agencia_nome='Portão'
	)


--5) determinar a quantidade de depósitos feitos por agencia e conta 
-- ( listar o nome da agencia, o numero da 
-- conta e a quantidade de depósitos, as agencias sem depósitos deve aparecer)
select a.agencia_nome,c.conta_numero,count(d.valor) total_deposito 
from agencia a
left join conta c
	on c.agencia_nome = a.agencia_nome
left join depositante d
	on d.conta_numero = c.conta_numero
group by a.agencia_nome, c.conta_numero
order by a.agencia_nome, c.conta_numero
--6) determinar o maior deposito feito por conta(listar o nome da agencia, o numero da conta e o valor do maior deposito)
select a.agencia_nome,c.conta_numero,max(d.valor) maior_deposito
from agencia a
left join conta c
	on c.agencia_nome = a.agencia_nome
left join depositante d
	on d.conta_numero = c.conta_numero
group by a.agencia_nome, c.conta_numero
order by a.agencia_nome, c.conta_numero
--7) determinar a media de valor depositado por conta(listar o nome da agencia, o numero da conta e o
-- valor da media deposito)
select a.agencia_nome,c.conta_numero,avg(d.valor) total_deposito 
from agencia a
left join conta c
	on c.agencia_nome = a.agencia_nome
left join depositante d
	on d.conta_numero = c.conta_numero
group by a.agencia_nome, c.conta_numero
order by a.agencia_nome, c.conta_numero
--9) Listar os clientes que não possui depósitos.(listar o nome dos clientes que não fizeram depósitos), fazer com except e com not in, ou not exists
select cliente_nome,cliente_rua, cliente_cidade from cliente
except
select c.cliente_nome,c.cliente_rua, c.cliente_cidade from depositante d
inner join cliente c on c.cliente_nome = d.cliente_nome
-- not in 
select * from cliente c
where c.cliente_nome not in (
	select cliente_nome from depositante
)
-- not exists
select * from cliente c
where not exists (
	select 1
	from depositante d 
	where d.cliente_nome = c.cliente_nome
)
--10) Listar os clientes que fizeram deposito e possui empréstimo( listar o nome dos clientes que fizeram deposito
-- e fizeram um empréstimo também(tem que ter feito os dois) fazer com intersect e com inner join .

--intersect
select cliente_nome from depositante
intersect
select cliente_nome from devedor

--inner join
select dv.cliente_nome from devedor dv
inner join depositante dp on dv.cliente_nome = dp.cliente_nome 

--11) Verificar os clientes que não fizeram nem deposito nem empréstimo(listar o nome dos clientes que 
-- não fizeram nem empréstimo nem depósitos.(fazer com except e com not in)

select cliente_nome from cliente
except
(
	select cliente_nome from devedor dv
	union
	select cliente_nome from depositante dv 
)

--not in
select cliente_nome from cliente c
where cliente_nome not in(
	select cliente_nome from devedor dv
	union
	select cliente_nome from depositante dv 	
)

--12) Listar o nome das cidades que possuem mais de dois clientes
select cliente_cidade, count(*) 
from cliente
group by cliente_cidade
having count(*)>2
--13) Listar o nome das agências que estão em cidades que possuem mais de uma agência.
select agencia_cidade,count(*) from agencia a  group by agencia_cidade
select agencia_cidade from agencia a  group by agencia_cidade having count(*) >1
select agencia_nome from agencia a
where a.agencia_cidade in (
	select agencia_cidade from agencia a  
	group by agencia_cidade having count(*) >1
)
--14) Listar o nome das agencias e a media dos valores dos empréstimos.

select agencia_nome, avg(total)
from emprestimo
group by agencia_nome

--15) listar a conta com maior saldo(pelos depósitos)
 
--caso tenha que mostrar toda a lista da com maior a menor 
select conta_numero, sum(valor) as soma from depositante
group by conta_numero
order by conta_numero desc

--somente a conta com maior saldo
select conta_numero as conta, sum(valor) as valor from depositante
group by conta_numero
order by conta_numero desc
limit 1
















