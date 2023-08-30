-- #####
-- * *****
-- * File: create-table-piloto.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 12:31:32
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:07:07
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············ Cria a tabela Piloto
-- * *****
-- #####
-- @block Bookmarked query
-- @group BD2 Guiliano
-- @name Create Piloto
CREATE TABLE Piloto (
    idPiloto INTEGER NOT NULL,
    nomePiloto VARCHAR(50),
    QtdeHorasVoo INTEGER NOT NULL,
    PRIMARY KEY(idPiloto),
    check (QtdeHorasVoo >= 10)
);