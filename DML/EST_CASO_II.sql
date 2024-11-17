ALTER TABLE PASSAGEIROS 
MODIFY COLUMN CPF_PASS VARCHAR(11); 

DELETE FROM PASSAGEIROS WHERE ID_PASS = 3;
DELETE FROM AEROPORTOS WHERE AERO_COD = 3;
DELETE FROM AERONAVES WHERE COD_AERONAVE = 3;
DELETE FROM FUNCIONARIOS WHERE ID_FUNC = 3;
DELETE FROM VOOS WHERE COD_VOO = 3;
DELETE FROM EQUIPES WHERE ID_FUNCIONARIO = 3 AND FNCO_VOOS = 3;
DELETE FROM RESERVAS WHERE PASSAGEIRO_ID = 3 AND COD_VOO = 3;


UPDATE PASSAGEIROS SET CIDADE_PASS = 'São José dos Campos', EMAIL = 'joao.silva@novoemail.com' WHERE ID_PASS = 1;
UPDATE AEROPORTOS SET AERO_NOME = 'Aeroporto de Congonhas', LOCAL_AEROPORTO = 'Avenida Washington Luís, São Paulo, SP' WHERE AERO_COD = 1;
UPDATE AERONAVES SET AERONAVE_CAPACIDADE = 200 WHERE COD_AERONAVE = 1;
UPDATE FUNCIONARIOS SET FUNC_NOME = 'Carlos Alberto Lima', FUNC_TELEFONE = '11 91111-1111' WHERE ID_FUNC = 1;
UPDATE VOOS SET STATUS_VOO = 'realizado' WHERE COD_VOO = 2;
UPDATE EQUIPES SET NOME_EQUIPE = 'Equipe de Manutenção' WHERE ID_FUNCIONARIO = 3 AND FNCO_VOOS = 3;
UPDATE RESERVAS SET DATA_RESERVA = '2024-11-10' WHERE PASSAGEIRO_ID = 1 AND COD_VOO = 1;


INSERT INTO PASSAGEIROS (ID_PASS, NOME_PASS, CPF_PASS, CIDADE_PASS, ESTADO_PASS, PAIS_PASS, NUMRUA_PASS, ENDERECO, EMAIL) VALUES
(1, 'João Silva', '12345678900', 'São Paulo', 'SP', 'Brasil', 120, 'Rua das Palmeiras, 120', 'joao.silva@email.com'),
(2, 'Maria Oliveira', '98765432100', 'Rio de Janeiro', 'RJ', 'Brasil', 85, 'Avenida Brasil, 85', 'maria.oliveira@email.com'),
(3, 'Pedro Costa', '11122233344', 'Belo Horizonte', 'MG', 'Brasil', 340, 'Rua da Liberdade, 340', 'pedro.costa@email.com'),
(4, 'Lucia Ferreira', '22233344455', 'Curitiba', 'PR', 'Brasil', 123, 'Rua XV de Novembro, 123', 'lucia.ferreira@email.com'); 

INSERT INTO AEROPORTOS (AERO_COD, AERO_NOME, LOCAL_AEROPORTO, AERO_PAIS, AERO_LATITUDE) VALUES
(1, 'Aeroporto de Guarulhos', 'Avenida Santos Dumont, Guarulhos, SP', 'Brasil', -23.4265),
(2, 'Aeroporto Internacional do Rio de Janeiro', 'Avenida Rio Branco, Rio de Janeiro, RJ', 'Brasil', -22.9113),
(3, 'Aeroporto de Confins', 'Rodovia MG-10, Belo Horizonte, MG', 'Brasil', -19.6247),
(4, 'Aeroporto Internacional de Curitiba', 'Avenida das Torres, Curitiba, PR', 'Brasil', -25.2522); 

INSERT INTO AERONAVES (COD_AERONAVE, AERONAVE_FABRICANTE, AERONAVE_ANOFABR, MODELO_AERONAVE, ANO_FABRICACAO) VALUES
(1, 'Boeing', '2015-03-21', '737-800', 2015),
(2, 'Airbus', '2018-06-11', 'A320', 2018),
(3, 'Embraer', '2020-09-14', 'E195', 2020),
(4, 'Bombardier', '2019-08-05', 'CRJ-900', 2019); 

INSERT INTO FUNCIONARIOS (ID_FUNC, CARGO_FUNCIONARIO, FUNC_NOME, FUNC_TELEFONE, EMAIL) VALUES
(1, 'Piloto', 'Carlos Lima', '11 91234-5678', 'carlos.lima@email.com'),
(2, 'Comissária', 'Ana Souza', '11 98765-4321', 'ana.souza@email.com'),
(3, 'Técnico de Manutenção', 'Roberto Alves', '31 99876-5432', 'roberto.alves@email.com'),
(4, 'Engenheiro de Voo', 'Ricardo Fernandes', '21 98877-6655', 'ricardo.fernandes@email.com');  

INSERT INTO VOOS (COD_VOO, AEROPORTO_ORIGEM, DESTINO_VOO, DATA_VOO, HORA_PARTIDA, STATUS_VOO, ID_AERONAVES) VALUES
(1, 1, 2, '2024-11-10', '08:30:00', 'agendado', 1),
(2, 2, 3, '2024-11-12', '14:45:00', 'realizado', 2),
(3, 3, 1, '2024-11-14', '17:00:00', 'cancelado', 3),
(4, 1, 4, '2024-11-16', '10:00:00', 'agendado', 4); 

INSERT INTO EQUIPES (ID_FUNCIONARIO, FNCO_VOOS, NOME_EQUIPE) VALUES
(1, 1, 'Equipe Aérea 1'),
(2, 2, 'Equipe Aérea 2'),
(3, 3, 'Equipe Técnica'),
(4, 4, 'Equipe de Engenharia');  

INSERT INTO RESERVAS (PASSAGEIRO_ID, COD_VOO, DATA_RESERVA) VALUES
(1, 1, '2024-11-05'),
(2, 2, '2024-11-06'),
(3, 3, '2024-11-07'),
(4, 4, '2024-11-08');  
