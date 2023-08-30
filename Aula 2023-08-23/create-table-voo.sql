-- #####
-- * *****
-- * File: create-table-voo.sql
-- * Project: Banco de Dados II - Prof. Guiliano
-- * Path: /home/marcos/.path-shortcuts/bd2
-- * File Created: Wednesday, 30 August 2023 12:40:16
-- * Author: Marcos Antônio Barbosa de Souza (desouza.marcos@uol.com.br)
-- * -----
-- * Last Modified: Wednesday, 30 August 2023 14:07:35
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
-- @name Create Vôo
CREATE TABLE Voo (
    idVoo INTEGER NOT NULL,
    Aeroporto_partida_idAer INTEGER NOT NULL,
    Aeroporto_chegada_idAer INTEGER NOT NULL,
    Aviao_idAviao INTEGER NOT NULL,
    Piloto_idPiloto INTEGER NOT NULL,
    dataVoo DATE NULL,
    PRIMARY KEY(idVoo),
    FOREIGN KEY(Aviao_idAviao) REFERENCES Aviao(idAviao),
    FOREIGN KEY(Piloto_idPiloto) REFERENCES Piloto(idPiloto),
    FOREIGN KEY(Aeroporto_partida_idAer) REFERENCES Aeroporto(idAer),
    FOREIGN KEY(Aeroporto_chegada_idAer) REFERENCES Aeroporto(idAer)
);