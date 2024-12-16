-- Crear base de datos de práctica
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Crear tabla de Profesores
CREATE TABLE Profesores (
    ProfesorID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100),
    Departamento VARCHAR(100)
);

-- Crear tabla de Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100),
    Edad INT
);

-- Crear tabla de Clases
CREATE TABLE Clases (
    ClaseID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100),
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
);

-- Insertar datos en Profesores
INSERT INTO Profesores (Nombre, Departamento) VALUES
('John Doe', 'Matemáticas'),
('Jane Smith', 'Ciencias'),
('Emily Johnson', 'Humanidades'),
('Alice Brown', 'Artes'),
('Frank Wilson', 'Deportes'),
('Nancy Black', 'Tecnología'),
('Samuel Lee', 'Literatura'),
('Lisa White', 'Ciencias Sociales'),
('David Harris', 'Lenguas'),
('Jessica Long', 'Música');

-- Insertar datos en Estudiantes
INSERT INTO Estudiantes (Nombre, Edad) VALUES
('Carlos Pérez', 20),
('María López', 19),
('Luis Torres', 21),
('Ana Ramírez', 22),
('Pedro Gómez', 18),
('Sofía Morales', 23),
('Jorge Martínez', 21),
('Lucía Hernández', 20),
('Miguel Ángel Navarro', 19),
('Carmen Sánchez', 22),
('Tomás Castillo', 18),
('Valentina Núñez', 21),
('Sebastián Molina', 20),
('Claudia Vega', 22),
('Ricardo Jiménez', 23);

-- Insertar datos en Clases
INSERT INTO Clases (Nombre, ProfesorID) VALUES
('Álgebra', 1),
('Biología', 2),
('Historia', 3),
('Arte Moderno', 4),
('Educación Física', 5),
('Introducción a la Programación', 6),
('Literatura Clásica', 7),
('Sociología', 8),
('Francés Avanzado', 9),
('Teoría Musical', 10);

-- Tabla de inscripciones
CREATE TABLE Inscripciones (
    EstudianteID INT,
    ClaseID INT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (ClaseID) REFERENCES Clases(ClaseID)
);

-- Insertar inscripciones
INSERT INTO Inscripciones (EstudianteID, ClaseID) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10);
