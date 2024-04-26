USE EcommerceMartinez;

-- Crea la vista "PromedioPreciosProductos"
CREATE VIEW PromedioPreciosProductos AS
SELECT Categoria, AVG(precio) AS PromedioPrecio
FROM Productos
GROUP BY categoria;

-- Verificación de creación de vista
SELECT*FROM PromedioPreciosProductos ppp ;