-- Criando o banco de dados
CREATE DATABASE projeto;

-- Conectando-se ao banco
USE projeto;

-- Criando a tabela cliente
CREATE TABLE cliente(
	nome VARCHAR(50),
    sexo CHAR(1),
    email VARCHAR(100),
    cpf VARCHAR(11),
    telefone VARCHAR(30),
    endereco VARCHAR(100)
);

-- Visualisa as tabelas existentes
SHOW TABLES;

-- Exibe a estrutura da tabela
DESC cliente;

-- Exibe os dados da tabela
SELECT * FROM cliente;

-- Inserir dados omitindo as colunas
INSERT INTO cliente VALUES('Joao', 'M', 'Joao@gmail.com', 988638273, '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO cliente VALUES('Celia', 'F', 'Celia@gmail.com', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO cliente VALUES('Jorge', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS - MG');

-- Inserindo dados selecionando as colunas
INSERT INTO cliente (nome, sexo, endereco, telefone, cpf)
VALUES('Lilian', 'F', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ', '947785696', 887774856);

-- Inserir varios dados de uma vez
INSERT INTO cliente VALUES
('Ana', 'F', 'Ana@gmail.com', 58698564, '953641025', 'PRES  ANTONIO CARLOS - CENTRO - SAO PAULO -SP'),
('Carla', 'F', 'Carla@gmail.com', 15868564, '233641025', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
