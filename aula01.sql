-- Criar banco de dados 
CREATE DATABASE restau_calabresa;

-- Definir qual o banco de dados será utilizado
USE restau_calabresa;

-- Criar a tabela
CREATE TABLE funcionarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

-- Apresentar as Tabelas do banco de dados
SHOW TABLES;

-- Visuarlizar a estrutura da tabela
DESCRIBE funcionarios;

-- Cadastrar um registro na tabela
-- INSERT INTO <nome-tabela> (colunas) VALUES (valores);
INSERT INTO funcionarios(nome) VALUES("Justin Bieber");

-- Consultar os registros da tabela
-- SELECT <colunas> FROM <nome-tabela>;
SELECT id, nome FROM funcionarios;

-- Adicionar uma coluna em uma tabela existente
ALTER TABLE funcionarios ADD COLUMN cargo VARCHAR(30);

--Consultar os registros da tabela
SELECT id, nome, cargo FROM funcionarios;

-- Adicionar coluna data de nascimento
ALTER TABLE funcionarios ADD COLUMN data_nascimento DATE;

-- Adicionar coluna salário
ALTER TABLE funcionarios ADD COLUMN salario DOUBLE;

-- Consultar todas as colunas da tabela funcionarios
SELECT id, nome, cargo, data_nascimento, salario FROM funcionarios;

-- Atualizar dados de um registro na tabela
-- UPDATE <nome-tabela> SET <coluna> = <valor>
UPDATE funcionarios SET cargo = "Garçom" WHERE id = 1;

-- Atualizar mais de uma coluna por vez
UPDATE funcionarios SET data_nascimento = "1990-01-01", salario = 2500.00 WHERE id = 1;

INSERT INTO funcionarios(nome, cargo, data_nascimento, salario) VALUES("Elias da  Silva", "Caixa", "2000-07-12", 1996.50);
INSERT INTO funcionarios(nome, cargo, data_nascimento, salario) VALUES("Victor sem C", "Manobrista", "2012-09-29", 300.50);
INSERT INTO funcionarios(nome, cargo, data_nascimento, salario) VALUES("Peter Souza", "Cozinheiro Junior", "2000-07-12", 6795.30);

-- Consultar todos os registros da tabela funcionarios
SELECT id, nome, cargo, data_nascimento, salario FROM funcionarios;
