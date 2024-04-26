USE EcommerceMartinez;

-- Crea la vista ClientesYPedidos.
CREATE VIEW ClientesYPedidos AS
SELECT c.nombre AS Clientes, c.email, p.idPedidos, p.fecha_pedido, p.estado
FROM Clientes c
LEFT JOIN Pedidos p ON c.idClientes = p.idClientes; 

-- Verificación 
SELECT*FROM ClientesYPedidos cy ;