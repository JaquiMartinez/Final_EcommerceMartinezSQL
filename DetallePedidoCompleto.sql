USE EcommerceMartinez;

-- Crea la vista "DetallePedidoCompleto".
CREATE VIEW DetallePedidoCompleto AS
SELECT dp.idDetallePedidos , p.nombre AS Producto, dp.cantidad, dp.precio_unitario, dp.cantidad * dp.precio_unitario AS Total
FROM DetallePedidos dp
JOIN Productos p ON dp.idProductos  = p.idProductos ;


-- Verificación de creación de vista
SELECT * FROM DetallePedidoCompleto ;
