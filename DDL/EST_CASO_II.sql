#CRIANDO O BANCO DE DADOS
CREATE SCHEMA EC2_SI1N;

#SELECIONANDO O BANCO DE DADOS
USE EC2_SI1N;

#CRIANDO TABELAS DAS ENTIDADES SEM CHAVE ESTRANGEIRA

#CRIANDO TABELA PASSAGEIROS
CREATE TABLE IF NOT EXISTS PASSAGEIROS
(
PASS_CPF VARCHAR(11) PRIMARY KEY NOT NULL,
PASS_NOME VARCHAR(45) NOT NULL,
PASS_TELEFONE VARCHAR(15) NOT NULL,
PASS_EMAIL VARCHAR(45) NOT NULL
);

#CRIANDO TABELA AEROPORTOS
CREATE TABLE IF NOT EXISTS AEROPORTOS
(
AEROPORTO_COD INT PRIMARY KEY,
AEROPORTO_NOME VARCHAR(45) NOT NULL,
AEROPORTO_LOCAL VARCHAR(45) NOT NULL,
AEROPORTO_PAIS VARCHAR(45) NOT NULL,
AEROPORTO_LONGITUDE VARCHAR(45) NOT NULL,
AEROPORTO_LATITUDE VARCHAR(45) NOT NULL
);

#CRIANDO TABELA AERONAVES
CREATE TABLE IF NOT EXISTS AERONAVE
(
AERONAVE_PREFIXO INT PRIMARY KEY,
AERONAVE_MODELO VARCHAR(45) NOT NULL,
AERONAVE_LOCAL VARCHAR(45) NOT NULL,
AERONAVE_PAIS VARCHAR(45) NOT NULL,
AERONAVE_CAPICIDADE INT,
AERONAVE_FABRICANTE VARCHAR(45) NOT NULL
);

#CRIANDO TABELA FUNCIONARIOS
CREATE TABLE IF NOT EXISTS FUNCIONARIUOS
(
FUNC_ID INT PRIMARY KEY,
FUNC_FUNCAO VARCHAR(45) NOT NULL,
FUNC_NOME VARCHAR(45) NOT NULL,
FUNC_DATANASC VARCHAR(10) NOT NULL,
FUNC_TELEFONE VARCHAR(15) NOT NULL
);

#CRIANDO TABELA DAS ENTIDADES COM CHAVE ESTRANGEIRA

#CRIANDO TABELA VOOS
CREATE TABLE IF NOT EXISTS VOOS
(
VOO_CODIGO INT PRIMARY KEY,
DATA_HORA_ORIGEM DATE NOT NULL,
DATA_HORA_DESTINO DATE NOT NULL,
AEROPORTO_ORIGEM INT, #CHAVE ESTRAGEIRA DA ENTIDADE AEROPORTOS
FOREIGN KEY (AEROPORTO_ORIGEM) REFERENCES AEROPORTOS(AEROPORTO_COD), #REFENCIA DA CHAVE ESTRAGEIRA AEROPORTO ORIGEM
AEROPORTO_DESTINO INT, #CHAVE ESTRANGEIRA DA ENTIDADE AEROPORTOS
FOREIGN KEY (AEROPORTO_DESTINO) REFERENCES AEROPORTOS(AEROPORTO_COD), #REFENCIA DA CHAVE ESTRAGEIRA AEROPORTO DESTINO
AERONAVE_PREFIXO INT, #CHAVE ESTRANGEIRA DA ENTIDADE AERONAVES
FOREIGN KEY (AERONAVE_PREFIXO) REFERENCES AERONAVES(AERONAVE_PREFIXO)
);

#CRIANDO AS ENTIDADES ASSOCIATIVAS

#CRIANDO TABELA ASSOCIATIVA RESERVAS
CREATE TABLE IF NOT EXISTS RESERVAS
(
PASS_CPF VARCHAR(11) PRIMARY KEY NOT NULL,
FOREIGN KEY (PASS_CPF) REFERENCES PASSAGEIROS(PASS_CPF),
VOO_CODIGO INT PRIMARY KEY,
FOREIGN KEY (VOO_CODIGO) REFERENCES VOOS(VOO_CODIGO)
);

#CRIANDO TABELA ASSOCIATIVA EQUIPES
CREATE TABLE IF NOT EXISTS EQUIPES
(
FUNC_ID INT PRIMARY KEY,
FOREIGN KEY (FUNC_ID) REFERENCES FUNCIONARIOS(FUNC_ID),
VOO_CODIGO INT PRIMARY KEY,
FOREIGN KEY (VOO_CODIGO) REFERENCES VOOS(VOO_CODIGO)
);
