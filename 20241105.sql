-- Creación de la base de datos y las tablas
CREATE DATABASE GestionComercial;
GO

USE GestionComercial;
GO

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Email NVARCHAR(100),
    Ciudad NVARCHAR(50)
);

CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Precio DECIMAL(10, 2),
    Categoria NVARCHAR(50)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT,
    FechaPedido DATE,
    MontoTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE DetallesPedido (
    DetalleID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (Nombre, Apellido, Email, Ciudad) VALUES
('Carlos', 'Fernández', 'carlosf@example.com', 'Madrid'),
('Lucía', 'García', 'luciag@example.com', 'Barcelona'),
('Miguel', 'Martínez', 'miguelm@example.com', 'Valencia'),
('Laura', 'López', 'laural@example.com', 'Sevilla'),
('Jorge', 'Rodríguez', 'jorger@example.com', 'Bilbao'),
('Ana', 'Sánchez', 'anas@example.com', 'Málaga'),
('David', 'Pérez', 'davidp@example.com', 'Zaragoza'),
('Sandra', 'González', 'sandrag@example.com', 'Murcia'),
('Andrés', 'Ramírez', 'andresr@example.com', 'Valladolid'),
('Marta', 'Díaz', 'martad@example.com', 'Alicante');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (Nombre, Precio, Categoria) VALUES
('Laptop', 800.00, 'Electrónica'),
('Smartphone', 600.00, 'Electrónica'),
('Tablet', 300.00, 'Electrónica'),
('Silla de Oficina', 150.00, 'Muebles'),
('Escritorio', 200.00, 'Muebles'),
('Auriculares', 50.00, 'Accesorios'),
('Mochila', 40.00, 'Accesorios'),
('Monitor', 120.00, 'Electrónica'),
('Teclado', 30.00, 'Accesorios'),
('Ratón', 25.00, 'Accesorios');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (ClienteID, FechaPedido, MontoTotal) VALUES
(1, '2024-10-01', 850.00),
(2, '2024-10-02', 650.00),
(3, '2024-10-05', 400.00),
(4, '2024-10-06', 250.00),
(5, '2024-10-08', 900.00),
(6, '2024-10-10', 150.00),
(7, '2024-10-12', 780.00),
(8, '2024-10-15', 120.00),
(9, '2024-10-18', 600.00),
(10, '2024-10-20', 500.00);

-- Insertar datos en la tabla DetallesPedido
INSERT INTO DetallesPedido (PedidoID, ProductoID, Cantidad, PrecioUnitario) VALUES
(1, 1, 1, 800.00), (1, 6, 1, 50.00),
(2, 2, 1, 600.00), (2, 9, 2, 25.00),
(3, 3, 1, 300.00), (3, 7, 2, 40.00),
(4, 4, 1, 150.00), (4, 10, 4, 25.00),
(5, 1, 1, 800.00), (5, 8, 1, 120.00),
(6, 5, 1, 150.00),
(7, 3, 2, 300.00), (7, 7, 2, 40.00),
(8, 9, 4, 30.00),
(9, 2, 1, 600.00), (9, 10, 1, 25.00),
(10, 4, 1, 200.00), (10, 6, 1, 50.00);
