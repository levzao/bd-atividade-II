CREATE DATABASE IF NOT EXISTS sistema_blog;

USE sistema_blog;

CREATE TABLE IF NOT EXISTS Artigos (
    ArtigoID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(50),
    Conteudo TEXT,  -- Text para receber textos longoss
    DataPublicacao DATE
);

CREATE TABLE IF NOT EXISTS Comentarios (
    ComentarioID INT PRIMARY KEY AUTO_INCREMENT,
    ArtigoID INT,
    FOREIGN KEY(ArtigoID) REFERENCES Artigos(ArtigoID),
    Autor VARCHAR(30),
    Texto TEXT,  -- Text para receber textos longos
    DataComentario DATE
);

-- Inserção de dados aleatórios nos Artigos
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao)
VALUES
    ('Titulo 1', 'Tópico do artigo 1. Este é um artigo interessante sobre um tópico específico.', '2019-04-07'),
    ('Titulo 2', 'Tópico do artigo 2. Neste artigo, discutimos várias ideias.', '2019-11-01'),
    ('Titulo 3', 'Tópico do artigo 3. Aqui está outra história interessante.', '2020-02-15'),
    ('Titulo 4', 'Tópico do artigo 4. Este artigo aborda um tópico importante.', '2020-04-30'),
    ('Titulo 5', 'Tópico do artigo 5. Último artigo da série.', '2021-11-30');

-- Inserção de dados aleatórios nos Comentarios
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario)
VALUES
    (1, 'Autor 1', 'Comentario no artigo 1. Concordo.', '2019-04-08'),
    (2, 'Autor 2', 'Comentario no artigo 2. Gostei.', '2019-11-02'),
    (3, 'Autor 3', 'Comentario no artigo 3. Muito bom.', '2020-02-16'),
    (4, 'Autor 4', 'Comentario no artigo 4. Esperando esse final.', '2020-04-30'),
    (5, 'Autor 5', 'Comentario no artigo 5. Encerramento fantástico.', '2021-11-30');

-- Consulta de Artigos
SELECT * FROM Artigos;

-- Consulta de Comentarios
SELECT * FROM Comentarios;