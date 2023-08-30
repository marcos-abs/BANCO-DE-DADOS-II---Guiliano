-- #####
-- * *****
-- * File: alter-table-aeroporto.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 12:21:22
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:08:01
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············ Adiciona a coluna EnderAer na tabela Aeroporto
-- * *****
-- #####
--
-- Primeira versão
-- ALTER TABLE Aeroporto
-- ADD COLUMN EnderAer VARCHAR(80) NULL;
--
-- Segunda versão
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name Create Aeroporto
CREATE TABLE Aeroporto (
    idAer INTEGER NOT NULL,
    idCid INTEGER NOT NULL,
    nomeAer VARCHAR(30),
    PRIMARY KEY(idAer),
    FOREIGN KEY(idCid) REFERENCES Cidade(idCid) ON DELETE CASCADE ON UPDATE CASCADE
);