-- #####
-- * *****
-- * File: create-table-cidade.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 11:59:43
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:08:02
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············ Criação da primeira tabela do banco de dados
-- * *****
-- #####
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name Create Cidade
CREATE TABLE Cidade (
    idCid INTEGER NOT NULL,
    nomeCid VARCHAR(30),
    ufCid VARCHAR(2),
    PRIMARY KEY(idCid)
);