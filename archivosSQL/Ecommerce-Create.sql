-- Creación de base de datos
CREATE DATABASE IF NOT EXISTS EcommerceMartinez;

USE EcommerceMartinez;

-- Creación de tablas
-- Tabla de Productos 
CREATE TABLE Productos 
(idProductos INT AUTO_INCREMENT PRIMARY KEY, 
nombre VARCHAR(80),
descripcion TEXT (150),
precio DECIMAL (10, 2),
categoria ENUM ('Hombre', 'Mujer', 'Niños', 'Otros'),
talles VARCHAR (20),
color TEXT (50)
);

-- Tabla de Clientes
CREATE TABLE Clientes 
(idClientes INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(80),
apellido VARCHAR(80),
email VARCHAR(100),
direccion VARCHAR(100),
ciudad VARCHAR(100),
codigo_postal VARCHAR(100),
pais VARCHAR(80)
);

-- Tabla de Pedidos
CREATE TABLE Pedidos (idPedidos INT AUTO_INCREMENT PRIMARY KEY,
idClientes INT,
fecha_pedido DATE,
forma_pago VARCHAR (60),
estado VARCHAR (60),
FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
);

-- Tabla de almacenamiento de pedidos
CREATE TABLE DetallePedidos (idDetallePedidos 
INT AUTO_INCREMENT PRIMARY KEY,
idPedidos INT,
idProductos INT,
cantidad INT,
precio_unitario DECIMAL (10, 2),
FOREIGN KEY (idPedidos) REFERENCES Pedidos(idPedidos),
FOREIGN KEY (idProductos) REFERENCES Productos(idProductos)
);

-- Tabla de almacenamiento de Stock
CREATE TABLE Inventario 
(idInventario INT AUTO_INCREMENT PRIMARY KEY,
idProductos INT,
cantidad INT,
FOREIGN KEY (idProductos) REFERENCES Productos(idProductos)
);

-- Tabla de Categoría de Zapatillas
CREATE TABLE Categoria (idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (30)
);

-- Tabla de Marcas de zapatillas
CREATE TABLE Marcas (idMarcas INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (30)
);

-- Tabla de Envíos
CREATE TABLE Envios (idEnvios INT AUTO_INCREMENT PRIMARY KEY,
idPedidos INT,
fecha_envios DATE,
direccion_envios VARCHAR(25),
estado_envios VARCHAR (25),
FOREIGN KEY (idPedidos) REFERENCES Pedidos(idPedidos)
);






