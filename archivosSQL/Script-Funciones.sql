USE EcommerceMartinez;

-- 1° función
/* Realiza una consulta para sumar el precio multiplicado por 
la cantidad vendida de ese producto en la tabla Ventas.*/

DELIMITER //

CREATE FUNCTION CalcularTotalVentas(
    p_idProducto INT
) RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total DECIMAL(10,2);
    
    SELECT SUM(precio * cantidad)
    INTO total
    FROM Ventas
    WHERE idProducto = p_idProducto;
    
    RETURN total;
END //

DELIMITER ;

-- 2° función
/* Realiza una consulta para calcular el promedio de los precios de 
los productos en la categoría especificada en la tabla Productos.*/

DELIMITER //

CREATE FUNCTION CalcularPromedioPrecioCategoria(
    p_categoria ENUM('Hombre', 'Mujer', 'Niños', 'Otros')
) RETURNS DECIMAL(10,2)
BEGIN
    DECLARE promedio DECIMAL(10,2);
    
    SELECT AVG(precio)
    INTO promedio
    FROM Productos
    WHERE categoria = p_categoria;
    
    RETURN promedio;
END //

DELIMITER ;