CREATE DATABASE IF NOT EXISTS sistema_rh;

USE sistema_rh;

CREATE TABLE IF NOT EXISTS Departamentos (
    DepartamentoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeDepartamento VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Funcionarios (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2), 
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

-- Inserção de dados aleatórios nos Departamentos
INSERT INTO Departamentos (NomeDepartamento)
VALUES
    ('Recursos Humanos'),
    ('Financeiro'),
    ('TI'),
    ('Marketing'),
    ('Vendas');

-- Inserção de dados aleatórios nos Funcionarios
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID)
VALUES
    ('Diogo', 'Gerente de RH', 5500.00, 1),
    ('Kailan', 'Analista de Dados', 4000.00, 2),
    ('Carlos', 'Desenvolvedor Java', 6000.00, 3),
    ('Ana', 'Especialista de Marketing', 4800.00, 4),
    ('Maria', 'Vendedor Sênior', 7000.00, 5);

-- Consulta de Departamentos
SELECT * FROM Departamentos;

-- Consulta de Funcionarios
SELECT * FROM Funcionarios;

-- Enviei a atividade atrasado. Pois não vi a notificação no grupo 'WhatsApp'. Espero que não aja problema.