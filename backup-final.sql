-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: EcommerceMartinez
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
INSERT INTO `Categoria` VALUES (1,'Hombre'),(2,'Mujer'),(3,'Niños'),(4,'Otros');
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(100) DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'juan','perez','juancho123@outlook.com','Saavedra 123','Caba','1100','Argentina'),(2,'maria','gomez','maria.gomez@gmail.com','San_Martin 54','Santa Fe','3312','Argentina'),(3,'roberto','nuñez','robertnz@yahoo.com','Avenida Córdoba 2231','Cordoba','1234','Argentina'),(4,'florencia','gonzalez','florgon@outlook.com','Pardo 976','Mendoza','1200','Argentina'),(5,'juana','garcia','juana.garcia27@gmail.com','Córdoba 1071','Caba','1100','Argentina'),(6,'daniel','lopez','daniel_lopezz@gmail.com','Belgrano 1100','Resistencia','1243','Argentina'),(7,'osvaldo','laport','laport33@outlook.com','San Juan 768','Neuquen','1122','Argentina'),(8,'elena','walsh','walsh_elena@gmail.com','Corrientes 304','Caba','1100','Argentina'),(9,'gabriel','marquez','gabriel_marquez1@yahoo.com','Avenida San Martin 456','Santa Fe','3312','Argentina'),(10,'luciano','blanco','lu_blanco00@outlook.com','Zuviria 2456','Caba','1100','Argentina'),(11,'gabriela','sabatini','sabatini21@gmail.com','Laprida 3366','Caba','1100','Argentina'),(12,'mirta','legrand','mirta_legrand@hotmail.com','Piedras 934','Cordoba','1234','Argentina'),(13,'alejandro','villalba','ale.villalba01@outlook.com','Argerich 934','Caba','1100','Argentina'),(14,'jaqueline','martinez','jaqui.mz@gmail.com','Delta 1205','Neuquen','1122','Argentina'),(15,'lidia','rodriguez','lidia_ro00@gmail.com','Corrientes 677','Caba','1100','Argentina');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ClientesYPedidos`
--

DROP TABLE IF EXISTS `ClientesYPedidos`;
/*!50001 DROP VIEW IF EXISTS `ClientesYPedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ClientesYPedidos` AS SELECT 
 1 AS `Clientes`,
 1 AS `email`,
 1 AS `idPedidos`,
 1 AS `fecha_pedido`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DetallePedidoCompleto`
--

DROP TABLE IF EXISTS `DetallePedidoCompleto`;
/*!50001 DROP VIEW IF EXISTS `DetallePedidoCompleto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DetallePedidoCompleto` AS SELECT 
 1 AS `idDetallePedidos`,
 1 AS `Producto`,
 1 AS `cantidad`,
 1 AS `precio_unitario`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DetallePedidos`
--

DROP TABLE IF EXISTS `DetallePedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DetallePedidos` (
  `idDetallePedidos` int NOT NULL AUTO_INCREMENT,
  `idPedidos` int DEFAULT NULL,
  `idProductos` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDetallePedidos`),
  KEY `idPedidos` (`idPedidos`),
  KEY `idProductos` (`idProductos`),
  CONSTRAINT `DetallePedidos_ibfk_1` FOREIGN KEY (`idPedidos`) REFERENCES `Pedidos` (`idPedidos`),
  CONSTRAINT `DetallePedidos_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetallePedidos`
--

LOCK TABLES `DetallePedidos` WRITE;
/*!40000 ALTER TABLE `DetallePedidos` DISABLE KEYS */;
INSERT INTO `DetallePedidos` VALUES (1,1,1,1,69859.00),(2,2,2,1,59999.00),(3,3,3,1,69999.99),(4,4,4,2,59999.00),(5,5,5,1,41895.00),(6,6,6,1,69999.99),(7,7,7,1,169999.00),(8,8,8,1,69999.00),(9,9,9,1,69999.99),(10,10,10,2,5999.00),(11,11,11,1,69999.99),(12,12,12,1,41895.00),(13,13,13,1,9599.00),(14,14,14,3,8899.00),(15,15,15,2,9599.00);
/*!40000 ALTER TABLE `DetallePedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Envios`
--

DROP TABLE IF EXISTS `Envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Envios` (
  `idEnvios` int NOT NULL AUTO_INCREMENT,
  `idPedidos` int DEFAULT NULL,
  `fecha_envios` date DEFAULT NULL,
  `direccion_envios` varchar(25) DEFAULT NULL,
  `estado_envios` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idEnvios`),
  KEY `idPedidos` (`idPedidos`),
  CONSTRAINT `Envios_ibfk_1` FOREIGN KEY (`idPedidos`) REFERENCES `Pedidos` (`idPedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Envios`
--

LOCK TABLES `Envios` WRITE;
/*!40000 ALTER TABLE `Envios` DISABLE KEYS */;
INSERT INTO `Envios` VALUES (1,1,'2024-01-13','Saavedra 123','Enviado'),(2,2,'2024-01-20','San_Martin 54','Enviado'),(3,3,'2024-01-25','Avenida Córdoba 2231','Enviado'),(4,4,'2024-02-01','Pardo 976','Retirado'),(5,5,'2024-02-10','Córdoba 1071','Retirado'),(6,6,'2024-02-15','Belgrano 1100','Enviado'),(7,7,'2024-02-17','San Juan 768','Retirado'),(8,8,'2024-02-28','Corrientes 304','Retirado'),(9,9,'2024-03-01','Avenida San Martin 456','Retirado'),(10,10,'2024-03-10','Zuviria 2456','Enviado'),(11,11,'2024-03-11','Laprida 3366','Enviado'),(12,12,'2024-03-16','Piedras 934','Retirado'),(13,13,'2024-03-18','Argerich 934','Retirado'),(14,14,'2024-03-19','Delta 1205','Enviado'),(15,15,'2024-03-21','Corrientes 677','Enviado');
/*!40000 ALTER TABLE `Envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventario`
--

DROP TABLE IF EXISTS `Inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventario` (
  `idInventario` int NOT NULL AUTO_INCREMENT,
  `idProductos` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idInventario`),
  KEY `idProductos` (`idProductos`),
  CONSTRAINT `Inventario_ibfk_1` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventario`
--

LOCK TABLES `Inventario` WRITE;
/*!40000 ALTER TABLE `Inventario` DISABLE KEYS */;
INSERT INTO `Inventario` VALUES (1,1,15),(2,2,15),(3,3,15),(4,4,15),(5,5,15),(6,6,15),(7,7,15),(8,8,15),(9,9,15),(10,10,15),(11,11,15),(12,12,20),(13,13,20),(14,14,20),(15,15,15);
/*!40000 ALTER TABLE `Inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marcas`
--

DROP TABLE IF EXISTS `Marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Marcas` (
  `idMarcas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idMarcas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marcas`
--

LOCK TABLES `Marcas` WRITE;
/*!40000 ALTER TABLE `Marcas` DISABLE KEYS */;
INSERT INTO `Marcas` VALUES (1,'Puma'),(2,'Adidas'),(3,'Jhon Foos'),(4,'Nike '),(5,'Vans'),(6,'Atomik');
/*!40000 ALTER TABLE `Marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `idPedidos` int NOT NULL AUTO_INCREMENT,
  `idClientes` int DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `forma_pago` varchar(60) DEFAULT NULL,
  `estado` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idPedidos`),
  KEY `idClientes` (`idClientes`),
  CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`idClientes`) REFERENCES `Clientes` (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,1,'2024-01-13','Tarjeta de Debito','Enviado'),(2,2,'2024-01-20','Tarjeta de Credito','Enviado'),(3,3,'2024-01-25','Transferencia Bancaria','Enviado'),(4,4,'2024-02-01','Efectivo','Retirado'),(5,5,'2024-02-10','Tarjeta de Credito','Retirado'),(6,6,'2024-02-15','Tarjeta de Credito','Enviado'),(7,7,'2024-02-17','Transferencia Bancaria','Retirado'),(8,8,'2024-02-28','Tarjeta de Debito','Retirado'),(9,9,'2024-03-01','Efectivo','Retirado'),(10,10,'2024-03-10','Tarjeta de Credito','Enviado'),(11,11,'2024-03-11','Tarjeta de Debito','Enviado'),(12,12,'2024-03-16','Efectivo','Retirado'),(13,13,'2024-03-18','Tarjeta de Credito','Retirado'),(14,14,'2024-03-19','Tarjeta de Credito','En Proceso'),(15,15,'2024-03-21','Tarjeta de Credito','En Proceso');
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PedidosConEnvio`
--

DROP TABLE IF EXISTS `PedidosConEnvio`;
/*!50001 DROP VIEW IF EXISTS `PedidosConEnvio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PedidosConEnvio` AS SELECT 
 1 AS `idPedidos`,
 1 AS `fecha_pedido`,
 1 AS `forma_pago`,
 1 AS `estado`,
 1 AS `fecha_envios`,
 1 AS `estado_envios`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `idProductos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `precio` decimal(10,2) DEFAULT NULL,
  `categoria` enum('Hombre','Mujer','Niños','Otros') DEFAULT NULL,
  `talles` varchar(20) DEFAULT NULL,
  `color` tinytext,
  PRIMARY KEY (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (1,'Zapatillas Puma MambaNegra','Es de contrucción de una pieza única en textil con piezas laterales en plástico y un elastico para mayor soporte.\nLa suela está compuesta totalmente de EVA, sin goma, para un calzado liviano.',41895.00,'Hombre','40 al 45','negro'),(2,'Zapatillas Adidas Racer TR1','Movete con confianza a lo largo del día con un comodo ajuste ceñido y una media suela ligera que brinda amortiguación durante todo el día.',69999.99,'Hombre','38 al 45','blanco'),(3,'Zapatillas Jhon Foos','Calzado ideal para desarrollar todas tus actividades urbanas.',69859.00,'Hombre','39 al 46','negro'),(4,'Zapatillas Jhon Foos','Calzado ideal para desarrollar todas tus actividades urbanas.',69859.00,'Hombre','39 al 46','blanco'),(5,'Zapatillas Nike Air Max','Originalmente diseñada para el running de alto rendimiento, la amortiguación Max Air brinda comodidad comprobada.',169999.00,'Hombre','37 al 46','blanco'),(6,'Zapatillas Puma X-Ray','Tecnología Soft Foam en la plantilla que permite una pisada confortable y adaptable a tu pie',69999.00,'Mujer','34 al 37','rosa'),(7,'Zapatillas Puma X-Ray','Tecnología Soft Foam en la plantilla que permite una pisada confortable y adaptable a tu pie',69999.00,'Mujer','34 al 37','blanco'),(8,'Zapatillas Vans Clasicas','Zapatillas comodas para uso diario',69999.99,'Mujer','34 al 38','negro'),(9,'Zapatillas Vans Clasicas','Zapatillas comodas para uso diario',69999.99,'Mujer','34 al 38','azul'),(10,'Zapatillas Botas Atomik Flip','Zapatillas divertidas y comodas para niños',59999.00,'Niños','25 al 30','negro'),(11,'Zapatillas Botas Atomik Flip','Zapatillas divertidas y comodas para niños',59999.00,'Niños','25 al 30','blanco'),(12,'Medias Nike Soquetes x3','Perfectas para lucir como si no tuvieras nada puesto debajo de tus zapatillas.',5999.00,'Otros','M','negro'),(13,'Medias Puma Caña Alta x3','Estilo y comodidad con las nuevas medias PUMA. Algodón suave.',8899.00,'Otros','5','blanco'),(14,'Medias de Futbol Adidas','Su tejido con tecnología Aeroready garantiza un ajuste perfecto y alta performance en la cancha.',9599.00,'Otros','S al XL','negro'),(15,'Ojotas Puma Popcat','Suela de EVA inyectada para mayor suavidad y comodidad.',27999.00,'Otros','34 al 45','blanco');
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ProductosPorCategoria`
--

DROP TABLE IF EXISTS `ProductosPorCategoria`;
/*!50001 DROP VIEW IF EXISTS `ProductosPorCategoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProductosPorCategoria` AS SELECT 
 1 AS `Productos`,
 1 AS `precio`,
 1 AS `Categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PromedioPreciosProductos`
--

DROP TABLE IF EXISTS `PromedioPreciosProductos`;
/*!50001 DROP VIEW IF EXISTS `PromedioPreciosProductos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PromedioPreciosProductos` AS SELECT 
 1 AS `Categoria`,
 1 AS `PromedioPrecio`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ClientesYPedidos`
--

/*!50001 DROP VIEW IF EXISTS `ClientesYPedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ClientesYPedidos` AS select `c`.`nombre` AS `Clientes`,`c`.`email` AS `email`,`p`.`idPedidos` AS `idPedidos`,`p`.`fecha_pedido` AS `fecha_pedido`,`p`.`estado` AS `estado` from (`Clientes` `c` left join `Pedidos` `p` on((`c`.`idClientes` = `p`.`idClientes`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DetallePedidoCompleto`
--

/*!50001 DROP VIEW IF EXISTS `DetallePedidoCompleto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DetallePedidoCompleto` AS select `dp`.`idDetallePedidos` AS `idDetallePedidos`,`p`.`nombre` AS `Producto`,`dp`.`cantidad` AS `cantidad`,`dp`.`precio_unitario` AS `precio_unitario`,(`dp`.`cantidad` * `dp`.`precio_unitario`) AS `Total` from (`DetallePedidos` `dp` join `Productos` `p` on((`dp`.`idProductos` = `p`.`idProductos`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PedidosConEnvio`
--

/*!50001 DROP VIEW IF EXISTS `PedidosConEnvio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PedidosConEnvio` AS select `pe`.`idPedidos` AS `idPedidos`,`pe`.`fecha_pedido` AS `fecha_pedido`,`pe`.`forma_pago` AS `forma_pago`,`pe`.`estado` AS `estado`,`e`.`fecha_envios` AS `fecha_envios`,`e`.`estado_envios` AS `estado_envios` from (`Pedidos` `pe` left join `Envios` `e` on((`pe`.`idPedidos` = `e`.`idPedidos`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProductosPorCategoria`
--

/*!50001 DROP VIEW IF EXISTS `ProductosPorCategoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProductosPorCategoria` AS select `p`.`nombre` AS `Productos`,`p`.`precio` AS `precio`,`c`.`nombre` AS `Categoria` from (`Productos` `p` join `Categoria` `c` on((`p`.`categoria` = `c`.`nombre`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PromedioPreciosProductos`
--

/*!50001 DROP VIEW IF EXISTS `PromedioPreciosProductos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PromedioPreciosProductos` AS select `Productos`.`categoria` AS `Categoria`,avg(`Productos`.`precio`) AS `PromedioPrecio` from `Productos` group by `Productos`.`categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24 23:43:11
