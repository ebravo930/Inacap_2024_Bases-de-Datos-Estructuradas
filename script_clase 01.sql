CREATE DATABASE Libreria;

USE Libreria;

SET DATEFORMAT 'YMD'

CREATE TABLE Autores (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Nacionalidad VARCHAR(100)
);

CREATE TABLE Libros (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor_ID INT,
    FOREIGN KEY (Autor_ID) REFERENCES Autores(ID)
);

INSERT INTO Autores (ID, Nombre, Nacionalidad) VALUES
(1, 'Gabriel García Márquez', 'Colombiano'),
(2, 'Mario Vargas Llosa', 'Peruano'),
(3, 'Julio Cortázar', 'Argentino');

INSERT INTO Libros (ID, Titulo, Autor_ID) VALUES
(1, 'Cien años de soledad', 1),
(2, 'La ciudad y los perros', 2),
(3, 'Rayuela', 3);