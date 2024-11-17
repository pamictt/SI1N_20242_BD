ALTER TABLE ALUNOS MODIFY COLUMN CFP VARCHAR(15);

DELETE FROM PAGAMENTOS WHERE COD_PAGAMENTO = 3;
DELETE FROM ALUNOS WHERE COD_ALUNO = 1;
DELETE FROM AULAS_MATRICULAS WHERE COD_AULA_MATRICULA = 4;
DELETE FROM INSTRUTORES WHERE COD_INSTRUTOR = 3;
DELETE FROM PLANOS_TREINAMENTO WHERE COD_PLANO = 2;
DELETE FROM AULAS WHERE COD_AULA = 4;
DELETE FROM MODALIDADES WHERE COD_MODALIDADE = 3;
DELETE FROM MATRICULAS WHERE COD_MATRICULA = 2;
DELETE FROM AULAS_MATRICULAS WHERE COD_AULA_MATRICULA = 2;

UPDATE MODALIDADES SET CAPACIDADE = 18 WHERE COD_MODALIDADE = 4;
UPDATE AULAS SET AULA_CAPACIDADE = 15 WHERE COD_AULA = 3;
UPDATE MATRICULAS SET STATUS = 'Cancelado' WHERE COD_MATRICULA = 1;
UPDATE INSTRUTORES SET INSTRUTOR_TELEFONE = '11999999999' WHERE COD_INSTRUTOR = 2;
UPDATE ALUNOS_AULAS SET COD_AULA = 2 WHERE COD_AULA_ALUNO = 3;
UPDATE PLANOS_TREINAMENTO SET PLANO_OBJETIVO = 'Melhorar resistência e técnica de nado' WHERE COD_PLANO = 2;
UPDATE ALUNOS SET ALUNO_TELEFONE = '11988887777' WHERE COD_ALUNO = 4;
UPDATE PAGAMENTOS SET PAGAMENTO_VALOR = 420.00 WHERE COD_PAGAMENTO = 4;
UPDATE AULAS_MATRICULAS SET COD_MATRICULA = 3 WHERE COD_AULA_MATRICULA = 1;

INSERT INTO ALUNOS (COD_ALUNO, NOME, CPF, DATA_NASCIMENTO, INT_MODALIDADE, ALUNO_TELEFONE, CIDADE_ALN, ESTADO_ALN, PAIS_ALN, NUMRUA_ALN)
VALUES 
(1, 'Carlos Oliveira', 12345678901, '1990-05-15', 'Futebol', '11998765432', 'São Paulo', 'SP', 'Brasil', '1001'),
(2, 'Maria Fernandes', 23456789012, '1992-08-22', 'Natação', '11987654321', 'Rio de Janeiro', 'RJ', 'Brasil', '2002'),
(3, 'Ana Souza', 34567890123, '1985-12-30', 'Tênis', '11976543210', 'Belo Horizonte', 'MG', 'Brasil', '3003'),
(4, 'Pedro Lima', 45678901234, '2000-02-10', 'Vôlei', '11965432109', 'Curitiba', 'PR', 'Brasil', '4004');

INSERT INTO INSTRUTORES (COD_INSTRUTOR, NOME, CPF, INSTRUTOR_TELEFONE, ESPECIALIZACAO, INSTRUTOR_EMAIL)
VALUES 
(1, 'Ricardo Alves', 112233445-56, '1195554444', 'Futebol', 'ricardo@escola.com'),
(2, 'Luana Costa', 223344556-67, '1194443333', 'Natação', 'luana@escola.com'),
(3, 'João Pereira', 334455667-78, '1193332222', 'Tênis', 'joao@escola.com'),
(4, 'Fernanda Lima', 445566778-89, '1192221111', 'Vôlei', 'fernanda@escola.com');

INSERT INTO MODALIDADES (COD_MODALIDADE, NOME, DESCRICAO, CAPACIDADE)
VALUES 
(1, 'Futebol', 'Treinamento de futebol profissional', 20),
(2, 'Natação', 'Aulas de natação para iniciantes e avançados', 15),
(3, 'Tênis', 'Aulas de tênis para todos os níveis', 10),
(4, 'Vôlei', 'Treinamento e prática de vôlei profissional', 12);

INSERT INTO PLANOS_TREINAMENTO (COD_PLANO, ID_ALUNO, ID_INSTRUTOR, DESCRICAO, DATA_CRIACAO, PLANO_OBJETIVO)
VALUES 
(1, 1, 1, 'Plano de treinamento para futebol profissional', '2024-11-01', 'Desenvolver habilidades técnicas e táticas no futebol'),
(2, 2, 2, 'Plano de treinamento para natação avançada', '2024-11-05', 'Aperfeiçoar a técnica de nado e resistência'),
(3, 3, 3, 'Plano de treinamento para tênis competitivo', '2024-11-10', 'Aperfeiçoamento nas técnicas de saque e voleio'),
(4, 4, 4, 'Plano de treinamento para vôlei de praia', '2024-11-15', 'Fortalecer habilidades técnicas para torneios de vôlei');

INSERT INTO AULAS (COD_AULA, ID_MODALIDADE, DATA_AULA, INSTRUTOR_ID, AULA_CAPACIDADE)
VALUES 
(1, 1, '2024-11-01', 1, 20),
(2, 2, '2024-11-02', 2, 15),
(3, 3, '2024-11-03', 3, 10),
(4, 4, '2024-11-04', 4, 12);

INSERT INTO MATRICULAS (COD_MATRICULA, ID_ALUNO, ID_MODALIDADE, DATA_MATRICULA, STATUS)
VALUES 
(1, 1, 1, '2024-11-01', 'Ativo'),
(2, 2, 2, '2024-11-02', 'Ativo'),
(3, 3, 3, '2024-11-03', 'Ativo'),
(4, 4, 4, '2024-11-04', 'Ativo');

INSERT INTO PAGAMENTOS (COD_PAGAMENTO, ID_MATRICULA, PAGAMENTO_VALOR, DATA_PAGAMENTO, STATUS_PAGAMENTO)
VALUES 
(1, 1, 500.00, '2024-11-01', 'Pago'),
(2, 2, 400.00, '2024-11-02', 'Pago'),
(3, 3, 350.00, '2024-11-03', 'Pago'),
(4, 4, 450.00, '2024-11-04', 'Pago');

INSERT INTO ALUNOS_AULAS (COD_AULA_ALUNO, ID_ALUNO, COD_AULA)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

INSERT INTO AULAS_MATRICULAS (COD_AULA_MATRICULA, COD_AULA, COD_MATRICULA)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);