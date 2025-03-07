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


