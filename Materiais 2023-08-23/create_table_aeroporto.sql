-- #####
-- * *****
-- * File: create_table_aeroporto.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 11:47:45
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 12:16:43
-- * Modified By: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Copyright (c) 2023 All rights reserved, Marcos Antônio Barbosa de Souza
-- * -----
-- * Description:
-- * ············ Criação da tabela Aeroporto
-- * *****
-- #####
CREATE TABLE Aeroporto (
    idAer INTEGER NOT NULL,
    idCid INTEGER NOT NULL,
    nomeAer VARCHAR(30),
    PRIMARY KEY(idAer),
    FOREIGN KEY(idCid) REFERENCES Cidade(idCid)
);