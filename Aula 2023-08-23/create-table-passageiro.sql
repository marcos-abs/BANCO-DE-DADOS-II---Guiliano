-- #####
-- * *****
-- * File: create-table-passageiro.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 12:38:54
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:08:02
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············
-- * *****
-- #####
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name Create Passageiro
CREATE TABLE Passageiro (
    idPassag INTEGER NOT NULL,
    Voo_idVoo INTEGER NOT NULL,
    nomePassag VARCHAR(50),
    PRIMARY KEY(idPassag),
    FOREIGN KEY(Voo_idVoo) REFERENCES Voo(idVoo)
);