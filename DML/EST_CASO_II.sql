-- Inserindo dados na tabela PASSAGEIROS
INSERT INTO PASSAGEIROS (NOME, CPF, TELEFONE, ENDERECO, EMAIL) 
VALUES 
('Carlos Silva', '12345678901', '(27) 99999-1234', 'Rua A, 100, Vitória', 'carlos.silva@email.com'),
('Ana Souza', '98765432100', '(27) 99999-5678', 'Avenida B, 200, Vila Velha', 'ana.souza@email.com');

-- Inserindo dados na tabela AEROPORTOS
INSERT INTO AEROPORTOS (CODIGO, NOME, CIDADE, PAIS) 
VALUES 
('VIX', 'Aeroporto Eurico de Aguiar Salles', 'Vitória', 'Brasil'),
('GRU', 'Aeroporto de Guarulhos', 'São Paulo', 'Brasil'),
('JFK', 'John F. Kennedy International Airport', 'Nova York', 'Estados Unidos');

-- Inserindo dados na tabela AERONAVES
INSERT INTO AERONAVES (MODELO, CAPACIDADE) 
VALUES 
('Boeing 737', 180),
('Airbus A320', 160),
('Embraer 190', 110);

-- Inserindo dados na tabela FUNCIONARIOS
INSERT INTO FUNCIONARIOS (NOME, FUNCAO, CPF) 
VALUES 
('João Pereira', 'PILOTO', '12345678900'),
('Maria Oliveira', 'COMISSARIO', '11122233344'),
('Carlos Alberto', 'EQUIPE DE SOLO', '55566677788');

-- Inserindo dados na tabela VOOS
INSERT INTO VOOS (CODIGO, ORIGEM, DESTINO, AERONAVE_ID, HORARIO_PARTIDA, HORARIO_CHEGADA) 
VALUES 
('VIX123', 'VIX', 'GRU', 1, '2024-11-01 08:00:00', '2024-11-01 10:00:00'),
('GRU456', 'GRU', 'JFK', 2, '2024-11-01 22:00:00', '2024-11-02 06:00:00');

-- Inserindo dados na tabela OPERACOES_DE_VOO
INSERT INTO OPERACOES_DE_VOO (VOO_CODIGO, FUNCIONARIO_ID, FUNCAO) 
VALUES 
('VIX123', 1, 'PILOTO'),
('VIX123', 2, 'COMISSARIO'),
('GRU456', 3, 'EQUIPE DE SOLO');

-- Inserindo dados na tabela RESERVAS
INSERT INTO RESERVAS (PASSAGEIRO_ID, VOO_CODIGO, DATA_RESERVA, STATUS) 
VALUES 
(1, 'VIX123', '2024-10-29', 'CONFIRMADA'),
(2, 'GRU456', '2024-10-30', 'CONFIRMADA');

-- Inserindo dados na tabela EQUIPES
INSERT INTO EQUIPES (FUNC_ID, VOO_CODIGO)
VALUES
(1, 'VIX123'),
(3, 'GRU456');

-- Consultando reservas confirmadas com nome do passageiro e código do voo
SELECT 
    P.NOME AS Passageiro, 
    R.VOO_CODIGO AS Voo, 
    R.DATA_RESERVA AS Data 
FROM 
    RESERVAS R 
JOIN 
    PASSAGEIROS P ON R.PASSAGEIRO_ID = P.ID
WHERE 
    R.STATUS = 'CONFIRMADA';

-- Atualizando o status de uma reserva para 'CANCELADA'
UPDATE RESERVAS 
SET STATUS = 'CANCELADA' 
WHERE ID = 1;

-- Removendo uma reserva cancelada
DELETE FROM RESERVAS 
WHERE STATUS = 'CANCELADA';
