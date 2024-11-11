-- Creación de la base de datos y las tablas
CREATE DATABASE GestionAcademica;
GO

USE GestionAcademica;
GO

CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    FechaNacimiento DATE,
    Ciudad NVARCHAR(50)
);

CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Especialidad NVARCHAR(50),
    Email NVARCHAR(100)
);

CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Creditos INT,
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
);

CREATE TABLE Inscripciones (
    InscripcionID INT PRIMARY KEY IDENTITY(1,1),
    EstudianteID INT,
    CursoID INT,
    FechaInscripcion DATE,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY IDENTITY(1,1),
    InscripcionID INT,
    Nota DECIMAL(4, 2),
    FechaCalificacion DATE,
    FOREIGN KEY (InscripcionID) REFERENCES Inscripciones(InscripcionID)
);

-- Insertar datos en la tabla Estudiantes
INSERT INTO Estudiantes (Nombre, Apellido, FechaNacimiento, Ciudad) VALUES
('Juan', 'Pérez', '2000-05-15', 'Madrid'),
('Ana', 'García', '1999-08-24', 'Barcelona'),
('Luis', 'Martínez', '2001-11-12', 'Sevilla'),
('Laura', 'López', '2000-02-18', 'Valencia'),
('Carlos', 'Sánchez', '1998-12-07', 'Bilbao'),
('Marta', 'Fernández', '2002-04-25', 'Málaga'),
('David', 'Ruiz', '2000-07-30', 'Zaragoza'),
('Sandra', 'Gómez', '1999-09-10', 'Murcia'),
('Jorge', 'Díaz', '2001-01-20', 'Valladolid'),
('Lucía', 'Ramírez', '2002-03-15', 'Alicante');

-- Insertar datos en la tabla Profesores
INSERT INTO Profesores (Nombre, Apellido, Especialidad, Email) VALUES
('Pedro', 'Domínguez', 'Matemáticas', 'pdominguez@universidad.com'),
('María', 'Santos', 'Física', 'msantos@universidad.com'),
('José', 'Morales', 'Química', 'jmorales@universidad.com'),
('Carmen', 'Vega', 'Biología', 'cvega@universidad.com'),
('Francisco', 'Pérez', 'Historia', 'fperez@universidad.com');

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (Nombre, Creditos, ProfesorID) VALUES
('Álgebra', 4, 1),
('Física General', 5, 2),
('Química Orgánica', 4, 3),
('Biología Celular', 3, 4),
('Historia Moderna', 3, 5),
('Cálculo', 4, 1),
('Mecánica', 5, 2),
('Química Inorgánica', 4, 3),
('Genética', 3, 4),
('Historia Contemporánea', 3, 5);

-- Insertar datos en la tabla Inscripciones
INSERT INTO Inscripciones (EstudianteID, CursoID, FechaInscripcion) VALUES
(1, 1, '2024-09-01'), (1, 2, '2024-09-02'), (1, 3, '2024-09-03'),
(2, 4, '2024-09-01'), (2, 5, '2024-09-02'),
(3, 6, '2024-09-02'), (3, 7, '2024-09-03'), (4, 8, '2024-09-01'),
(5, 9, '2024-09-02'), (6, 10, '2024-09-03'),
(7, 1, '2024-09-01'), (8, 2, '2024-09-02'), (9, 3, '2024-09-03'),
(10, 4, '2024-09-01'), (10, 5, '2024-09-02');

-- Insertar datos en la tabla Calificaciones
INSERT INTO Calificaciones (InscripcionID, Nota, FechaCalificacion) VALUES
(1, 8.5, '2024-10-15'), (2, 9.0, '2024-10-16'), (3, 7.5, '2024-10-17'),
(4, 6.0, '2024-10-18'), (5, 8.0, '2024-10-19'),
(6, 7.8, '2024-10-20'), (7, 6.9, '2024-10-21'), (8, 7.0, '2024-10-22'),
(9, 8.3, '2024-10-23'), (10, 5.5, '2024-10-24'),
(11, 6.5, '2024-10-25'), (12, 8.2, '2024-10-26'), (13, 9.0, '2024-10-27'),
(14, 7.7, '2024-10-28'), (15, 6.8, '2024-10-29');
