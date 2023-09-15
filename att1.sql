CREATE DATABASE IF NOT EXISTS gerenciamento_bd;

USE gerenciamento_bd;

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(25) NOT NULL
);

-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT, 
    DataPedido DATE NOT NULL,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserção de dados na tabela de Clientes
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES
    ('User', 'user@user.com', '14246791313'),
    ('User 2', 'user2@user.com', '674575231311'),
    ('User 3', 'user3@user.com', '52563656444'),
    ('User 4', 'user4@user.com', '414141453655'),
    ('User 5', 'user5@user.com', '14131414414');

-- Inserção de dados na tabela de Pedidos
INSERT INTO Pedidos (ClienteID, DataPedido, ValorTotal)
VALUES
    (LAST_INSERT_ID(), '2023-09-10', 600.00),
    (LAST_INSERT_ID(), '2023-09-10', 4950.00),
    (LAST_INSERT_ID(), '2023-09-10', 8000.00),
    (LAST_INSERT_ID(), '2023-09-10', 10000.00),
    (lAST_INSERT_ID(), '2023-09-10', 1200.00);

-- Consulta de Clientes
SELECT * FROM Clientes;

-- Consulta de Pedidos
SELECT * FROM Pedidos;

