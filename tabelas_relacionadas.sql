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

