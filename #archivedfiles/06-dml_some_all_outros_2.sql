
--1) liste o nome das agencias que tiveram pelo menos um deposito
-- obs: essa consulta pode ser respondida sem o 
-- uso de in(usando apenas produto cartesiano)
select * from agencia a
where a.agencia_nome  IN (
	select distinct agencia_nome 
	from depositante d 
	inner join conta c
		on c.conta_numero = d.conta_numero
)

select * from agencia a
where exists(
	select 1
	from depositante d 
	inner join conta c
		on c.conta_numero = d.conta_numero
	where c.agencia_nome = a.agencia_nome
)

-- listar o nome das agencias que não tem deposito
select * from agencia a
where a.agencia_nome NOT IN (
	select distinct agencia_nome 
	from depositante d 
	inner join conta c
		on c.conta_numero = d.conta_numero
)

select * from agencia a
where not exists(
	select 1
	from depositante d 
	inner join conta c
		on c.conta_numero = d.conta_numero
	where c.agencia_nome = a.agencia_nome
)
--1.1) uma outra forma de usar o in(listando os valores)


	
--3) Listar todas as agencia de anapolis e goiania
select * from agencia 
where agencia_cidade in ('Anápolis', 'Goinânia')
--4) liste o nome e valor de ativos das agencias 
--que não tiverem nenhum deposito
--não é possível fazer com except
select agencia_nome,ativos from agencia
except 
select distinct a.agencia_nome,a.ativos from depositante d inner join conta c 
on c.conta_numero = d.conta_numero
inner join agencia a on a.agencia_nome = c.agencia_nome

select agencia_nome,ativos from agencia
except 
select distinct a.agencia_nome,a.ativos from depositante d inner join conta c 
on c.conta_numero = d.conta_numero
inner join agencia a on a.agencia_nome = c.agencia_nome
-- utilização comparação de conjuntos(some|any)

--5) encontre as agencias que tem ativos maior do que 
-- pelo menos uma agencia da cidade de Anápolis (some)
select * from agencia where 
ativos > some(
select ativos from agencia where agencia_cidade = 'Anápolis'
	)

--simulando sem o uso de some	


--6) encontre as agencias que tem ativos maior do que 
-- qualquer outra agencia da cidade de Anápolis (all)
select * from agencia where 
ativos > all(
select ativos from agencia where agencia_cidade = 'Anápolis'
	)
select * from agencia where agencia_cidade<>'Anápolis'			
--6.1) alternativa sem uso de all
select * from agencia where 
ativos < (
select min(ativos) from agencia where agencia_cidade = 'Anápolis'
	)

-- usando uma subconsulta como uma relação valida

--7) qual a media dos maiores ativos por cidade (uso de subquery)



--Cláusula exist|not exist

--8) Encontre todos as agencias que tiveram pelo menos 
-- um deposito


--9) Encontre todos os clientes que têm uma conta em todas as 
--agências localizadas em Anápolis sem exists.

insert into conta(conta_numero,agencia_nome,saldo)
values(7, 'Anápolis',20)
select * from depositante
insert into depositante(conta_numero, cliente_nome,valor)
values(7,'Tiago Silva',20)



--9.1) alternativa mais simples com exists.
--Encontre todos os clientes que têm uma conta em todas as 
--agências localizadas em Anápolis.


-- Cláusula unique(Não suportada pelo postgres/SQL server)
--10) Encontre todos os clientes que possuem somente uma 
--conta na agência Portão


-- exemplo para simular o unique
	

-- 11) Encontre o saldo médio das agências onde o 
-- saldo médio das contas da agência é maior que US$18.


--11.1)alternativa select agencia_nome, saldo_medio
-- mostrar como renomear as colunas da subquery



--12) Encontrar o maior saldo de conta 
-- entre todas as agências
-- 


-- litar o cliente e o valor total de depositos e  
-- valor total de emprestimos


--- Lista a Agencia(Colunas: nome e ativos),
-- total de valores de emprestio
-- total de valores de deposito
-- caixa, 2000, 100, 200

select * --a.agencia_nome,sum(dv.valor) v_emprestimo 
from agencia a
left join emprestimo e 
	on e.agencia_nome = a.agencia_nome
left join devedor dv
	on dv.emprestimo_numero = e.emprestimo_numero
left join conta c
	on c.agencia_nome=a.agencia_nome
--group by a.agencia_nome

