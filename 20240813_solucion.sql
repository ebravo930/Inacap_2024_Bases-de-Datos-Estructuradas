-- Solución 1: Consulta Avanzada de Estudiantes
SELECT * FROM Estudiantes
WHERE Edad < 25
ORDER BY FechaIngreso ASC;

-- Solución 2: Actualización de Información
UPDATE Estudiantes
SET Edad = Edad + 1
WHERE YEAR(FechaIngreso) < 2023;

-- Solución 3: Eliminar Estudiantes
DELETE FROM Estudiantes
WHERE Edad > 30;

-- Solución 4: Creación de Vistas Complejas
CREATE VIEW VistaEstudiantesActivos AS
SELECT *
FROM Estudiantes
WHERE Edad < 30
ORDER BY Edad DESC;

-- Solución 5: Función para Calcular la Edad Mínima
CREATE FUNCTION fn_EdadMinimaEstudiantes()
RETURNS INT
AS
BEGIN
    DECLARE @edadMinima INT;
    SELECT @edadMinima = MIN(Edad) FROM Estudiantes;
    RETURN @edadMinima;
END;
