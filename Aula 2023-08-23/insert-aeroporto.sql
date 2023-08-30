-- #####
-- * *****
-- * File: insert-aeroporto.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 14:55:12
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 15:11:47
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············
-- * *****
-- #####
--
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name inserir aeroporto
-- @description inserção de dados na tabela aeroporto
insert into "aeroporto" ("idaer", "idcid", "nomeaer")
values (1, 2, 'Aeroporto Municipal d Anápolis'),
    (2, 2, 'Base Aérea de Anápolis'),
    (3, 4, 'Aeroporto Inter. Sta. Genoveva'),
    (4, 5, 'Aeroporto Inter. Campo Grande'),
    (5, 3, 'Aero.Int. Juscelino Kubitschek');