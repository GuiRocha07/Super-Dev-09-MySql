CREATE DATABASE pet_shop;

USE pet_shop;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)NOT NULL,
    observacao VARCHAR(100) NOT NULL
);

INSERT INTO clientes (nome, observacao) VALUES
("Guilherme", "Cliente preferencial"),
("João", "Cliente novo"),
("Maria", "Cliente vip"),
("Gabriela", "Cliente vip");

SELECT id, nome, observacao FROM clientes;

ALTER TABLE clientes ADD sobrenome VARCHAR(50) NOT NULL;

UPDATE clientes SET sobrenome = "Rocha" WHERE id = 1;
UPDATE clientes SET sobrenome = "Silva" WHERE id = 2;
UPDATE clientes SET sobrenome = "Sima" WHERE id = 3;
UPDATE clientes SET sobrenome = "Sima" WHERE id = 4;

ALTER TABLE clientes ADD telefone VARCHAR(20) NOT NULL;

UPDATE clientes SET telefone = "47 99170-3324" WHERE id = 1;
UPDATE clientes SET telefone = "47 98467-8901" WHERE id = 2;
UPDATE clientes SET telefone = "47 99640-9565" WHERE id = 3;
UPDATE clientes SET telefone = "47 99170-9565" WHERE id = 4;

CREATE TABLE especies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO especies (nome) VALUES
("Gato"),
("Cachorro"),
("Coelho"),
("Ave");

SELECT id, nome FROM especies;

CREATE TABLE animais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_especie INT NOT NULL,
    FOREIGN KEY(id_especie) REFERENCES especies(id)
);

INSERT INTO animais (nome, id_especie) VALUES
("Mingau", 1),
("Pipoca", 2),
("Bola", 3),
("Piu-piu", 4);

SELECT a.id, a.nome, e.nome AS especie FROM animais a JOIN especies e ON a.id_especie = e.id;