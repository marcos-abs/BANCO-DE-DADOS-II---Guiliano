-- CREATE EXTENSION citext; --utilizado para definir extensão que cria tipo que não faz diferença de maiúsculo e minusculo

-- 01) listar as cidades
select * 
from cidade
-- só o nome e o uf
select 
	nome_cid, 
	uf_cid 
from cidade
-- 02) listar os aeroportos (id_aer,nome_aer,nome_cid)
select * from cidade
select 
	 a.id_aer
	,a.nome_aer
	,c.nome_cid
from 	aeroporto	a , 
		cidade 		c
where a.id_cid = c.id_cid
-- 03) listar os aviões (conceito de alias para nome de campos e tabelas)
select 
	 a.id_aviao			as id
	,a.modelo_aviao		as modelo
	,a.ano_fabr_aviao	as ano_fabricacao
	,a.nome_aviao		as nome
from aviao a

--04) Listar os vôos e seus dados:
-- id do vôo, data do vôo, nome do avião,
-- nome do piloto, nome do aeroporto de partida e nome da cidade, 
-- nome do aeroporto de chegada e nome da cidade) 

select 
	 v.id_voo		as id
	,v.data_voo		as data
	,a.nome_aviao	as nome_aviao
	,p.nome_piloto	as piloto
	,ap.nome_aer	as aeroporto_partida
	,cap.nome_cid	as cidade_partida
	,ac.nome_aer	as aeroporto_chegada
	,cac.nome_cid	as cidade_chegada
	--,*
from voo v, aviao a, piloto p, 
	aeroporto ap, cidade cap, 
	aeroporto ac, cidade cac
where 	v.id_aviao 			= a.id_aviao
	and v.id_piloto 		= p.id_piloto	
	and v.id_aer_partida	= ap.id_aer
	and ap.id_cid			= cap.id_cid
	and v.id_aer_chegada	= ac.id_aer
	and ac.id_cid			= cac.id_cid
	and cap.nome_cid		= 'Goiânia'
-- 05) Listar as cidades do estado de 'GO'
select  * from cidade where uf_cid='GO'

-- 06) listar os pilotos com 2000 horas ou mais de vôo
select * from piloto
where qtde_horas_voo >= 2000

-- 07) Listar as cidades que comecem com a Letra A
-- <> -- diferente
select * 
from cidade
where 
	nome_cid like 'A%'

--08) Listar as cidades que contém Goiânia no nome (com e sem acento)
select * 
from cidade
where 
	nome_cid like '%Goi_nia%'


-- 09)Listar os estados que possuem cidade cadastradas
-- exemplo de uso da palavra chave distinct
-- listar os estados que possuem cidade
select distinct uf_cid from cidade

-- listar os estados que possuem cidade em ordem decrescente
select distinct uf_cid from cidade
order by uf_cid desc
select distinct data_voo from voo order by data_voo desc
