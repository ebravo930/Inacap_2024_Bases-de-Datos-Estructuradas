-- Creación de la base de datos y las tablas
CREATE DATABASE GestionEmpleados;
GO

USE GestionEmpleados;
GO

CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Salario DECIMAL(10, 2),
    DepartamentoID INT
);

CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50)
);

CREATE TABLE Proyectos (
    ProyectoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50)
);

CREATE TABLE Asignaciones (
    AsignacionID INT PRIMARY KEY IDENTITY(1,1),
    EmpleadoID INT,
    ProyectoID INT,
    HorasTrabajadas INT,
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (Nombre) VALUES 
('TI'), 
('Ventas'), 
('Recursos Humanos'), 
('Marketing'), 
('Finanzas'),
('Operaciones'),
('Logística');

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (Nombre, Apellido, Salario, DepartamentoID) VALUES
('Juan', 'Pérez', 55000, 1),
('Ana', 'González', 48000, 2),
('Luis', 'Rodríguez', 62000, 1),
('Carlos', 'Sánchez', 50000, 3),
('María', 'López', 58000, 2),
('Lucía', 'Gómez', 72000, 4),
('Jorge', 'Martínez', 49000, 3),
('Laura', 'Díaz', 67000, 5),
('Andrés', 'Fernández', 51000, 1),
('Sofía', 'Torres', 73000, 5),
('Pablo', 'Ramos', 46000, 2),
('Cristina', 'Castro', 61000, 4),
('Manuel', 'Gutiérrez', 53000, 1),
('Andrea', 'Méndez', 57000, 3),
('David', 'Jiménez', 65000, 4),
('Diego', 'Navarro', 60000, 6),
('Elena', 'Vargas', 45000, 7),
('Francisco', 'Rivera', 75000, 1),
('Isabel', 'Ortega', 52000, 5),
('Fernando', 'Cruz', 62000, 2),
('Patricia', 'Mora', 70000, 6),
('Ricardo', 'Soto', 68000, 7),
('Verónica', 'Salas', 64000, 4),
('Oscar', 'Herrera', 54000, 3),
('Claudia', 'Figueroa', 71000, 5);

-- Insertar datos en la tabla Proyectos
INSERT INTO Proyectos (Nombre) VALUES 
('Proyecto A'), 
('Proyecto B'), 
('Proyecto C'), 
('Proyecto D'), 
('Proyecto E'),
('Proyecto F'),
('Proyecto G'),
('Proyecto H'),
('Proyecto I');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (EmpleadoID, ProyectoID, HorasTrabajadas) VALUES
(1, 1, 35), (2, 2, 40), (3, 3, 45), (4, 4, 30), (5, 5, 50),
(6, 1, 25), (7, 2, 60), (8, 3, 20), (9, 4, 55), (10, 5, 33),
(11, 6, 42), (12, 7, 38), (13, 8, 47), (14, 9, 29), (15, 6, 36),
(16, 2, 40), (17, 3, 55), (18, 1, 30), (19, 5, 25), (20, 4, 60),
(21, 9, 35), (22, 7, 45), (23, 8, 50), (24, 6, 48), (25, 9, 28),
(1, 3, 15), (2, 4, 20), (3, 5, 40), (4, 6, 32), (5, 7, 20),
(6, 8, 37), (7, 9, 15), (8, 1, 50), (9, 2, 45), (10, 3, 20);