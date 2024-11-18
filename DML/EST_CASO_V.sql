-- Inserindo registros na tabela CLIENTES
INSERT INTO CLIENTES (NOME, CPF, DATA_NASCIMENTO, ENDERECO, STATUS_PROGRAMA_FIDELIDADE, EMAIL) VALUES
('João Silva', '12345678901', '1990-05-10', 'Rua A, 123', 'ATIVO', 'joao.silva@email.com'),
('Maria Oliveira', '09876543210', '1985-09-15', 'Avenida B, 456', 'INATIVO', 'maria.oliveira@email.com');

-- Inserindo registros na tabela FORNECEDORES
INSERT INTO FORNECEDORES (NOME, CNPJ, CONTATO, ENDERECO) VALUES
('Fornecedor 1', '12345678000199', 'contato@fornecedor1.com', 'Rua C, 789'),
('Fornecedor 2', '98765432000199', 'contato@fornecedor2.com', 'Avenida D, 101');

-- Inserindo registros na tabela PRODUTOS
INSERT INTO PRODUTOS (NOME, PRECO, QUANTIDADE_ESTOQUE, FORNECEDOR_ID) VALUES
('Produto A', 50.00, 100, 1),
('Produto B', 30.00, 200, 2);

-- Inserindo registros na tabela VENDAS
INSERT INTO VENDAS (DATA, CLIENTE_ID, FORMA_PAGAMENTO) VALUES
('2024-10-01', 1, 'CARTÃO'),
('2024-10-02', 2, 'DINHEIRO');

-- Inserindo registros na tabela ITENS_VENDIDOS
INSERT INTO ITENS_VENDIDOS (VENDA_ID, PRODUTO_ID, QUANTIDADE, PRECO_UNITARIO) VALUES
(1, 1, 2, 50.00), -- Venda 1, Produto A, 2 unidades
(2, 2, 1, 30.00); -- Venda 2, Produto B, 1 unidade

-- Inserindo registros na tabela PAGAMENTOS
INSERT INTO PAGAMENTOS (DATA, VALOR, STATUS, VENDA_ID) VALUES
('2024-10-01', 100.00, 'PAGO', 1),
('2024-10-02', 30.00, 'PENDENTE', 2);

-- Explicações sobre as alterações e remoções

-- Excluindo a coluna CATEGORIA da tabela PRODUTOS
ALTER TABLE PRODUTOS DROP COLUMN CATEGORIA;

-- Modificando o tipo de dados da coluna CONTATO na tabela FORNECEDORES
ALTER TABLE FORNECEDORES MODIFY CONTATO VARCHAR(150);

-- Excluindo a tabela ITENS_VENDIDOS
DROP TABLE IF EXISTS ITENS_VENDIDOS;

-- Adicionando uma restrição UNIQUE em CNPJ na tabela FORNECEDORES
ALTER TABLE FORNECEDORES ADD CONSTRAINT UNIQUE (CNPJ);
