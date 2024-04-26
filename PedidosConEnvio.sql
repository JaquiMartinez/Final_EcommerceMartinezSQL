USE EcommerceMartinez;

-- Crea la vista "PedidosConEnvio"
CREATE VIEW PedidosConEnvio AS
SELECT pe.idPedidos , pe.fecha_pedido, pe.forma_pago, pe.estado, e.fecha_envios, e.estado_envios
FROM Pedidos pe
LEFT JOIN Envios e ON pe.idPedidos = e.idPedidos ;

-- Verificación de creación de vista
SELECT * FROM PedidosConEnvio pce ;