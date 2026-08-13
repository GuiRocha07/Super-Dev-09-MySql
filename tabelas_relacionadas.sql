DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca;

USE biblioteca;

-- categoria é nx1, pois a categoria tem varios livros
CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária(PK) da tabela de categorias
    nome VARCHAR(50) NOT NULL
);

-- livro é 1xn, pois o livro tem uma categoria
CREATE TABLE livros(
    id INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária (pk)
    nome VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    -- chave estrangeira (fk), relacionamento com chave primaria (pk) de outra tabela
    FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);

INSERT INTO categorias (nome) VALUES
("Crítica"), -- 1
("Comédia"), -- 2
("Aventura"), -- 3
("Motivação"); --4


SELECT id, nome FROM categorias;
SELECT id, nome, id_categoria FROM livros;

INSERT INTO livros (nome, id_categoria) VALUES
('Evolução dos bichos', 1),
('Big brother e a mentira', 1),
('Diário de um banana', 2),
('Monica', 2),
('Percy jackson 1', 3),
('Hábitos atômicos', 4);

SELECT id, nome FROM categorias;

SELECT
    livros.id,
    livros.nome AS 'Livro',
    categorias.nome AS 'Categoria'
FROM livros
INNER JOIN categorias ON (livros.id_categoria = categorias.id);

/* Criar banco de dados chamado pet_shop

Criar tabela chamada clientes com os campos (id, nome, observacao)
Inserir 4 clientes (registros) na tabela de clientes
Consultar todos os registros
Modificar a tabela de clientes adicionando a coluna de sobrenome
Atualizar todos os registros definindo sobrenome para cada um dos registros
Modificar a tabela de clientes adicionando coluna de telefone
Atualizar todos os registros definindo telefone para cada um dos registros
Consultar todos os registros

Criar tabela especies com os campos (id, nome)
Inserir registros na tabela de especies (Gato, Cachorro, Coelho, Ave)
Consultar todos os registros

Criar tabela de racas com os campos (id, nome, id_especie), lembrar de definir a FK
Inserir duas raças por especie
Consultar todos os registros
Consultar todos os registros apresentando os dados da especie (dica: INNER JOIN)

Criar tabela pets com os campos (nome, data_nascimento DATE, id_cliente, id_raca, lembrar de definir FK)
Inserir no mínimo de 1 pet por raça
Alterar tabela adicionando colunas de sexo (armazenar como f ou m), peso
Atualizar todos os pets com exeção do cachorro definindo o sexo e peso

Consultar todos os pets

Consultar todos os pets apresentando os dados da raca
Consultar todos os pets apresentando os dados da especie
Consultar todos os pets apresentando os dados do cliente
Consultar todos os pets apresentando os dados da raca, especie, cliente

Consultar todos os pets que não tem peso definido

*/