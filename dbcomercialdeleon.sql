-- MySQL dump 10.13  Distrib 5.6.28, for Linux (x86_64)
--
-- Host: localhost    Database: puntoventalibreria
-- ------------------------------------------------------
-- Server version	5.6.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `CategoriaNombre` varchar(45) DEFAULT NULL,
  `CategoriaObservaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (5,'PAPEL IRIS','Colores'),(7,'CRAYONES','Para Colorear'),(8,'Lapiz','Lapiceros, Lapis'),(9,'fomi','Fragil'),(10,'Tecnologia',NULL),(17,'Almacenamiento',NULL),(19,'Redes',NULL),(21,'Sobre',NULL),(22,'papelito',NULL),(23,'cable',NULL),(24,'cable',NULL),(25,'PP',NULL),(26,'C',NULL),(27,'NN',NULL),(28,'VVV',NULL),(29,'UU',NULL),(30,'ll',NULL),(31,'pp',NULL),(32,'Jonson',NULL),(33,'Computadoras Portatiles',NULL),(34,'Musical',NULL),(35,'vasos',NULL),(36,'Fundas',NULL),(37,'Macro',NULL),(38,'Wester Digital',NULL),(39,'Wester Digital',NULL),(40,'Wester Digital',NULL),(41,'Brakets',NULL),(45,'Brackets',NULL),(46,'Brackets',NULL),(51,'Monster',NULL),(52,'Sac',NULL),(53,'Per',NULL),(55,'Roy',NULL),(57,'Peni',NULL),(58,'Zapatos',NULL),(59,'Bolsos',NULL),(60,'Tecnologia',NULL),(62,'ESTUDIANTILLLL',NULL),(69,'MARITIMOS',NULL),(70,'SUBMARINOS',NULL);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `clienteNombre` varchar(150) DEFAULT NULL,
  `clienteNit` int(11) DEFAULT NULL,
  `clienteDireccion` varchar(100) DEFAULT NULL,
  `CLienteTelefono` varchar(12) DEFAULT NULL,
  `ClienteSaldo` float DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Miguel Menchu',7,'Toto','77663236',0),(2,'general',323606,'Calle B','32966879',46.37),(3,'Jason',24156821,'cuidad','2543262',10),(4,'Wallas',543356821,'Xela','5412262',10),(5,'Walter',1548986,'Palin','254832540',12.5),(6,'Kali',15256,'Zona','2554258',6.5);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecompra`
--

DROP TABLE IF EXISTS `detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecompra` (
  `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionCompra` varchar(150) NOT NULL,
  `precioCostoCompra` float NOT NULL,
  `idMarcas` int(11) NOT NULL,
  `idProveedores` int(11) NOT NULL,
  `idCategorias` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  `cantidadComprada` int(11) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`),
  KEY `idMarcas` (`idMarcas`),
  KEY `idProveedores` (`idProveedores`),
  KEY `idCategorias` (`idCategorias`),
  KEY `Producto_idProducto` (`Producto_idProducto`),
  CONSTRAINT `detallecompra_ibfk_1` FOREIGN KEY (`idMarcas`) REFERENCES `marca` (`idMarcas`),
  CONSTRAINT `detallecompra_ibfk_2` FOREIGN KEY (`idProveedores`) REFERENCES `proveedores` (`idProveedores`),
  CONSTRAINT `detallecompra_ibfk_3` FOREIGN KEY (`idCategorias`) REFERENCES `categoria` (`idCategorias`),
  CONSTRAINT `detallecompra_ibfk_4` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompra`
--

LOCK TABLES `detallecompra` WRITE;
/*!40000 ALTER TABLE `detallecompra` DISABLE KEYS */;
INSERT INTO `detallecompra` VALUES (89,'Manila',10,17,15,22,'2016-06-23','10:47:54',23,40),(90,'Foco',20,17,15,21,'2016-06-23','10:47:59',24,60),(91,'Silicon',20,17,15,21,'2016-06-23','10:48:03',25,80),(92,'Cable',30,19,16,24,'2016-06-23','12:34:38',28,20),(93,'Radio',20,7,17,8,'2016-06-23','12:38:14',29,10),(94,'Corta unias',60,9,18,24,'2016-06-23','12:48:38',30,10),(106,'Tijeras',30,7,10,9,'2016-06-24','15:58:25',34,10),(107,'sueters',100,6,15,8,'2016-06-24','15:58:29',31,10),(108,'Sacapuntas',20,17,15,22,'2016-06-24','15:58:32',27,10),(109,'Saca',10,17,15,22,'2016-06-24','15:58:39',26,10),(110,'Playeras',20,19,14,24,'2016-06-24','16:25:46',35,5),(111,'Curitas',0.25,19,18,24,'2016-06-25','11:11:59',36,25),(112,'Grapadora',10,17,15,22,'2016-06-25','11:16:21',14,8),(113,'Playeras',20,19,14,24,'2016-06-25','11:17:36',35,10),(114,'Reproductores',10,19,17,24,'2016-06-25','11:19:18',37,10),(115,'Reproductores',10,19,17,24,'2016-06-25','11:19:47',37,2),(116,'Playeras',20,19,14,24,'2016-06-25','11:36:37',35,5),(117,'Tijeras',30,7,10,9,'2016-06-25','11:39:34',34,5),(118,'Radio',20,7,17,8,'2016-06-25','11:40:17',29,10),(119,'sueters',100,6,15,8,'2016-06-25','11:41:25',31,5),(120,'Radio',20,7,17,8,'2016-06-25','12:04:48',29,3),(121,'telefono',3000,2,2,7,'2016-07-22','16:50:30',38,10),(122,'telefono hp',3000,2,2,7,'2016-07-22','16:51:08',38,5),(123,'escuadras',14,4,19,9,'2016-08-01','11:51:08',39,12),(124,'Iphone',50,19,20,24,'2016-08-01','12:28:57',40,10),(125,'sdfsdaf',8,11,21,10,'2016-08-01','12:31:40',41,15),(126,'Computadora',50,19,22,24,'2016-08-01','12:33:02',42,10),(127,'UPS',60,19,23,24,'2016-08-01','12:38:34',43,50),(128,'UPS',60,19,24,24,'2016-08-01','12:42:59',44,50),(129,'Silicon',50,19,25,24,'2016-08-02','09:08:59',45,10),(130,'Tapon',80,19,26,24,'2016-08-02','09:09:58',46,90),(131,'Cargador',90,19,27,24,'2016-08-02','09:12:11',47,80),(132,'Troker',60,19,28,24,'2016-08-02','09:13:18',48,50),(133,'Prit',20,20,29,25,'2016-08-10','15:12:17',49,10),(134,'Chinita',50,21,30,26,'2016-08-10','15:13:56',50,10),(135,'MM',60,22,31,27,'2016-08-10','15:19:46',51,50),(136,'MM',16,23,32,28,'2016-08-10','15:22:22',52,12),(137,'YY',20,24,33,29,'2016-08-10','15:24:03',53,10),(138,'AA',12,25,34,30,'2016-08-10','15:26:06',54,12),(139,'Grapitas',80,26,35,31,'2016-08-10','15:37:55',55,70),(140,'YESO',80,9,29,31,'2016-08-10','16:18:35',56,10),(141,'Yeso',90,11,30,10,'2016-08-10','16:19:10',57,80),(142,'Yave',80,9,31,31,'2016-08-10','16:21:01',58,70),(143,'Lap',80,26,35,31,'2016-08-10','16:21:26',59,40),(144,'Nasquin',70,9,22,10,'2016-08-10','16:22:02',60,90),(145,'Marcador',50,21,30,25,'2016-08-10','16:22:38',61,10),(146,'Teclado',90,26,35,31,'2016-08-10','16:28:34',62,80),(147,'Mause',50,26,35,31,'2016-08-10','16:29:08',63,80),(148,'Servidor',90,26,35,31,'2016-08-10','16:31:38',64,80),(149,'Marker',70,1,2,5,'2016-08-10','16:42:49',65,80),(150,'Makito',90,1,2,5,'2016-08-10','16:43:55',66,80),(151,'Cable',80,5,9,7,'2016-08-11','17:04:56',67,10),(152,'Monitor',20,4,15,8,'2016-08-11','17:06:09',68,10),(153,'Hub',80,4,10,5,'2016-08-11','17:09:15',69,10),(154,'Pauspad',13,5,11,7,'2016-08-11','17:20:13',70,12),(155,'Resmas',13,1,2,5,'2016-08-11','18:07:14',71,12),(156,'Chicles',13,1,2,5,'2016-08-11','18:08:06',72,12),(157,'Torno',50,6,6,17,'2016-08-16','07:43:54',73,10),(158,'Marcadores',50,1,2,5,'2016-08-16','07:50:16',74,10),(159,'Disco duro',20,6,7,10,'2016-08-16','07:52:28',75,10),(160,'Celular',80,1,2,5,'2016-08-16','07:58:17',76,10),(161,'Crayones FaberCastell',20,1,2,5,'2016-08-16','07:59:48',77,10),(162,'Croyones pastel',20,1,2,5,'2016-08-16','08:00:51',78,10),(163,'Espiga',50,1,2,5,'2016-08-16','08:03:35',79,40),(164,'Marbel',90,1,2,5,'2016-08-16','08:04:51',80,80),(165,'Sacabocador',14,1,2,5,'2016-08-16','08:05:59',81,13),(166,'Biblias',200,1,2,5,'2016-08-16','08:06:31',82,100),(167,'Papel selofan',60,1,2,5,'2016-08-16','08:07:44',83,50),(168,'Papel Cascara de huevo',80,1,2,5,'2016-08-16','08:11:11',84,70),(169,'Mandarina',90,1,2,5,'2016-08-16','08:14:02',85,80),(170,'Hub',90,1,2,5,'2016-08-16','08:15:42',86,80),(171,'Cuadros',20,1,2,5,'2016-08-16','08:16:42',87,10),(172,'Toma corriente',60,1,2,5,'2016-08-16','08:17:11',88,50),(173,'Yeso',50,1,2,5,'2016-08-16','08:17:45',89,10),(174,'Audifonos',80,1,2,5,'2016-08-16','08:18:34',90,50),(175,'Cables de red',20,1,2,5,'2016-08-16','08:19:12',91,800),(176,'Metaluminios',80,1,2,5,'2016-08-16','08:19:35',92,50),(177,'Pantallas LCD',50,1,2,5,'2016-08-16','08:22:04',93,10),(178,'orradores de osito',20,1,2,5,'2016-08-16','08:22:19',94,10),(179,'Aromatizante',50,1,2,32,'2016-08-16','08:31:29',95,10),(180,'Mac Book',20,27,36,33,'2016-08-16','08:54:13',96,10),(181,'Cuchara',80,28,37,34,'2016-08-16','11:19:49',97,10),(182,'Pachon',50,29,38,35,'2016-08-16','11:21:45',98,10),(183,'Protectores',20,30,39,36,'2016-08-16','11:29:53',99,10),(184,'Billeteras',80,13,3,9,'2016-08-16','13:50:02',100,10),(185,'Servidor Bleid',10000,30,39,70,'2016-09-16','15:59:24',101,5),(186,'Switch',8000,30,39,70,'2016-09-16','15:59:47',102,16),(187,'Servidor Bleid DELL',10000,6,10,10,'2017-01-06','11:30:55',101,8);
/*!40000 ALTER TABLE `detallecompra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER actualizarProducto

after update on detallecompra

for each row

begin

update producto set ProductoExistencia = (ProductoExistencia-old.cantidadComprada)+new.cantidadComprada, ProductoCantidadTotal = (ProductoCantidadTotal-old.cantidadComprada)+new.cantidadComprada where idProducto = new.Producto_idProducto;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER actualizarProductoADDC

after delete on detallecompra

for each row

begin

update producto set productoExistencia = productoExistencia - old.cantidadComprada, ProductoCantidadTotal = ProductoCantidadTotal - old.cantidadComprada where idProducto = old.Producto_idProducto;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT,
  `cantidadComprada` int(11) NOT NULL,
  `venta_idVentas` int(11) DEFAULT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idDetalleVenta`),
  KEY `venta_idVentas` (`venta_idVentas`),
  KEY `Producto_idProducto` (`Producto_idProducto`),
  CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`venta_idVentas`) REFERENCES `venta` (`idVenta`),
  CONSTRAINT `detalleventa_ibfk_3` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (77,5,355,28),(78,5,355,13),(79,5,355,16),(80,5,355,18),(81,5,355,25),(82,5,356,29),(83,3,357,36),(84,1,358,28),(85,1,358,13),(87,3,359,36),(89,1,360,42),(90,1,361,24),(91,1,362,28),(92,1,363,102),(93,1,364,102),(94,1,365,102),(95,2,365,101),(96,1,366,64),(97,2,367,101);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger producto_BI_trigger before insert on detalleventa



for each row begin 



update producto set ProductoExistencia = ProductoExistencia - new.cantidadComprada where idProducto = new.Producto_idProducto;



end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 trigger modificaInventario after update on detalleventa for each row begin  update  producto set productoExistencia=productoExistencia+(old.cantidadComprada-new.cantidadComprada)  where  idProducto=new.Producto_idProducto;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 trigger subirInventarioDeleteDV after delete on detalleventa for each row begin update producto set productoExistencia = productoExistencia + old.cantidadComprada where idProducto = old.Producto_idProducto; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idMarcas` int(11) NOT NULL AUTO_INCREMENT,
  `MarcaNombre` varchar(45) DEFAULT NULL,
  `MarcaObservacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMarcas`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'bic 2','Marca registrada'),(2,'Hp','Marca Registrada'),(4,'Pelikano','Marca Registrda'),(5,'sonsung','Marca Registrda'),(6,'Dell',NULL),(7,'alcatel',NULL),(8,'Apple',NULL),(9,'TpLink',NULL),(10,'Wester Digital',NULL),(11,'Kingston',NULL),(12,'Samsumg',NULL),(13,'nueva',NULL),(14,'CISCO',NULL),(17,'paper',NULL),(19,'cable',NULL),(20,'MM',NULL),(21,'M',NULL),(22,'BB',NULL),(23,'CCVC',NULL),(24,'II',NULL),(25,'kk',NULL),(26,'ll',NULL),(27,'Mac',NULL),(28,'PathFeinder',NULL),(29,'Tuper Ware',NULL),(30,'Sony X',NULL);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `ProductoExistencia` int(11) DEFAULT NULL,
  `ProductoDescripcion` varchar(150) DEFAULT NULL,
  `ProductoCantidadTotal` int(11) DEFAULT NULL,
  `ProductocoPrecioCosto` float DEFAULT NULL,
  `ProductocoPrecioVenta` float DEFAULT NULL,
  `Categoria_idCategorias` int(11) NOT NULL,
  `Marca_idMarcas` int(11) NOT NULL,
  `Proveedores_idProveedores` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_Producto_Categoria_idx` (`Categoria_idCategorias`),
  KEY `fk_Producto_Marca1_idx` (`Marca_idMarcas`),
  KEY `fk_Producto_Proveedores1_idx` (`Proveedores_idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (13,34,'Folters Carta',40,60,90,8,4,11),(14,8,'Grapadora',8,10,15,22,17,15),(15,75,'Tijera',75,20,30,22,17,15),(16,20,'Recuadro',25,15,20,21,16,15),(17,30,'Plastisina',30,15,22,22,17,15),(18,15,'Papel crepe',20,20,30,22,17,15),(23,40,'Manila',40,10,12,22,17,15),(24,59,'Foco',60,20,30,21,17,15),(25,75,'Silicon',80,20,25,21,17,15),(26,10,'Saca',10,10,12,22,17,15),(27,10,'Sacapuntas',10,20,30,22,17,15),(28,13,'Cable',20,30,60,24,19,16),(29,23,'Radio',28,20,30,8,7,17),(30,10,'Corta unias',10,60,80,24,9,18),(31,20,'sueters',20,100,110,8,6,15),(32,10,'Tijeras',10,20,30,24,19,18),(33,10,'Tijeras',10,30,60,24,6,8),(34,20,'Tijeras',20,30,50,9,7,10),(35,5,'Playeras',5,20,30,24,19,14),(36,19,'Curitas',25,0.25,0.5,24,19,18),(37,2,'Reproductores',2,10,10,24,19,17),(38,15,'telefono hp',15,3000,4000,7,2,2),(39,12,'escuadras',12,14,16,9,4,19),(40,10,'Iphone',10,50,60,24,19,20),(41,15,'Produo',15,8,7,10,11,21),(42,9,'Computadora',10,50,60,24,19,22),(43,50,'UPS',50,60,90,24,19,24),(44,50,'UPS',50,60,100,24,19,24),(45,10,'Silicon',10,50,80,24,19,25),(46,90,'Tapon',90,80,50,24,19,26),(47,80,'Cargador',80,90,60,24,19,27),(48,50,'Troker',50,60,90,24,19,28),(49,10,'Prit',10,20,30,25,20,29),(50,10,'Chinita',10,50,60,26,21,30),(51,50,'MM',50,60,90,27,22,31),(52,12,'MM',12,16,19,28,23,32),(53,10,'YY',10,20,30,29,24,33),(54,12,'AA',12,12,13,30,25,34),(55,70,'Grapitas',70,80,90,31,26,35),(56,10,'YESO',10,80,90,31,9,29),(57,80,'Yeso',80,90,60,10,11,30),(58,70,'Yave',70,80,90,31,9,31),(59,40,'Lap',40,80,90,31,26,35),(60,90,'Nasquin',90,70,60,10,9,24),(61,10,'Marcador',10,50,60,25,21,30),(62,80,'Teclado',80,90,90,31,26,35),(63,80,'Mause',80,50,60,31,26,35),(64,79,'Servidor',80,90,60,31,26,35),(65,80,'Marker',80,70,80,5,1,2),(66,80,'Makito',80,90,10,5,1,2),(67,10,'Cable',10,80,90,7,5,9),(68,10,'Monitor',10,20,30,8,4,15),(69,10,'Hub',10,80,90,5,4,10),(70,12,'Pauspad',12,13,18,7,5,11),(71,12,'Resmas',12,13,14,5,1,2),(72,12,'Chicles',12,13,14,5,1,2),(73,10,'Torno',10,50,80,17,6,6),(74,10,'Marcadores',10,50,60,5,1,2),(75,10,'Disco duro',10,20,30,10,6,10),(76,10,'Celular',10,80,90,5,1,2),(77,10,'Crayones FaberCastell',10,20,30,5,1,2),(78,10,'Croyones pastel',10,20,30,5,1,2),(79,40,'Espiga',40,50,60,5,1,2),(80,80,'Marbel',80,90,30,5,1,2),(81,13,'Sacabocador',13,14,15,5,1,2),(82,100,'Biblias',100,200,600,5,1,2),(83,50,'Papel selofan',50,60,90,5,1,2),(84,70,'Papel Cascara de huevo',70,80,90,5,1,2),(85,80,'Mandarina',80,90,80,5,1,2),(86,80,'Hub',80,90,100,5,1,2),(87,10,'Cuadros',10,20,30,5,1,2),(88,50,'Toma corriente',50,60,90,5,1,2),(89,10,'Yeso',10,50,60,5,1,2),(90,50,'Audifonos',50,80,90,5,1,2),(91,800,'Cables de red',800,20,30,5,1,2),(92,50,'Metaluminios',50,80,90,5,1,2),(93,10,'Pantallas LCD',10,50,60,5,1,2),(94,10,'orradores de osito',10,20,30,5,1,2),(95,10,'Aromatizante',10,50,60,32,1,2),(96,10,'Mac Book',10,20,30,33,27,36),(97,10,'Cuchara',10,80,90,34,28,37),(98,10,'Pachon',10,50,90,35,29,38),(99,10,'Protectores',10,20,30,36,30,39),(100,10,'Billeteras de cuero',10,80,90,9,13,39),(101,9,'Servidor Bleid DELL',13,10000,20000,10,6,10),(102,13,'Switch',16,8000,9000,10,9,26);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `idProveedores` int(11) NOT NULL AUTO_INCREMENT,
  `ProveedoresNombre` varchar(50) DEFAULT NULL,
  `ProveedoresTelefonol` varchar(15) DEFAULT NULL,
  `ProveedoresDireccion` varchar(30) DEFAULT NULL,
  `ProveedoresNit` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (2,'RIVERA','45678390','zona 1','23484744'),(3,'MIGUEL','45879645','zona 1,palin,toto','45879862'),(4,'WALTER NOE','77663236','Patsite','19513289'),(5,'JSON','32966879','Calle B','12457-8'),(6,'LORELAY','77663456','Cuidad','6542283'),(7,'SILHYTA',NULL,NULL,NULL),(8,'Wallace',NULL,NULL,NULL),(9,'Billy',NULL,NULL,NULL),(10,'Feliza',NULL,NULL,NULL),(11,'Jennifer',NULL,NULL,NULL),(13,'Juan Carlos',NULL,NULL,NULL),(14,'Juan',NULL,NULL,NULL),(15,'Juan Batz',NULL,NULL,NULL),(16,'Juan',NULL,NULL,NULL),(17,'Juan',NULL,NULL,NULL),(18,'Marcos',NULL,NULL,NULL),(19,'hrejwkl',NULL,NULL,NULL),(20,'Loida','','',''),(21,'Zabdy','','',''),(22,'Billy','','',''),(23,'Miguelito','12345678`','Guatemala','123456'),(24,'Miguelito','12345678`','Guatemala','123456'),(25,'Piedra santa','4584587','2213','12421457'),(26,'Sergio','12345678','toto','123456'),(27,'Piedra Santa','12345678','Toto','321456'),(28,'Miguel Menchusito','12345678','Chimal','123589'),(29,'Juan','123456789','Toto','12321'),(30,'Chino','12345678','Tpoto ','12345'),(31,'VV','12345678','Chimal','12345'),(32,'Mike','12345678','Xela','12345'),(33,'QQ','123456789','Huehue','12345678'),(34,'Juanca','12345678','San Marcos','12345'),(35,'iu','123654987','Catarina','1235858'),(36,'Steve Jovs','77663236','San Francisco','123456'),(37,'Samuel','12345678','12345678','215989'),(38,'Tuper Ware','12345698','Mexico','12354'),(39,'SONY','98745632','Mexico','123698');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersadmin`
--

DROP TABLE IF EXISTS `usersadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersadmin` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersadmin`
--

LOCK TABLES `usersadmin` WRITE;
/*!40000 ALTER TABLE `usersadmin` DISABLE KEYS */;
INSERT INTO `usersadmin` VALUES (2,'Tax Soch Aura','5bc5167af68bf9f8995bf541e1721754c1cf3ea6');
/*!40000 ALTER TABLE `usersadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(50) DEFAULT NULL,
  `passwordUsuario` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'multiServicios2000','12345678');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `ventaDescripcion` varchar(150) DEFAULT NULL,
  `ventaFecha` date DEFAULT NULL,
  `ventaHora` time DEFAULT NULL,
  `ventaUsuario` varchar(50) DEFAULT NULL,
  `codigoCliente` int(11) NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `codigoCliente` (`codigoCliente`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (297,'Jesus mi fiel amigo','2016-06-23','13:22:09','Miguelito',2),(298,'Jesus mi fiel amigo','2016-06-23','13:22:09','Miguelito',2),(299,'Jesus mi fiel amigo','2016-06-23','13:22:09','Miguelito',2),(300,'Jesus mi fiel amigo','2016-06-23','13:22:09','Miguelito',2),(301,'Jesus mi fiel amigo','2016-06-23','13:22:09','Miguelito',2),(302,'Ningun comentario','2016-06-23','13:31:47','Miguelito',2),(303,'Ningun comentario','2016-06-23','13:34:34','Miguelito',2),(304,'Ningun comentario','2016-06-23','13:38:37','Miguelito',2),(305,'Ningun comentario','2016-06-23','13:41:07','Miguelito',2),(306,'Ningun comentario','2016-06-23','13:46:30','Miguelito',2),(307,'Ningun comentario','2016-06-23','13:46:57','Miguelito',2),(308,'Ningun comentario','2016-06-23','13:49:10','Miguelito',2),(309,'Ningun comentario','2016-06-23','13:49:16','Miguelito',2),(310,'Ningun comentario','2016-06-23','13:56:58','Miguelito',2),(311,'Ningun comentario','2016-06-23','13:57:42','Miguelito',2),(312,'Ningun comentario','2016-06-23','13:58:29','Miguelito',2),(313,'Ningun comentario','2016-06-23','13:58:47','Miguelito',2),(314,'Ningun comentario','2016-06-23','14:00:48','Miguelito',2),(315,'Ningun comentario','2016-06-23','14:01:11','Miguelito',2),(316,'Ningun comentario','2016-06-23','14:01:46','Miguelito',2),(317,'Ningun comentario','2016-06-23','14:02:40','Miguelito',2),(318,'Ningun comentario','2016-06-23','14:03:04','Miguelito',2),(319,'Ningun comentario','2016-06-23','14:04:41','Miguelito',2),(320,'Ningun comentario','2016-06-23','14:04:48','Miguelito',2),(321,'Ningun comentario','2016-06-23','14:05:11','Miguelito',2),(322,'Ningun comentario','2016-06-23','14:06:57','Miguelito',2),(323,'Ningun comentario','2016-06-23','14:08:37','Miguelito',2),(324,'Ningun comentario','2016-06-23','14:08:53','Miguelito',2),(325,'Ningun comentario','2016-06-23','14:09:19','Miguelito',2),(326,'Ningun comentario','2016-06-23','15:02:35','Miguelito',2),(327,'Ningun comentario','2016-06-23','15:05:24','Miguelito',2),(328,'Ningun comentario','2016-06-23','15:10:07','Miguelito',2),(329,'Ningun comentario','2016-06-23','15:39:29','Miguelito',2),(330,'Ningun comentario','2016-06-23','15:42:43','Miguelito',2),(331,'Ningun comentario','2016-06-23','15:48:04','Miguelito',2),(332,'Ningun comentario','2016-06-23','15:49:28','Miguelito',2),(333,'Ningun comentario','2016-06-23','15:51:29','Miguelito',2),(334,'Ningun comentario','2016-06-23','15:52:37','Miguelito',2),(335,'Ningun comentario','2016-06-23','15:58:18','Miguelito',2),(336,'Ningun comentario','2016-06-23','15:58:36','Miguelito',2),(337,'Ningun comentario','2016-06-23','15:59:56','Miguelito',2),(338,'Ningun comentario','2016-06-23','16:01:04','Miguelito',2),(339,'Ningun comentario','2016-06-23','16:09:35','Miguelito',2),(340,'Ningun comentario','2016-06-23','16:09:57','Miguelito',2),(341,'Ningun comentario','2016-06-23','16:12:04','Miguelito',2),(342,'Ningun comentario','2016-06-24','13:10:35','Miguelito',2),(343,'Ningun comentario','2016-06-24','13:45:21','Miguelito',2),(344,'Ningun comentario','2016-06-24','14:01:42','Miguelito',2),(345,'Ningun comentario','2016-06-24','14:02:40','Miguelito',2),(346,'Ningun comentario','2016-06-24','14:04:48','Miguelito',2),(347,'Ningun comentario','2016-06-24','14:05:29','Miguelito',2),(348,'Ningun comentario','2016-06-24','14:19:09','Miguelito',2),(349,'Ningun comentario','2016-06-24','14:20:27','Miguelito',2),(350,'Ningun comentario','2016-06-24','14:37:19','Miguelito',2),(351,'Ningun comentario','2016-06-24','14:44:00','Miguelito',2),(352,'Ningun comentario','2016-06-24','14:51:01','Miguelito',2),(353,'Ningun comentario','2016-06-24','14:59:02','Miguelito',2),(354,'Ningun comentario','2016-06-24','15:08:37','Miguelito',2),(355,'Ningun comentario','2016-06-24','15:59:59','Miguelito',2),(356,'Ningun comentario','2016-06-24','16:30:15','Miguelito',2),(357,'Ningun comentario','2016-06-25','11:14:59','Miguelito',2),(358,'Ningun comentario','2016-07-20','18:48:47','Miguelito',2),(359,'Ningun comentario','2016-07-22','16:53:02','Miguelito',2),(360,'Ningun comentario','2016-08-01','14:51:55','Miguelito',2),(361,'Ningun comentario','2016-09-01','22:46:40','Miguelito',2),(362,'Ningun comentario','2016-09-16','19:11:51','Miguelito',2),(363,'Ningun comentario','2016-09-21','11:26:11','Miguelito',2),(364,'Ningun comentario','2016-09-21','11:26:11','Miguelito',2),(365,'Ningun comentario','2016-10-07','22:36:50','Miguelito',2),(366,'Ningun comentario','2016-10-31','11:44:24','Miguelito',2),(367,'Ningun comentario','2017-01-06','11:22:08','Miguelito',2),(368,'Ningun comentario','2017-01-07','15:41:23','Miguelito',2),(369,'Ningun comentario','2017-01-07','15:42:04','Miguelito',2);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'puntoventalibreria'
--
/*!50003 DROP PROCEDURE IF EXISTS `deleteCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `deleteCategoria`( IN categoria int)
BEGIN delete from categoria where idCategorias=categoria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteDetalleCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDetalleCompra`(IN Detalle int)
BEGIN delete from detallecompra where idDetalleCompra=Detalle;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteDetalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `deleteDetalleVenta`(

IN _idDetalleVenta int 

)
BEGIN 

delete from detalleventa where idDetalleVenta = _idDetalleVenta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteMarcas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `deleteMarcas`(IN nombre varchar(45), marca int)
BEGIN delete from marca where idMarcas=marca;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `deleteProducto`(IN idProductos int)
BEGIN delete from producto where idProducto=idProductos ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteProveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `deleteProveedores`(IN nombre varchar(50), proveedores int)
BEGIN delete from proveedores where idProveedores=proveedores;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAlmacenaDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getAlmacenaDetalle`(IN cantidad int, productos int, ventas int)
BEGIN insert into detalleventa(cantidadComprada,Producto_idProducto,venta_idVentas) values(cantidad,productos,ventas);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCategoriaMarcaProv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getCategoriaMarcaProv`(

IN _Categoria_idCategorias int(11),

   _Marca_idMarcas int(11),

  _Proveedores_idProveedores int(11)

)
BEGIN

select * from producto where Categoria_idCategorias = Categoria_idCategorias and Marca_idMarcas=Marca_idMarcas and Proveedores_idProveedores=Proveedores_idProveedores and ProductoDescripcion like "%lap%";

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCategoriaProductoComprado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getCategoriaProductoComprado`(

IN _idProducto int

)
begin

select C.idCategorias from categoria C inner join detallecompra DC on C.idCategorias = DC.idCategorias inner join producto PR on DC.Producto_idProducto = PR.idProducto where PR.idProducto = _idProducto group by PR.idProducto;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCoincidenciasCatMarProv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getCoincidenciasCatMarProv`(

IN _Categoria_idCategorias int(11),

_Marca_idMarcas int(11),

_Proveedores_idProveedores int(11),

_ProductoDescripcion varchar(150)

)
BEGIN

select *from producto where Categoria_idCategorias =idCategorias and Marca_idMarcas =idMarcas and Proveedores_idProveedores =idProveedores and ProductoDescripcion like "%lap%";

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDatosProductoFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDatosProductoFactura`(
IN _idProducto int
)
begin
SELECT P.idProducto, C.CategoriaNombre, P.ProductoDescripcion, M.marcaNombre, P.ProductocoPrecioVenta, P.ProductoExistencia from categoria C inner join producto P on C.idCategorias = P.Categoria_idCategorias inner join marca M on P.Marca_idMarcas = M.idMarcas where idProducto = _idProducto;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDetalleVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getDetalleVentas`(IN idDetalle_ int(11),

descripcion_ varchar(150),

precio_ float,

fecha_ date,

hora_ time,

cantidad_ int(11)

)
begin

insert into detalleVenta(idDetalleCompra,descripcionCompra,precioCostoCompra, fecha, hora,cantidadComprada) values(idDetalle_,descripcion_,precio_,fecha_,hora_,cantidad_);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMarcaProductoComprado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getMarcaProductoComprado`(

IN _idProducto int

)
begin

select M.idMarcas from marca M inner join detallecompra DC on M.idMarcas = DC.idMarcas inner join producto P on DC.Producto_idProducto = P.idProducto where P.idProducto = _idProducto group by P.idProducto;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMarcasColumnas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getMarcasColumnas`(IN marca int)
BEGIN select P.idProducto,C.categoriaNombre,P.ProductoDescripcion,M.MarcaNombre,P.ProductocoPrecioVenta,P.ProductoExistencia from categoria C inner join producto P on C.idCategorias =P. Categoria_idCategorias inner join marca M on P. Marca_idMarcas =M.idMarcas where M.idMarcas =marca;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductoCategoriaMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getProductoCategoriaMarca`(IN idProducto int , Marca_idMarcas int)
BEGIN select * from producto where Categoria_idCategorias =idProdcuto and Marca_idMarcas =Marca_idMarcas ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getProductos`()
BEGIN select idProducto,ProductoExistencia,ProductoDescripcion,ProductoCantidadTotal,ProductocoPrecioCosto,ProductocoPrecioVenta from producto ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriaMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `getProductosCategoriaMarca`(

IN _idCategoria int, _idMarca int 

)
BEGIN

select * from producto where Categoria_idCategorias = _idCategoria and Marca_idMarcas = _idMarca;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriaMarcaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `getProductosCategoriaMarcaProveedor`( IN _idCategoria int, _idMarca int, _idProveedor int )
BEGIN select * from producto where Categoria_idCategorias = _idCategoria and Marca_idMarcas = _idMarca and Proveedores_idProveedores = _idProveedor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriaMarcaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getProductosCategoriaMarcaVenta`(

IN Categorias int(11),

Marcas int(11)

)
BEGIN

SELECT P.idProducto, C.CategoriaNombre, P.ProductoDescripcion, M.marcaNombre, P.ProductocoPrecioVenta, P.ProductoExistencia from categoria C inner join producto P on C.idCategorias = P.Categoria_idCategorias inner join marca M on P.Marca_idMarcas = M.idMarcas  where P.Categoria_idCategorias=Categorias and P.Marca_idMarcas=Marcas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getProductosCategoriaProveedor`(

IN _idCategoria int, _idProveedor int

)
begin

select * from producto where Categoria_idCategorias = _idCategoria and Proveedores_idProveedores = _idProveedor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getProductosCategorias`(IN idProducto int, Categoria_idCategorias int)
BEGIN select * from producto where idProducto =idProducto and Categoria_idCategorias =Categoria_idCategorias;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriasMarcas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getProductosCategoriasMarcas`(IN idProducto int, Categoria_idCategorias int, Marca_idMarcas int)
BEGIN select * from producto where idProducto =idProducto and Categoria_idCategorias =Categoria_idCategorias and Marca_idMarcas =Marca_idMarcas ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosCategoriaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `getProductosCategoriaVenta`( IN _idCategoria int  )
BEGIN  select P.idProducto, C.CategoriaNombre, P.ProductoDescripcion, M.MarcaNombre, P.ProductocoPrecioVenta, P.ProductoExistencia from categoria C inner join producto P on C.idCategorias = P.Categoria_idCategorias and C.idCategorias = _idCategoria inner join marca M on P.Marca_idMarcas = M.idMarcas; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosMarcaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getProductosMarcaProveedor`(

IN _idMarca int, _idProveedor int

)
BEGIN

select * from producto where Marca_idMarcas = _idMarca and Proveedores_idProveedores = _idProveedor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductosMarcas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getProductosMarcas`(IN Categoria_idCategorias int, Marca_idMarca int)
BEGIN select * from producto where Categoria_idCategorias =Categoria_idCategorias and Marca_idMarcas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProveedorProductoComprado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.72` PROCEDURE `getProveedorProductoComprado`(

IN

_idProducto int

)
begin

select P.idProveedores from proveedores P inner join detallecompra DC on P.idProveedores = DC.idProveedores inner join producto PR on DC.Producto_idProducto = PR.idProducto where PR.idProducto = _idProducto group by PR.idProducto;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getReporteComprasDia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `getReporteComprasDia`(

IN _fecha date

)
begin

select C.idDetalleCompra, C.hora, C.descripcionCompra, C.precioCostoCompra, C.cantidadComprada, M.MarcaNombre, PR.ProveedoresNombre, CT.CategoriaNombre from categoria CT inner join detallecompra C on CT.idCategorias  = C.idCategorias inner join marca M on C.idMarcas = M.idMarcas inner join proveedores PR on C.idProveedores = PR.idProveedores where C.fecha = _fecha;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresarProducto`(
IN Existencia int, Descripcion varchar(150), Total int, Costo float,Venta float, Categorias int, Marcas int, Proveedores int
)
BEGIN  insert into producto (ProductoExistencia, ProductoDescripcion,ProductoCantidadTotal, ProductocoPrecioCosto, ProductocoPrecioVenta,Categoria_idCategorias,Marca_idMarcas,Proveedores_idProveedores) VALUES (Existencia, Descripcion, Total, Costo, Venta, Categorias, Marcas, Proveedores); SET @idNuevoProducto = LAST_INSERT_ID();  select * from producto where idProducto = @idNuevoProducto;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newCategoria`( IN _nombreCategoria varchar(45) )
begin insert into categoria(CategoriaNombre) values(_nombreCategoria);
select idCategorias, CategoriaNombre from categoria where idCategorias = last_insert_id();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newMarca`(
IN _nombreMarca varchar(45)
)
begin
insert into marca(MarcaNombre) values(_nombreMarca);
select idMarcas, MarcaNombre from marca where idMarcas = last_insert_id();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newProveedor`(
IN _nombreProveedor varchar(45)
)
begin
insert into proveedores(ProveedoresNombre) values(_nombreProveedor);
select idProveedores, ProveedoresNombre from proveedores where idProveedores = last_insert_id();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevaVenta`(IN _descripcion varchar(150), _fecha date, _usuario varchar(75), _cliente int)
begin 

SET @hora = CURTIME();

insert into venta (ventaDescripcion, ventaFecha, ventaHora, ventaUsuario, codigoCliente) values(_descripcion, _fecha, @hora, _usuario, _cliente);

SET @idNuevaVenta = last_insert_id();

select idVenta from venta where idVenta = @idNuevaVenta;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reporteDia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporteDia`(
IN _fecha date
)
begin select V.ventaHora, DV.cantidadComprada, P.ProductoDescripcion, M.MarcaNombre, P.ProductocoPrecioVenta, P.ProductoExistencia, DV.idDetalleVenta from venta V inner join detalleventa DV on V.idVenta = DV.venta_idVentas inner join producto P on DV.Producto_idProducto = P.idProducto inner join marca M on P.Marca_idMarcas = M.idMarcas where V.ventaFecha = _fecha; end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setCategoriaNP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `setCategoriaNP`(

IN _categoriaNombre varchar(45)

)
begin

insert into categoria (CategoriaNombre) values (_categoriaNombre);

select last_insert_id();

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDetalleCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDetalleCompra`(

IN _descripcionProducto varchar(50), _precioCosto float, _idMarca int, _idProveedor int, _idCategoria int, _cantidadTotal int, _fecha date, _idProducto int)
begin

SET @hora = CURTIME();

insert into detallecompra(descripcionCompra, precioCostoCompra, idMarcas, idProveedores, idCategorias, fecha, hora, cantidadComprada, Producto_idProducto) values(_descripcionProducto, _precioCosto, _idMarca, _idProveedor, _idCategoria, _fecha, @hora, _cantidadTotal, _idProducto);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setMarcaNP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `setMarcaNP`(

IN _marcaNombre varchar(45)

)
begin

insert into marca (MarcaNombre) values (_marcaNombre);

select last_insert_id();

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setModifica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `setModifica`(IN nombre varchar(50), idProveedores int)
BEGIN update proveedores set proveedoresNombre="Wallas" where idProveedores=3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setModificaCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.43.238` PROCEDURE `setModificaCategoria`(IN nombre varchar(45), categoria int)
BEGIN update categoria set CategoriaNombre=nombre where idCategorias=categoria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setModificaMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `setModificaMarca`(IN nombre varchar(45), marcas int)
BEGIN update marca set MarcaNombre=nombre where idMarcas=marcas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setModificaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `setModificaProveedor`(IN nombre varchar(50), proveedor int)
BEGIN update proveedores set ProveedoresNombre=nombre where idProveedores=proveedor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setModificarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setModificarProducto`( IN _descripcionProducto varchar(150), _cantidadTotal int, _precioCosto float, _precioVenta float, _idProducto int, _idCategoria int, _idMarca int, _idProveedor int)
begin update producto set ProductoDescripcion = _descripcionProducto, ProductoCantidadTotal = ProductoCantidadTotal+_cantidadTotal, ProductoCoPrecioCosto = _precioCosto, ProductocoPrecioVenta = _precioVenta, Categoria_idCategorias = _idCategoria, Marca_idMarcas = _idMarca, Proveedores_idProveedores = _idProveedor, ProductoExistencia = ProductoExistencia+_cantidadTotal where idProducto = _idProducto; select * from producto where idProducto = _idProducto; end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setNuevoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `setNuevoProducto`(IN codigo int, descripcion varchar (150), categoria int, marca int, total int, precioCosto float, precioVenta float, proveedor int)
BEGIN insert into producto(idProducto, ProductoExistencia, ProductoDescripcion, ProductoCantidadTotal, ProductocoPrecioCosto, ProductocoPrecioVenta, Categoria_idCategorias, Marca_idMarcas, Proveedores_idProveedores) values(codigo, total, descripcion, total, precioCosto, precioVenta, categoria, marca, proveedor);

select * from producto where idProducto=codigo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setProveedorNP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setProveedorNP`(
IN _proveedorNombre varchar(50), _ProveedoresTelefonol varchar(15), _ProveedoresDireccion varchar(30), _ProveedoresNit varchar(15)
)
begin insert into proveedores(ProveedoresNombre, ProveedoresTelefonol, ProveedoresDireccion, ProveedoresNit) values (_proveedorNombre, _ProveedoresTelefonol, _ProveedoresDireccion, _ProveedoresNit); select last_insert_id();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCantCompDetalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `updateCantCompDetalleVenta`(IN _idDetalleVenta int, _nuevaCantidadComprada int)
begin update detalleventa set cantidadComprada = _nuevaCantidadComprada where idDetalleVenta = _idDetalleVenta; select V.ventaHora, DV.cantidadComprada, P.ProductoDescripcion, M.MarcaNombre, P.ProductocoPrecioVenta, P.ProductoExistencia, DV.idDetalleVenta from venta V inner join detalleventa DV on V.idVenta = DV.venta_idVentas inner join producto P on DV.Producto_idProducto = P.idProducto inner join marca M on P.Marca_idMarcas = M.idMarcas where DV.idDetalleVenta = _idDetalleVenta; end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCategoria`( IN _idCategoria int(11), _nombre varchar(45))
begin update categoria set CategoriaNombre = _nombre where idCategorias = _idCategoria; select * from categoria where idCategorias = _idCategoria; end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateDetalleCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`192.168.1.5` PROCEDURE `updateDetalleCompra`(

IN _idDetalleCompra int, _cantidadDisminuir int

)
begin 

update detallecompra set cantidadComprada = cantidadComprada - (cantidadComprada - _cantidadDisminuir) where idDetalleCompra = _idDetalleCompra;

select C.idDetalleCompra, C.hora, C.descripcionCompra, C.precioCostoCompra, C.cantidadComprada, M.MarcaNombre, PR.ProveedoresNombre, CT.CategoriaNombre from categoria CT inner join detallecompra C on CT.idCategorias  = C.idCategorias inner join marca M on C.idMarcas = M.idMarcas inner join proveedores PR on C.idProveedores = PR.idProveedores where C.idDetalleCompra = _idDetalleCompra;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateMarca`(
IN _idMarca int(11), _nombre varchar(45)
)
begin
update marca set MarcaNombre = _nombre where idMarcas = _idMarca;
select idMarcas, MarcaNombre from marca where idMarcas = _idMarca;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProveedor`(
IN _idProveedor int(11), _nombre varchar(45)
)
begin update proveedores set ProveedoresNombre = _nombre where idProveedores = _idProveedor;
select * from proveedores where idProveedores = _idProveedor;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-22 23:30:54
