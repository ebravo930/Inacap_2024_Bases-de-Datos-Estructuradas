-- Creación de la base de datos
CREATE DATABASE BaseDatosEjemplo;
GO
USE BaseDatosEjemplo;
GO

-- Creación de tablas con PRIMARY KEY IDENTITY
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL
);

CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL,
    Apellido NVARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2),
    DepartamentoID INT,
    CONSTRAINT FK_Empleados_Departamentos FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

CREATE TABLE Proyectos (
    ProyectoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Presupuesto DECIMAL(10, 2)
);

CREATE TABLE Asignaciones (
    AsignacionID INT PRIMARY KEY IDENTITY(1,1),
    EmpleadoID INT,
    ProyectoID INT,
    HorasTrabajadas INT,
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);

-- Inserción de datos dummy
INSERT INTO Departamentos (Nombre) VALUES
('Recursos Humanos'),
('TI'),
('Finanzas'),
('Marketing'),
('Operaciones');

INSERT INTO Empleados (Nombre, Apellido, Salario, DepartamentoID) VALUES
('Carlos', 'Perez', 55000, 1),
('Ana', 'Gomez', 62000, 2),
('Luis', 'Ramirez', 58000, 3),
('Beatriz', 'Lopez', 47000, 4),
('Fernando', 'Martinez', 53000, 5),
('Maria', 'Hernandez', 60000, 1),
('Juan', 'Jimenez', 68000, 2),
('Claudia', 'Morales', 45000, 3),
('Pedro', 'Torres', 49000, 4),
('Sofia', 'Castro', 72000, 5),
('Alejandro', 'Navarro', 52000, 1),
('Luisa', 'Ortega', 61000, 2),
('Jorge', 'Santos', 65000, 3),
('Gabriela', 'Diaz', 75000, 4),
('Lucia', 'Mendez', 73000, 5);

INSERT INTO Proyectos (Nombre, Presupuesto) VALUES
('Proyecto A', 100000),
('Proyecto B', 150000),
('Proyecto C', 200000),
('Proyecto D', 120000),
('Proyecto E', 90000),
('Proyecto F', 110000),
('Proyecto G', 130000),
('Proyecto H', 140000),
('Proyecto I', 160000),
('Proyecto J', 170000),
('Proyecto K', 180000),
('Proyecto L', 105000),
('Proyecto M', 115000),
('Proyecto N', 125000),
('Proyecto O', 75000);

INSERT INTO Asignaciones (EmpleadoID, ProyectoID, HorasTrabajadas) VALUES
(1, 1, 30),
(2, 1, 45),
(3, 2, 20),
(4, 2, 50),
(5, 3, 35),
(6, 4, 40),
(7, 5, 25),
(8, 6, 55),
(9, 7, 60),
(10, 8, 30),
(11, 9, 40),
(12, 10, 45),
(13, 11, 20),
(14, 12, 35),
(15, 13, 50);