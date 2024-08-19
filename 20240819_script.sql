-- Creación de la base de datos
CREATE DATABASE BD_Estructuradas;
GO

-- Selección de la base de datos
USE BD_Estructuradas;
GO

-- Creación de la tabla Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);
GO

-- Inserción de datos dummy en la tabla Employees
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate)
VALUES 
('John', 'Doe', 'IT', 60000, '2020-01-15'),
('Jane', 'Smith', 'HR', 50000, '2019-03-23'),
('Michael', 'Johnson', 'IT', 75000, '2018-07-10'),
('Emily', 'Davis', 'Finance', 80000, '2017-11-01'),
('Daniel', 'Brown', 'HR', 45000, '2021-02-15'),
('Emma', 'Wilson', 'Finance', 85000, '2019-06-25'),
('Olivia', 'Jones', 'Marketing', 55000, '2020-09-01'),
('Sophia', 'Garcia', 'Marketing', 70000, '2021-12-15');
GO
