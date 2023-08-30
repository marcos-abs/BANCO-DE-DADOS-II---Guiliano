-- #####
-- * *****
-- * File: select-cidade.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 14:38:24
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:40:25
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
-- @name select-cidade-1
select idcid,
    nomecid,
    ufcid
from cidade;
--
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name select-cidade-2
select idcid,
    nomecid,
    ufcid
from cidade
where idcid = 1;