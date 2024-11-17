DELETE FROM CLIENTES WHERE CPF_CLI = 223344556;
DELETE FROM PRODUTOS WHERE ID_PRODUTO = 101;
DELETE FROM FORNECEDORES WHERE ID_FORN = 201;
DELETE FROM ESTOQUE WHERE ID_ESTOQUE = 301;
DELETE FROM VENDA WHERE ID_VENDA = 405;
DELETE FROM PAGAMENTOS WHERE ID_PAGAMENTO = 501;
DELETE FROM CLIENTES_PRODUTOS WHERE ID_CLPR = 601;
DELETE FROM VENDA_PRODUTOS WHERE ID_VENDA = 701 AND ID_PRODUTO = 801;

UPDATE CLIENTES SET NOME_CLI = 'Maria Silva' WHERE CPF_CLI = 123456789;
UPDATE PRODUTOS SET VALOR_PRODUTO = 99.99 WHERE ID_PRODUTO = 101;
UPDATE FORNECEDORES SET EMAIL_FORN = 'fornecedor@empresa.com' WHERE ID_FORN = 201;
UPDATE ESTOQUE SET LOC_PROD_ESTOQUE = 'Ala A, Prateleira 3' WHERE ID_ESTOQUE = 301;
UPDATE VENDA SET PAGAMENTO_VENDA = 500.75 WHERE ID_VENDA = 405;
UPDATE PAGAMENTOS SET STATUS_PAGAMENTO = 'PAGO' WHERE ID_PAGAMENTO = 501;
UPDATE CLIENTES SET NOME_CLI = 'Carlos Eduardo Silva' WHERE CPF_CLI = 123456789;
UPDATE VENDA_PRODUTOS SET QNT_PRODUTO = 10 WHERE ID_VENDA = 701 AND ID_PRODUTO = 801;

INSERT INTO CLIENTES (CPF_CLI, NOME_CLI, NASC_CLI, STATUS_CLI, CIDADE_CLI, ESTADO_CLI, PAIS_CLI, TELEFONE_CLI, ENDERECO_CLI, BAIRRO_CLI) VALUES
(123456789, 'João Souza', '1980-05-15', 'SIM', 'São Paulo', 'SP', 'Brasil', '11987654321', 'Rua ABC, 123', 'Centro'),
(987654321, 'Ana Pereira', '1990-10-20', 'NÃO', 'Rio de Janeiro', 'RJ', 'Brasil', '21987654321', 'Av. Brasil, 456', 'Copacabana'),
(112233445, 'Carlos Oliveira', '1985-03-25', 'SIM', 'Belo Horizonte', 'MG', 'Brasil', '31987654321', 'Rua das Flores, 789', 'Savassi'),
(223344556, 'Luana Costa', '1995-07-30', 'SIM', 'Curitiba', 'PR', 'Brasil', '41987654321', 'Rua do Sol, 321', 'Água Verde'),
(334455667, 'Roberto Lima', '1988-12-05', 'NÃO', 'Porto Alegre', 'RS', 'Brasil', '51987654321', 'Rua dos Pinheiros, 654', 'Moinhos de Vento');

INSERT INTO PRODUTOS (ID_PRODUTO, NOME_PRODUTO, DIMENSOES_PRODUTO, VALOR_PRODUTO, COR_PRODUTO, DESCRICAO_PRODUTO)VALUES
(101, 'Cadeira de Escritório', 1, 250.50, 'Preto', 'Cadeira ergonômica para escritório'),
(102, 'Mesa de Jantar', 2, 500.00, 'Madeira', 'Mesa de jantar de madeira de 6 lugares'),
(103, 'Cama de Casal', 3, 750.00, 'Branca', 'Cama de casal com cabeceira estofada'),
(104, 'Sofá 3 Lugares', 4, 1000.00, 'Cinza', 'Sofá confortável de 3 lugares'),
(105, 'Armário de Cozinha', 5, 350.00, 'Branco', 'Armário de cozinha com 6 portas');

INSERT INTO FORNECEDORES (ID_FORN, CNPJ, ENDERECO_FORN, EMAIL_FORN, CONTATO_FORN, PRODUTO_FORN, DESCRICAO_PRODUTO_FORN) VALUES
(201, '12345678000195', 'Rua do Comércio, 123', 'fornecedor1@empresa.com', 'José Silva', 'Cadeiras', 'Fornecedor de cadeiras e móveis'),
(202, '98765432000187', 'Av. Paulista, 456', 'fornecedor2@empresa.com', 'Maria Oliveira', 'Mesas', 'Fornecedor de mesas de jantar e escritório'),
(203, '45612378000162', 'Rua das Flores, 789', 'fornecedor3@empresa.com', 'Carlos Souza', 'Sofás', 'Fornecedor de sofás e estofados'),
(204, '65432198000193', 'Av. Rio Branco, 321', 'fornecedor4@empresa.com', 'Ana Costa', 'Armários', 'Fornecedor de armários e estantes'),
(205, '32198754000140', 'Rua da Paz, 654', 'fornecedor5@empresa.com', 'João Pereira', 'Camas', 'Fornecedor de camas e colchões');

INSERT INTO ESTOQUE (ID_ESTOQUE, NOME_PRODUTO, LOC_PROD_ESTOQUE, ID_PRODUTO, DATA_RECEBIMENTO) VALUES
(301, 'Cadeira de Escritório', 'Ala A, Prateleira 2', 101, '2024-10-01'), 
(302, 'Mesa de Jantar', 'Ala B, Prateleira 3', 102, '2024-10-02'),
(303, 'Sofá 3 Lugares', 'Ala C, Prateleira 4', 104, '2024-10-05'),
(304, 'Cama de Casal', 'Ala D, Prateleira 2', 103, '2024-10-10'),
(305, 'Armário de Cozinha', 'Ala E, Prateleira 1', 105, '2024-10-12');


INSERT INTO VENDA (ID_VENDA, PRODUTO_VENDA, QNT_PRODUTO_VENDA, ID_CLIENTE, DATA_VENDA, VALOR_TOTAL) VALUES
(401, 101, 2, 123456789, '2024-10-01', 501.00),
(402, 102, 1, 987654321, '2024-10-02', 500.00),
(403, 104, 1, 112233445, '2024-10-03', 1000.00),
(404, 105, 2, 223344556, '2024-10-04', 700.00),
(405, 103, 1, 334455667, '2024-10-05', 750.00);

INSERT INTO PAGAMENTOS (ID_PAGAMENTO, DATA_PAGAMENTO, VALOR_PAGAMENTO, STATUS_PAGAMENTO, TIPO_PAGAMENTO, ID_CLIENTE) VALUES
(501, '2024-10-01', 501.00, 'pago', 'cartao', 123456789),
(502, '2024-10-02', 500.00, 'pendente', 'boleto', 987654321),
(503, '2024-10-03', 1000.00, 'pago', 'dinheiro', 112233445),
(504, '2024-10-04', 700.00, 'pendente', 'cartao', 223344556),
(505, '2024-10-05', 750.00, 'pago', 'boleto', 334455667);

INSERT INTO CLIENTES_PRODUTOS (CPF_CLI, ID_PRODUTO) VALUES
(123456789, 101),
(987654321, 102),
(112233445, 104),
(223344556, 105),
(334455667, 103);


INSERT INTO VENDA_PRODUTOS (ID_VENDA, ID_PRODUTO, QNT_PRODUTO) VALUES
(401, 101, 2),
(402, 102, 1),
(403, 104, 1),
(404, 105, 2),
(405, 103, 1);
