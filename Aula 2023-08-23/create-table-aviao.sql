-- #####
-- * *****
-- * File: create-table-aviao.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 12:37:02
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:08:02
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············ Criar a tabela Avião
-- * *****
-- #####
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name Create Avião
CREATE TABLE Aviao (
    idAviao INTEGER NOT NULL,
    nomeAviao VARCHAR(30),
    modeloAviao VARCHAR(20),
    anoFabrAviao INTEGER,
    PRIMARY KEY(idAviao)
);