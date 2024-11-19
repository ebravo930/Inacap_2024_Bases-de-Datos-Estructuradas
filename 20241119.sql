-- Crear base de datos
CREATE DATABASE TransporteEjercicios;
USE TransporteEjercicios;

-- Tabla: Conductores
CREATE TABLE Conductores (
    ConductorID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    FechaContratacion DATE,
    Licencia NVARCHAR(20)
);

INSERT INTO Conductores VALUES
(1, 'Carlos', 'Pérez', '2015-03-20', 'A12345B'),
(2, 'María', 'Gómez', '2018-07-12', 'B67890C'),
(3, 'Luis', 'Torres', '2020-11-05', 'C54321D'),
(4, 'Ana', 'Ramírez', '2017-01-15', 'D98765E'),
(5, 'Pedro', 'López', '2019-06-25', 'E11223F'),
(6, 'Jorge', 'Hernández', '2016-04-10', 'F45678G'),
(7, 'Lucía', 'Vargas', '2021-09-14', 'G78901H'),
(8, 'Miguel', 'Castro', '2014-02-03', 'H12367I'),
(9, 'Sofía', 'Salinas', '2013-11-25', 'I45689J'),
(10, 'Tomás', 'Ortiz', '2022-05-16', 'J98765K'),
(11, 'Carmen', 'Araya', '2021-06-01', 'K54321L'),
(12, 'Sebastián', 'Fuentes', '2020-12-20', 'L78901M'),
(13, 'Valentina', 'Morales', '2019-08-10', 'M45678N'),
(14, 'Ricardo', 'Rojas', '2018-11-30', 'N12345O'),
(15, 'Claudia', 'Mejías', '2017-03-22', 'O78901P');

-- Tabla: Vehículos
CREATE TABLE Vehiculos (
    VehiculoID INT PRIMARY KEY,
    Placa NVARCHAR(10),
    Tipo NVARCHAR(50),
    Capacidad INT
);

INSERT INTO Vehiculos VALUES
(1, 'ABC123', 'Camión', 2000),
(2, 'DEF456', 'Camioneta', 1500),
(3, 'GHI789', 'Furgón', 1200),
(4, 'JKL012', 'Bus', 50),
(5, 'MNO345', 'Bus', 45),
(6, 'PQR678', 'Camión', 2500),
(7, 'STU901', 'Furgón', 1800),
(8, 'VWX234', 'Camioneta', 1000),
(9, 'YZA567', 'Camión', 3000),
(10, 'BCD890', 'Bus', 55),
(11, 'EFG123', 'Furgón', 1400),
(12, 'HIJ456', 'Camioneta', 1300),
(13, 'KLM789', 'Bus', 60),
(14, 'NOP012', 'Camión', 4000),
(15, 'QRS345', 'Furgón', 1500);

-- Tabla: Rutas
CREATE TABLE Rutas (
    RutaID INT PRIMARY KEY,
    Origen NVARCHAR(50),
    Destino NVARCHAR(50),
    DistanciaKM INT
);

INSERT INTO Rutas VALUES
(1, 'Santiago', 'Valparaíso', 120),
(2, 'Valparaíso', 'Concepción', 400),
(3, 'Concepción', 'Temuco', 250),
(4, 'Temuco', 'Puerto Montt', 300),
(5, 'Puerto Montt', 'Santiago', 1050),
(6, 'Iquique', 'Arica', 300),
(7, 'Arica', 'Antofagasta', 900),
(8, 'Antofagasta', 'Copiapó', 600),
(9, 'Copiapó', 'La Serena', 350),
(10, 'La Serena', 'Valparaíso', 300),
(11, 'Santiago', 'Rancagua', 100),
(12, 'Rancagua', 'Talca', 200),
(13, 'Talca', 'Chillán', 120),
(14, 'Chillán', 'Concepción', 100),
(15, 'Concepción', 'Temuco', 250);

-- Tabla: Viajes
CREATE TABLE Viajes (
    ViajeID INT PRIMARY KEY,
    ConductorID INT FOREIGN KEY REFERENCES Conductores(ConductorID),
    VehiculoID INT FOREIGN KEY REFERENCES Vehiculos(VehiculoID),
    RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
    Fecha DATE,
    Carga NVARCHAR(100),
    Pasajeros INT
);

INSERT INTO Viajes VALUES
(1, 1, 1, 1, '2023-11-01', 'Electrodomésticos', NULL),
(2, 2, 2, 2, '2023-11-02', 'Medicinas', NULL),
(3, 3, 3, 3, '2023-11-03', 'Ropa', NULL),
(4, 4, 4, 4, '2023-11-04', NULL, 30),
(5, 5, 5, 5, '2023-11-05', NULL, 40),
(6, 6, 6, 6, '2023-11-06', 'Muebles', NULL),
(7, 7, 7, 7, '2023-11-07', 'Juguetes', NULL),
(8, 8, 8, 8, '2023-11-08', NULL, 25),
(9, 9, 9, 9, '2023-11-09', NULL, 35),
(10, 10, 10, 10, '2023-11-10', 'Electrónica', NULL),
(11, 11, 11, 11, '2023-11-11', 'Alimentos', NULL),
(12, 12, 12, 12, '2023-11-12', NULL, 20),
(13, 13, 13, 13, '2023-11-13', 'Muebles', NULL),
(14, 14, 14, 14, '2023-11-14', NULL, 40),
(15, 15, 15, 15, '2023-11-15', 'Electrodomésticos', NULL);

-- Tabla: Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Telefono NVARCHAR(15),
    Email NVARCHAR(50)
);

INSERT INTO Clientes VALUES
(1, 'Jorge', 'González', '912345678', 'jorge@gmail.com'),
(2, 'Lucía', 'Fernández', '923456789', 'lucia@gmail.com'),
(3, 'Ricardo', 'Martínez', '934567890', 'ricardo@gmail.com'),
(4, 'Carmen', 'Lara', '945678901', 'carmen@gmail.com'),
(5, 'Sofía', 'Araya', '956789012', 'sofia@gmail.com'),
(6, 'Tomás', 'Vega', '967890123', 'tomas@gmail.com'),
(7, 'María', 'Salazar', '978901234', 'maria@gmail.com'),
(8, 'Carlos', 'Torres', '989012345', 'carlos@gmail.com'),
(9, 'Ana', 'Muñoz', '990123456', 'ana@gmail.com'),
(10, 'Pedro', 'Hernández', '911234567', 'pedro@gmail.com'),
(11, 'Valentina', 'Fuentes', '922345678', 'valentina@gmail.com'),
(12, 'Luis', 'Carrasco', '933456789', 'luis@gmail.com'),
(13, 'Francisca', 'Mendoza', '944567890', 'francisca@gmail.com'),
(14, 'Daniela', 'Rojas', '955678901', 'daniela@gmail.com'),
(15, 'Matías', 'Navarro', '966789012', 'matias@gmail.com');
