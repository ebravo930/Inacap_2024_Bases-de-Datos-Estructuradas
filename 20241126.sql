-- Crear base de datos
CREATE DATABASE Universidad;
USE Universidad;

-- Tabla: Carreras
CREATE TABLE Carreras (
    CarreraID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Estado TINYINT DEFAULT 1 -- 1 = Activo, 0 = Desactivado
);

INSERT INTO Carreras VALUES
(1, 'Ingeniería', 1), 
(2, 'Medicina', 1), 
(3, 'Derecho', 1), 
(4, 'Enfermería', 1), 
(5, 'Psicología', 1), 
(6, 'Arquitectura', 1);

-- Tabla: Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    FechaIngreso DATE,
    CarreraID INT FOREIGN KEY REFERENCES Carreras(CarreraID),
    Estado TINYINT DEFAULT 1 -- 1 = Activo, 0 = Desactivado
);

INSERT INTO Estudiantes VALUES
(1, 'Carlos', 'Pérez', '2021-03-01', 1, 1),
(2, 'María', 'Gómez', '2022-07-12', 2, 1),
(3, 'Luis', 'Torres', '2020-11-05', 3, 1),
(4, 'Ana', 'Ramírez', '2019-01-15', 4, 1),
(5, 'Pedro', 'López', '2018-06-25', 5, 1),
(6, 'Jorge', 'Hernández', '2021-04-10', 1, 1),
(7, 'Lucía', 'Vargas', '2020-09-14', 6, 1),
(8, 'Miguel', 'Castro', '2017-02-03', 1, 1),
(9, 'Sofía', 'Salinas', '2018-11-25', 5, 1),
(10, 'Tomás', 'Ortiz', '2022-05-16', 2, 1),
(11, 'Carmen', 'Araya', '2020-06-01', 3, 1),
(12, 'Sebastián', 'Fuentes', '2019-12-20', 4, 1),
(13, 'Valentina', 'Morales', '2021-08-10', 6, 1),
(14, 'Ricardo', 'Rojas', '2019-11-30', 1, 1),
(15, 'Claudia', 'Mejías', '2018-03-22', 5, 1);

-- Tabla: Especialidades
CREATE TABLE Especialidades (
    EspecialidadID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Estado TINYINT DEFAULT 1 -- 1 = Activo, 0 = Desactivado
);

INSERT INTO Especialidades VALUES
(1, 'Matemáticas', 1),
(2, 'Historia', 1),
(3, 'Física', 1),
(4, 'Química', 1),
(5, 'Biología', 1),
(6, 'Literatura', 1);

-- Tabla: Profesores
CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Estado TINYINT DEFAULT 1 -- 1 = Activo, 0 = Desactivado
);

INSERT INTO Profesores VALUES
(1, 'Laura', 'Gómez', 1),
(2, 'Miguel', 'Torres', 1),
(3, 'Sergio', 'Castro', 1),
(4, 'Isabel', 'López', 1),
(5, 'Fernando', 'Núñez', 1),
(6, 'Carla', 'Ramírez', 1),
(7, 'Pablo', 'Díaz', 1),
(8, 'Sara', 'Morales', 1),
(9, 'Daniel', 'Leiva', 1),
(10, 'Mariana', 'Carrasco', 1),
(11, 'Alejandro', 'Martínez', 1),
(12, 'Gloria', 'Paredes', 1),
(13, 'Luis', 'Figueroa', 1),
(14, 'Francisca', 'Rivas', 1),
(15, 'Andrés', 'Alarcón', 1);

-- Tabla: Especialidades_Profesores
CREATE TABLE Especialidades_Profesores (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ProfesorID INT FOREIGN KEY REFERENCES Profesores(ProfesorID),
    EspecialidadID INT FOREIGN KEY REFERENCES Especialidades(EspecialidadID)
);

INSERT INTO Especialidades_Profesores VALUES
(1, 1), (1, 2), (2, 3), (3, 4), (4, 5),
(5, 6), (6, 1), (7, 2), (8, 3), (9, 4),
(10, 5), (11, 6), (12, 1), (13, 2), (14, 3);

-- Tabla: Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    ProfesorID INT FOREIGN KEY REFERENCES Profesores(ProfesorID),
    Estado TINYINT DEFAULT 1 -- 1 = Activo, 0 = Desactivado
);

INSERT INTO Cursos VALUES
(1, 'Cálculo', 1, 1),
(2, 'Historia Universal', 2, 1),
(3, 'Mecánica Clásica', 3, 1),
(4, 'Química General', 4, 1),
(5, 'Biología Molecular', 5, 1),
(6, 'Literatura Contemporánea', 6, 1);

-- Tabla: Inscripciones
CREATE TABLE Inscripciones (
    InscripcionID INT PRIMARY KEY,
    EstudianteID INT FOREIGN KEY REFERENCES Estudiantes(EstudianteID),
    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID),
    Año INT,
    Semestre INT
);

INSERT INTO Inscripciones VALUES
(1, 1, 1, 2023, 1), (2, 1, 2, 2023, 1), (3, 1, 3, 2023, 2),
(4, 2, 1, 2023, 1), (5, 2, 2, 2023, 2), (6, 3, 3, 2023, 2),
(7, 3, 4, 2022, 1), (8, 4, 5, 2022, 2), (9, 4, 6, 2023, 1),
(10, 5, 1, 2023, 2), (11, 6, 2, 2022, 1), (12, 6, 3, 2022, 2),
(13, 7, 4, 2023, 1), (14, 7, 5, 2023, 2), (15, 8, 6, 2022, 1),
(16, 8, 1, 2022, 2), (17, 9, 2, 2023, 1), (18, 9, 3, 2023, 2),
(19, 10, 4, 2022, 1), (20, 10, 5, 2022, 2), (21, 11, 6, 2023, 1),
(22, 11, 1, 2023, 2), (23, 12, 2, 2023, 1), (24, 12, 3, 2023, 2);

-- Tabla: Calificaciones
CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    InscripcionID INT FOREIGN KEY REFERENCES Inscripciones(InscripcionID),
    Nota DECIMAL(4, 2) CHECK (Nota BETWEEN 1.0 AND 7.0)
);

INSERT INTO Calificaciones VALUES
(1, 1, 6.5), (2, 2, 5.5), (3, 3, 4.0),
(4, 4, 6.8), (5, 5, 5.0), (6, 6, 4.2),
(7, 7, 7.0), (8, 8, 6.1), (9, 9, 3.5),
(10, 10, 5.5), (11, 11, 4.0), (12, 12, 6.8),
(13, 13, 5.0), (14, 14, 4.2), (15, 15, 6.5),
(16, 16, 5.5), (17, 17, 6.2), (18, 18, 7.0),
(19, 19, 3.8), (20, 20, 4.5), (21, 21, 6.0),
(22, 22, 5.5), (23, 23, 5.7), (24, 24, 6.1),
(25, 1, 6.0), (26, 2, 5.9), (27, 3, 4.8),
(28, 4, 4.5), (29, 5, 6.2), (30, 6, 5.0);
