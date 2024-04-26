USE EcommerceMartinez;

-- El procedimiento actualiza el precio del producto especificado en la tabla Productos.

DELIMITER //

CREATE PROCEDURE ActualizarPrecioProducto(
    IN p_idProductos INT,
    IN p_nuevoprecio DECIMAL(10,2)
)
BEGIN
    UPDATE Productos
    SET precio = p_nuevoprecio
    WHERE idProductos = p_idProductos;
END //

DELIMITER ;

/*El procedimiento actualiza la cantidad de productos 
en inventario para el producto especificado en la tabla Inventario.*/

DELIMITER //

CREATE PROCEDURE ActualizarCantidadInventario(
    IN p_idProducto INT,
    IN p_cantidad INT
)
BEGIN
    UPDATE Inventario
    SET cantidad = p_cantidad
    WHERE idProducto = p_idProducto;
END //

DELIMITER ;

