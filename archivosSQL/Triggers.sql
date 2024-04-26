USE EcommerceMartinez;

/*Por cada inserción en la tabla Productos
este trigger inserta un registro en la tabla RegistroInserciones.*/

DELIMITER //

CREATE TRIGGER DespuesDeInsertarProducto
AFTER INSERT ON Productos
FOR EACH ROW
BEGIN
    INSERT INTO RegistroInserciones (productos_id, fecha)
    VALUES (NEW.idProductos, NOW());
END //

DELIMITER ;


/*Por cada actualización en la tabla Productos este trigger inserta un registro 
en la tabla RegistroActualizaciones que registra el ID del producto actualizado.*/

DELIMITER //

CREATE TRIGGER DespuesDeActualizarProducto
AFTER UPDATE ON Productos
FOR EACH ROW
BEGIN
    INSERT INTO RegistroActualizaciones (producto_id, campo_modificado, nuevo_valor, fecha)
    VALUES (NEW.idProductos, 'precio', NEW.precio, NOW());
END //

DELIMITER ;


