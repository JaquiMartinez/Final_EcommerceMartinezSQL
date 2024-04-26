USE EcommerceMartinez;

-- Crea View ProductosPorCategoria
CREATE VIEW ProductosPorCategoria AS
SELECT p.nombre AS Productos, p.precio AS precio, c.nombre AS Categoria
FROM Productos p
JOIN Categoria c ON p.categoria = c.nombre;

-- Verificación de creación de vista
SELECT * FROM ProductosPorCategoria;