-- Script base de datos
    -- Inserción de datos ficticios en la tabla Estudiantes
        INSERT INTO Estudiantes (Nombre, Edad, FechaIngreso) VALUES
        ('Juan Pérez', 20, '2022-03-15'),
        ('Ana López', 22, '2022-05-21'),
        ('Luis Martínez', 17, '2022-01-11'),
        ('Carmen Ríos', 19, '2022-02-07'),
        ('Carlos Sánchez', 23, '2022-08-25'),
        ('Lucía Fernández', 21, '2022-09-30'),
        ('Diego Alonso', 18, '2022-04-14'),
        ('Isabel Mora', 25, '2022-07-19');
-- Ejercicios
-- 1.
    CREATE TABLE Estudiantes (
        ID INT IDENTITY PRIMARY KEY,
        Nombre VARCHAR(100) NOT NULL,
        Edad INT,
        FechaIngreso DATE
    );
-- 2. 
    CREATE VIEW VistaEstudiantes AS
        SELECT Nombre, Edad
        FROM Estudiantes
        WHERE Edad > 18;

-- 3.
    CREATE INDEX idx_Edad
        ON Estudiantes (Edad);