DROP SCHEMA EST_CASOII;

CREATE SCHEMA EST_CASOII;

USE EST_CASOII;

CREATE TABLE IF NOT EXISTS PASSAGEIROS (
ID_PASS INT PRIMARY KEY,
NOME_PASS VARCHAR(50) NOT NULL,
CPF_PASS INT,
TELEFONE_PASS VARCHAR(15),
CIDADE_PASS VARCHAR(50) NOT NULL,
ESTADO_PASS VARCHAR(50) NOT NULL,
PAIS_PASS VARCHAR(50) NOT NULL,
NUMRUA_PASS INT,
RUA_PASS VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS AEROPORTOS (
AERO_COD INT PRIMARY KEY,
AERO_NOME VARCHAR(50) NOT NULL,
AERO_LOCAL VARCHAR(100) NOT NULL,
AERO_PAIS VARCHAR(25) NOT NULL,
AERO_LONGITUDE DECIMAL(10, 8),
AERO_LATITUDE DECIMAL(10, 8)
);

CREATE TABLE IF NOT EXISTS AERONAVES (
COD_AERONAVE INT PRIMARY KEY,
AERONAVE_FABRICANTE VARCHAR(30) NOT NULL,
AERONAVE_CAPACIDADE INT,
AERONAVE_ANOFABR DATE NOT NULL,
AERONAVE_MODELO VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS (
ID_FUNC INT PRIMARY KEY,
FUNC_FUNCAO VARCHAR(50) NOT NULL,
FUNC_NOME VARCHAR(45) NOT NULL,
FUNC_DATANASC DATE NOT NULL,
FUNC_TELEFONE VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS VOOS (
COD_VOO INT PRIMARY KEY,
ORIGEM_VOO INT,		
DESTINO_VOO INT,	
DATA_VOO DATE NOT NULL, 
HORA_PARTIDA TIME NOT NULL,
HORA_CHEGADA TIME NOT NULL,
ID_AERONAVES INT NOT NULL,	
CONSTRAINT FK_ORIGEM FOREIGN KEY (ORIGEM_VOO) REFERENCES AEROPORTOS(AERO_COD),
CONSTRAINT FK_DESTINO FOREIGN KEY (DESTINO_VOO) REFERENCES AEROPORTOS(AERO_COD),
CONSTRAINT FK_AERONAVE FOREIGN KEY (ID_AERONAVES) REFERENCES AERONAVES(COD_AERONAVE)
);

CREATE TABLE IF NOT EXISTS EQUIPES (
FNCO_FUNCIONARIOS INT NOT NULL,  
FNCO_VOOS INT NOT NULL,  
PRIMARY KEY(FNCO_FUNCIONARIOS, FNCO_VOOS), 
CONSTRAINT FNC_FK_FUNCIONARIOS FOREIGN KEY (FNCO_FUNCIONARIOS) REFERENCES FUNCIONARIOS(ID_FUNC),
CONSTRAINT FNC_FK_VOOS FOREIGN KEY (FNCO_VOOS) REFERENCES VOOS(COD_VOO)
);

 CREATE TABLE IF NOT EXISTS RESERVAS (
 ID_PASS int,
COD_VOO int,
 CONSTRAINT FK_R_PASSAGEIROS FOREIGN KEY(ID_PASS) REFERENCES PASSAGEIROS(ID_PASS ),
 CONSTRAINT FK_R_VOOS FOREIGN KEY(COD_VOO) REFERENCES VOOS(COD_VOO)
);

#INICIO DAS ALTER TABLES!

ALTER TABLE PASSAGEIROS 
ADD COLUMN EMAIL VARCHAR(50); 

ALTER TABLE PASSAGEIROS 
DROP COLUMN TELEFONE_PASS; 

ALTER TABLE PASSAGEIROS 
MODIFY COLUMN CPF_PASS VARCHAR(14); 

ALTER TABLE PASSAGEIROS 
CHANGE COLUMN RUA_PASS ENDERECO VARCHAR(100);

ALTER TABLE AEROPORTOS 
DROP COLUMN AERO_LONGITUDE; 

ALTER TABLE AEROPORTOS 
MODIFY COLUMN AERO_NOME VARCHAR(100); 

ALTER TABLE AEROPORTOS 
CHANGE COLUMN AERO_LOCAL LOCAL_AEROPORTO VARCHAR(100);

ALTER TABLE AERONAVES 
ADD COLUMN ANO_FABRICACAO INT; 

ALTER TABLE AERONAVES 
DROP COLUMN AERONAVE_CAPACIDADE; 

ALTER TABLE AERONAVES 
MODIFY COLUMN AERONAVE_FABRICANTE VARCHAR(50); 

ALTER TABLE AERONAVES 
CHANGE COLUMN AERONAVE_MODELO MODELO_AERONAVE VARCHAR(50);

ALTER TABLE FUNCIONARIOS 
ADD COLUMN EMAIL VARCHAR(100); 

ALTER TABLE FUNCIONARIOS 
DROP COLUMN FUNC_DATANASC; 

ALTER TABLE FUNCIONARIOS 
MODIFY COLUMN FUNC_TELEFONE VARCHAR(20); 

ALTER TABLE FUNCIONARIOS 
CHANGE COLUMN FUNC_FUNCAO CARGO_FUNCIONARIO VARCHAR(50);

ALTER TABLE VOOS 
ADD COLUMN STATUS_VOO ENUM('agendado', 'cancelado', 'realizado'); 

ALTER TABLE VOOS 
DROP COLUMN HORA_CHEGADA; 

ALTER TABLE VOOS 
MODIFY COLUMN DATA_VOO DATE NOT NULL; 

ALTER TABLE VOOS 
CHANGE COLUMN ORIGEM_VOO AEROPORTO_ORIGEM INT;

ALTER TABLE EQUIPES 
ADD COLUMN NOME_EQUIPE VARCHAR(50); 

ALTER TABLE EQUIPES 
DROP COLUMN FNCO_VOOS; 

ALTER TABLE EQUIPES 
MODIFY COLUMN FNCO_FUNCIONARIOS INT NOT NULL; 

ALTER TABLE EQUIPES 
CHANGE COLUMN FNCO_FUNCIONARIOS ID_FUNCIONARIO INT;

ALTER TABLE RESERVAS 
ADD COLUMN DATA_RESERVA DATE; 

ALTER TABLE RESERVAS 
DROP COLUMN COD_VOO; 

ALTER TABLE RESERVAS 
MODIFY COLUMN ID_PASS INT NOT NULL; 

ALTER TABLE RESERVAS 
CHANGE COLUMN ID_PASS PASSAGEIRO_ID INT;