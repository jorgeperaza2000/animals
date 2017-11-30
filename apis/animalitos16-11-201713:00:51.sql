-- MySQL dump 10.13  Distrib 5.7.20, for Linux (i686)
--
-- Host: localhost    Database: animalitos
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `limites`
--

DROP TABLE IF EXISTS `limites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_apuesta` varchar(2) NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `monto_limite` decimal(13,0) NOT NULL,
  `monto_acumulado` decimal(13,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8 COMMENT='Contiene datos de los limites de las apuestas por sorteo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limites`
--

LOCK TABLES `limites` WRITE;
/*!40000 ALTER TABLE `limites` DISABLE KEYS */;
INSERT INTO `limites` VALUES (1,'0',1,25000,3500),(2,'00',1,25000,25000),(3,'01',1,25000,4100),(4,'02',1,25000,4700),(5,'03',1,25000,4100),(6,'04',1,25000,3500),(7,'05',1,25000,4100),(8,'06',1,25000,3500),(9,'07',1,25000,3500),(10,'08',1,25000,3500),(11,'09',1,25000,3500),(12,'10',1,25000,9200),(13,'11',1,25000,5500),(14,'12',1,25000,3500),(15,'13',1,25000,3500),(16,'14',1,25000,3500),(17,'15',1,25000,3700),(18,'16',1,25000,19600),(19,'17',1,25000,3500),(20,'18',1,25000,6000),(21,'19',1,25000,3500),(22,'20',1,25000,4000),(23,'21',1,25000,3500),(24,'22',1,25000,3500),(25,'23',1,25000,3500),(26,'24',1,25000,3500),(27,'25',1,25000,3500),(28,'26',1,25000,3500),(29,'27',1,25000,3500),(30,'28',1,25000,3500),(31,'29',1,25000,3500),(32,'30',1,25000,3500),(33,'31',1,25000,3500),(34,'32',1,25000,3500),(35,'33',1,25000,19700),(36,'34',1,25000,3500),(37,'35',1,25000,3500),(38,'36',1,25000,3500),(39,'0',2,25000,3500),(40,'00',2,25000,25000),(41,'01',2,25000,4100),(42,'02',2,25000,4700),(43,'03',2,25000,4100),(44,'04',2,25000,3500),(45,'05',2,25000,4100),(46,'06',2,25000,3500),(47,'07',2,25000,3500),(48,'08',2,25000,3500),(49,'09',2,25000,3500),(50,'10',2,25000,9500),(51,'11',2,25000,3500),(52,'12',2,25000,3500),(53,'13',2,25000,3500),(54,'14',2,25000,3500),(55,'15',2,25000,3500),(56,'16',2,25000,3500),(57,'17',2,25000,3500),(58,'18',2,25000,3500),(59,'19',2,25000,3500),(60,'20',2,25000,3500),(61,'21',2,25000,3500),(62,'22',2,25000,3500),(63,'23',2,25000,3500),(64,'24',2,25000,3500),(65,'25',2,25000,3500),(66,'26',2,25000,3500),(67,'27',2,25000,3500),(68,'28',2,25000,3500),(69,'29',2,25000,7100),(70,'30',2,25000,3500),(71,'31',2,25000,3500),(72,'32',2,25000,3500),(73,'33',2,25000,3500),(74,'34',2,25000,3500),(75,'35',2,25000,3500),(76,'36',2,25000,3500),(77,'0',3,25000,3500),(78,'00',3,25000,25000),(79,'01',3,25000,3500),(80,'02',3,25000,3500),(81,'03',3,25000,3500),(82,'04',3,25000,3500),(83,'05',3,25000,3500),(84,'06',3,25000,3500),(85,'07',3,25000,3500),(86,'08',3,25000,3500),(87,'09',3,25000,3500),(88,'10',3,25000,8500),(89,'11',3,25000,3500),(90,'12',3,25000,3500),(91,'13',3,25000,3500),(92,'14',3,25000,3500),(93,'15',3,25000,3500),(94,'16',3,25000,3500),(95,'17',3,25000,3500),(96,'18',3,25000,3500),(97,'19',3,25000,3500),(98,'20',3,25000,3500),(99,'21',3,25000,3500),(100,'22',3,25000,3500),(101,'23',3,25000,3500),(102,'24',3,25000,3500),(103,'25',3,25000,3500),(104,'26',3,25000,3500),(105,'27',3,25000,3500),(106,'28',3,25000,3500),(107,'29',3,25000,3500),(108,'30',3,25000,3500),(109,'31',3,25000,3500),(110,'32',3,25000,3500),(111,'33',3,25000,3500),(112,'34',3,25000,3500),(113,'35',3,25000,3500),(114,'36',3,25000,3500),(115,'0',4,25000,3500),(116,'00',4,25000,25000),(117,'01',4,25000,3500),(118,'02',4,25000,3500),(119,'03',4,25000,3500),(120,'04',4,25000,3500),(121,'05',4,25000,3500),(122,'06',4,25000,3500),(123,'07',4,25000,3500),(124,'08',4,25000,4000),(125,'09',4,25000,3500),(126,'10',4,25000,3700),(127,'11',4,25000,4400),(128,'12',4,25000,3500),(129,'13',4,25000,3700),(130,'14',4,25000,3500),(131,'15',4,25000,4100),(132,'16',4,25000,3700),(133,'17',4,25000,4000),(134,'18',4,25000,3500),(135,'19',4,25000,4700),(136,'20',4,25000,5000),(137,'21',4,25000,4500),(138,'22',4,25000,4500),(139,'23',4,25000,5200),(140,'24',4,25000,4500),(141,'25',4,25000,5100),(142,'26',4,25000,4500),(143,'27',4,25000,4500),(144,'28',4,25000,4500),(145,'29',4,25000,4500),(146,'30',4,25000,4500),(147,'31',4,25000,4500),(148,'32',4,25000,4500),(149,'33',4,25000,4500),(150,'34',4,25000,4500),(151,'35',4,25000,4500),(152,'36',4,25000,4800),(153,'0',5,25000,3500),(154,'00',5,25000,25000),(155,'01',5,25000,3500),(156,'02',5,25000,3500),(157,'03',5,25000,3500),(158,'04',5,25000,3500),(159,'05',5,25000,3500),(160,'06',5,25000,3500),(161,'07',5,25000,3500),(162,'08',5,25000,4500),(163,'09',5,25000,3500),(164,'10',5,25000,3500),(165,'11',5,25000,4200),(166,'12',5,25000,3500),(167,'13',5,25000,3700),(168,'14',5,25000,3500),(169,'15',5,25000,4100),(170,'16',5,25000,3700),(171,'17',5,25000,4000),(172,'18',5,25000,3500),(173,'19',5,25000,3700),(174,'20',5,25000,4000),(175,'21',5,25000,3500),(176,'22',5,25000,3500),(177,'23',5,25000,4200),(178,'24',5,25000,3500),(179,'25',5,25000,4100),(180,'26',5,25000,3500),(181,'27',5,25000,3500),(182,'28',5,25000,3500),(183,'29',5,25000,3500),(184,'30',5,25000,3500),(185,'31',5,25000,3500),(186,'32',5,25000,3500),(187,'33',5,25000,3700),(188,'34',5,25000,3500),(189,'35',5,25000,3500),(190,'36',5,25000,3800),(191,'0',6,25000,3500),(192,'00',6,25000,25000),(193,'01',6,25000,3500),(194,'02',6,25000,3500),(195,'03',6,25000,3500),(196,'04',6,25000,3500),(197,'05',6,25000,3500),(198,'06',6,25000,3500),(199,'07',6,25000,3500),(200,'08',6,25000,4000),(201,'09',6,25000,3500),(202,'10',6,25000,3500),(203,'11',6,25000,3500),(204,'12',6,25000,3500),(205,'13',6,25000,3500),(206,'14',6,25000,3500),(207,'15',6,25000,3500),(208,'16',6,25000,3500),(209,'17',6,25000,3500),(210,'18',6,25000,3500),(211,'19',6,25000,3500),(212,'20',6,25000,3500),(213,'21',6,25000,3500),(214,'22',6,25000,3500),(215,'23',6,25000,3500),(216,'24',6,25000,3500),(217,'25',6,25000,3500),(218,'26',6,25000,3500),(219,'27',6,25000,3500),(220,'28',6,25000,3500),(221,'29',6,25000,3500),(222,'30',6,25000,3500),(223,'31',6,25000,3500),(224,'32',6,25000,3500),(225,'33',6,25000,3500),(226,'34',6,25000,3500),(227,'35',6,25000,3500),(228,'36',6,25000,3500),(229,'0',7,25000,3500),(230,'00',7,25000,3500),(231,'01',7,25000,3500),(232,'02',7,25000,3500),(233,'03',7,25000,3500),(234,'04',7,25000,3500),(235,'05',7,25000,3500),(236,'06',7,25000,3500),(237,'07',7,25000,3500),(238,'08',7,25000,3500),(239,'09',7,25000,3500),(240,'10',7,25000,3500),(241,'11',7,25000,3500),(242,'12',7,25000,3500),(243,'13',7,25000,3500),(244,'14',7,25000,3500),(245,'15',7,25000,3500),(246,'16',7,25000,3500),(247,'17',7,25000,3500),(248,'18',7,25000,3500),(249,'19',7,25000,3500),(250,'20',7,25000,3500),(251,'21',7,25000,3500),(252,'22',7,25000,3500),(253,'23',7,25000,3500),(254,'24',7,25000,3500),(255,'25',7,25000,3500),(256,'26',7,25000,3500),(257,'27',7,25000,3500),(258,'28',7,25000,3500),(259,'29',7,25000,3500),(260,'30',7,25000,3500),(261,'31',7,25000,3500),(262,'32',7,25000,3500),(263,'33',7,25000,3500),(264,'34',7,25000,3500),(265,'35',7,25000,3500),(266,'36',7,25000,3500),(267,'0',8,25000,3500),(268,'00',8,25000,3500),(269,'01',8,25000,3500),(270,'02',8,25000,3500),(271,'03',8,25000,3500),(272,'04',8,25000,3500),(273,'05',8,25000,3500),(274,'06',8,25000,3500),(275,'07',8,25000,3500),(276,'08',8,25000,3500),(277,'09',8,25000,3500),(278,'10',8,25000,3500),(279,'11',8,25000,3500),(280,'12',8,25000,3500),(281,'13',8,25000,3500),(282,'14',8,25000,3500),(283,'15',8,25000,3500),(284,'16',8,25000,3500),(285,'17',8,25000,3500),(286,'18',8,25000,3500),(287,'19',8,25000,3500),(288,'20',8,25000,3500),(289,'21',8,25000,3500),(290,'22',8,25000,3500),(291,'23',8,25000,3500),(292,'24',8,25000,3500),(293,'25',8,25000,3500),(294,'26',8,25000,3500),(295,'27',8,25000,3500),(296,'28',8,25000,3500),(297,'29',8,25000,3500),(298,'30',8,25000,3500),(299,'31',8,25000,3500),(300,'32',8,25000,3500),(301,'33',8,25000,3500),(302,'34',8,25000,3500),(303,'35',8,25000,3500),(304,'36',8,25000,3500);
/*!40000 ALTER TABLE `limites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados`
--

DROP TABLE IF EXISTS `resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `numero_apuesta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha` (`fecha`,`id_sorteo`,`numero_apuesta`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados`
--

LOCK TABLES `resultados` WRITE;
/*!40000 ALTER TABLE `resultados` DISABLE KEYS */;
INSERT INTO `resultados` VALUES (1,'2017-11-15',1,16),(2,'2017-11-15',1,33),(3,'2017-11-15',2,29),(4,'2017-11-15',3,12),(5,'2017-11-15',4,25),(6,'2017-11-15',5,28),(7,'2017-11-15',6,29),(8,'2017-11-15',7,2),(9,'2017-11-15',8,22),(20,'2017-11-16',3,14),(19,'2017-11-16',2,16),(18,'2017-11-16',1,3);
/*!40000 ALTER TABLE `resultados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `generarTicketsPremiados` AFTER INSERT ON `resultados` FOR EACH ROW UPDATE ticket_det SET estatus = 1, monto_premiado = monto * (1*30), pagado = 0 WHERE id_sorteo = NEW.id_sorteo AND numero_apuesta = NEW.numero_apuesta AND fecha = NEW.fecha AND estatus != 3 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `quitarPremiadosAnterioresNoPagados` AFTER INSERT ON `resultados` FOR EACH ROW UPDATE ticket_det SET monto_premiado = 0, estatus = 0 WHERE id_sorteo = NEW.id_sorteo AND numero_apuesta != NEW.numero_apuesta AND fecha = NEW.fecha AND pagado = 0 AND estatus != 3 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sorteos`
--

DROP TABLE IF EXISTS `sorteos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sorteos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `sorteo` varchar(100) NOT NULL,
  `hora_limite` time NOT NULL,
  `estatus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Contiene datos sobre los sorteos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sorteos`
--

LOCK TABLES `sorteos` WRITE;
/*!40000 ALTER TABLE `sorteos` DISABLE KEYS */;
INSERT INTO `sorteos` VALUES (1,'@LA 10','@LottoActivo 10','09:55:00',1),(2,'@LA 11','@LottoActivo 11','10:55:00',1),(3,'@LA 12','@LottoActivo 12','11:55:00',1),(4,'@LA 1','@LottoActivo 1','12:55:00',1),(5,'@LA 4','@LottoActivo 4','15:55:00',0),(6,'@LA 5','@LottoActivo 5','16:55:00',0),(7,'@LA 6','@LottoActivo 6','17:55:00',0),(8,'@LA 7','@LottoActivo 7','18:55:00',0);
/*!40000 ALTER TABLE `sorteos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_det`
--

DROP TABLE IF EXISTS `ticket_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `numero_apuesta` varchar(2) NOT NULL,
  `nombre_apuesta` varchar(100) NOT NULL,
  `id_sorteo` int(11) NOT NULL,
  `monto` decimal(13,0) NOT NULL DEFAULT '0',
  `estatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Pendiente, 1: Premiado, 2: Perdedor, 3: Anulado',
  `monto_premiado` decimal(13,0) NOT NULL DEFAULT '0',
  `pagado` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No, 1: Si',
  `fecha_pagado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ticket` (`id_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='Contiene datos del detalle del ticket vendido';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_det`
--

LOCK TABLES `ticket_det` WRITE;
/*!40000 ALTER TABLE `ticket_det` DISABLE KEYS */;
INSERT INTO `ticket_det` VALUES (1,'2017-11-15',1,'16','Oso',1,100,1,3000,1,'2017-11-16 00:42:50'),(2,'2017-11-15',2,'33','Pescado',1,200,1,6000,0,NULL),(3,'2017-11-15',3,'16','Oso',1,300,0,0,0,NULL),(4,'2017-11-15',4,'16','Oso',1,5000,0,0,0,NULL),(5,'2017-11-15',4,'33','Pescado',1,5000,1,150000,0,NULL),(6,'2017-11-16',5,'33','Pescado',5,200,0,0,0,NULL),(7,'2017-11-16',6,'15','Zorro',4,300,0,0,0,NULL),(8,'2017-11-16',6,'15','Zorro',5,300,0,0,0,NULL),(9,'2017-11-16',6,'25','Gallina',4,300,1,9000,0,NULL),(10,'2017-11-16',6,'25','Gallina',5,300,0,0,0,NULL),(11,'2017-11-16',7,'15','Zorro',4,300,0,0,0,NULL),(12,'2017-11-16',7,'15','Zorro',5,300,0,0,0,NULL),(13,'2017-11-16',7,'25','Gallina',4,300,1,9000,0,NULL),(14,'2017-11-16',7,'25','Gallina',5,300,0,0,0,NULL),(15,'2017-11-16',7,'36','Culebra',4,300,0,0,0,NULL),(16,'2017-11-16',7,'36','Culebra',5,300,0,0,0,NULL),(17,'2017-11-16',8,'08','Raton',4,500,0,0,0,NULL),(18,'2017-11-16',8,'08','Raton',5,500,0,0,0,NULL),(19,'2017-11-16',8,'11','Gato',4,500,0,0,0,NULL),(20,'2017-11-16',8,'11','Gato',5,500,0,0,0,NULL),(21,'2017-11-16',8,'17','Pavo',4,500,0,0,0,NULL),(22,'2017-11-16',8,'17','Pavo',5,500,0,0,0,NULL),(23,'2017-11-16',8,'20','Cochino',4,500,0,0,0,NULL),(24,'2017-11-16',8,'20','Cochino',5,500,0,0,0,NULL),(25,'2017-11-16',8,'23','Zebra',4,500,0,0,0,NULL),(26,'2017-11-16',8,'23','Zebra',5,500,0,0,0,NULL),(27,'2017-11-16',9,'11','Gato',4,200,0,0,0,NULL),(28,'2017-11-16',9,'11','Gato',5,200,0,0,0,NULL),(29,'2017-11-16',9,'13','Mono',4,200,0,0,0,NULL),(30,'2017-11-16',9,'13','Mono',5,200,0,0,0,NULL),(31,'2017-11-16',9,'16','Oso',4,200,0,0,0,NULL),(32,'2017-11-16',9,'16','Oso',5,200,0,0,0,NULL),(33,'2017-11-16',9,'19','Chivo',4,200,0,0,0,NULL),(34,'2017-11-16',9,'19','Chivo',5,200,0,0,0,NULL),(35,'2017-11-16',9,'23','Zebra',4,200,0,0,0,NULL),(36,'2017-11-16',9,'23','Zebra',5,200,0,0,0,NULL),(37,'2017-11-16',10,'11','Gato',4,200,0,0,0,NULL),(38,'2017-11-16',11,'10','Tigre',4,200,0,0,0,NULL),(39,'2017-11-16',12,'19','Chivo',4,1000,0,0,0,NULL),(40,'2017-11-16',12,'20','Cochino',4,1000,0,0,0,NULL),(41,'2017-11-16',12,'21','Gallo',4,1000,0,0,0,NULL),(42,'2017-11-16',12,'22','Camello',4,1000,0,0,0,NULL),(43,'2017-11-16',12,'23','Zebra',4,1000,0,0,0,NULL),(44,'2017-11-16',12,'24','Iguana',4,1000,0,0,0,NULL),(45,'2017-11-16',12,'25','Gallina',4,1000,0,0,0,NULL),(46,'2017-11-16',12,'26','Vaca',4,1000,0,0,0,NULL),(47,'2017-11-16',12,'27','Perro',4,1000,0,0,0,NULL),(48,'2017-11-16',12,'28','Zamuro',4,1000,0,0,0,NULL),(49,'2017-11-16',12,'29','Elefante',4,1000,0,0,0,NULL),(50,'2017-11-16',12,'30','Caiman',4,1000,0,0,0,NULL),(51,'2017-11-16',12,'31','Lapa',4,1000,0,0,0,NULL),(52,'2017-11-16',12,'32','Ardilla',4,1000,0,0,0,NULL),(53,'2017-11-16',12,'33','Pescado',4,1000,0,0,0,NULL),(54,'2017-11-16',12,'34','Venado',4,1000,0,0,0,NULL),(55,'2017-11-16',12,'35','Jirafa',4,1000,0,0,0,NULL),(56,'2017-11-16',12,'36','Culebra',4,1000,0,0,0,NULL);
/*!40000 ALTER TABLE `ticket_det` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualiza_monto_acumulado` AFTER INSERT ON `ticket_det` FOR EACH ROW UPDATE limites SET monto_acumulado = monto_acumulado + NEW.monto 
WHERE numero_apuesta = NEW.numero_apuesta AND id_sorteo = NEW.id_sorteo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `numero_ticket` int(11) NOT NULL,
  `serial` int(11) NOT NULL,
  `total_apuestas` int(11) NOT NULL,
  `total_monto` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Activo, 1: Anulado',
  `id_usuario` int(11) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Contiene datos del encabezado de los tickets vendidos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2017-11-15','00:41:29',1,30001,1,100,0,2,'CruzVerde'),(2,'2017-11-15','00:41:40',2,30005,1,200,0,2,'CruzVerde'),(3,'2017-11-15','00:41:50',3,30010,1,300,0,2,'CruzVerde'),(4,'2017-11-15','00:42:01',4,30011,2,10000,0,2,'CruzVerde'),(5,'2017-11-16','08:23:38',5,30012,1,200,0,2,'CruzVerde'),(6,'2017-11-16','08:23:46',6,30014,4,1200,0,2,'CruzVerde'),(7,'2017-11-16','08:24:06',7,30016,6,1800,0,2,'CruzVerde'),(8,'2017-11-16','08:24:44',8,30017,10,5000,0,2,'CruzVerde'),(9,'2017-11-16','08:24:57',9,30019,10,2000,0,2,'CruzVerde'),(10,'2017-11-16','08:48:49',10,30022,1,200,0,2,'CruzVerde'),(11,'2017-11-16','08:53:05',11,30027,1,200,0,2,'CruzVerde'),(12,'2017-11-16','12:07:57',8,30032,18,18000,0,2,'CruzVerde');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `clave` varchar(250) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `porc_comision` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'marquiel','1234','CruzVerde',12,'Vendedor'),(2,'jorge','1234','CruzVerde',12,'Admin'),(3,'tamanaco','1234','Tamanaco',12,'Admin');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_estatus_ticket_det`
--

DROP TABLE IF EXISTS `vw_estatus_ticket_det`;
/*!50001 DROP VIEW IF EXISTS `vw_estatus_ticket_det`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_estatus_ticket_det` AS SELECT 
 1 AS `id_ticket`,
 1 AS `estatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_monto_pagado_ticket_det`
--

DROP TABLE IF EXISTS `vw_monto_pagado_ticket_det`;
/*!50001 DROP VIEW IF EXISTS `vw_monto_pagado_ticket_det`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_monto_pagado_ticket_det` AS SELECT 
 1 AS `id_ticket`,
 1 AS `monto_apuesta`,
 1 AS `monto_premiado`,
 1 AS `monto_pagado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_reporte_ticket_det`
--

DROP TABLE IF EXISTS `vw_reporte_ticket_det`;
/*!50001 DROP VIEW IF EXISTS `vw_reporte_ticket_det`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_reporte_ticket_det` AS SELECT 
 1 AS `id`,
 1 AS `id_ticket`,
 1 AS `numero_apuesta`,
 1 AS `apuesta`,
 1 AS `id_sorteo`,
 1 AS `sorteo`,
 1 AS `monto_apuesta`,
 1 AS `monto_premiado`,
 1 AS `pagado`,
 1 AS `fecha_pagado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_reporte_ticket_gral`
--

DROP TABLE IF EXISTS `vw_reporte_ticket_gral`;
/*!50001 DROP VIEW IF EXISTS `vw_reporte_ticket_gral`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_reporte_ticket_gral` AS SELECT 
 1 AS `id`,
 1 AS `agencia`,
 1 AS `fecha`,
 1 AS `hora`,
 1 AS `numero_ticket`,
 1 AS `total_monto`,
 1 AS `estatusTicket`,
 1 AS `estatus`,
 1 AS `monto_premiado`,
 1 AS `monto_pagado`,
 1 AS `pagado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_reporte_ventas_diarias`
--

DROP TABLE IF EXISTS `vw_reporte_ventas_diarias`;
/*!50001 DROP VIEW IF EXISTS `vw_reporte_ventas_diarias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_reporte_ventas_diarias` AS SELECT 
 1 AS `fecha`,
 1 AS `agencia`,
 1 AS `venta`,
 1 AS `premios`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_reporte_ventas_generales`
--

DROP TABLE IF EXISTS `vw_reporte_ventas_generales`;
/*!50001 DROP VIEW IF EXISTS `vw_reporte_ventas_generales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_reporte_ventas_generales` AS SELECT 
 1 AS `fecha`,
 1 AS `agencia`,
 1 AS `venta`,
 1 AS `comision`,
 1 AS `premios`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_resultados`
--

DROP TABLE IF EXISTS `vw_resultados`;
/*!50001 DROP VIEW IF EXISTS `vw_resultados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_resultados` AS SELECT 
 1 AS `id`,
 1 AS `id_sorteo`,
 1 AS `sorteo`,
 1 AS `numero_apuesta`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'animalitos'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `abrir_sorteos` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `abrir_sorteos` ON SCHEDULE EVERY 1 DAY STARTS '2017-10-01 20:19:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE sorteos SET estatus = 0 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `cerrar_sorteo` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `cerrar_sorteo` ON SCHEDULE EVERY 1 HOUR STARTS '2017-10-03 07:55:00' ON COMPLETION NOT PRESERVE ENABLE DO IF CURRENT_TIME() > "09:00:00" AND CURRENT_TIME() < "20:00:00" THEN 
	UPDATE sorteos SET estatus = 1 WHERE hora_limite <= CURRENT_TIME();
END IF */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `resetear_monto_acumulado` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `resetear_monto_acumulado` ON SCHEDULE EVERY 1 DAY STARTS '2017-09-16 23:49:00' ON COMPLETION NOT PRESERVE ENABLE DO update limites
set monto_acumulado = 0 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'animalitos'
--
/*!50003 DROP FUNCTION IF EXISTS `getNumeroTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getNumeroTicket`(`p_agencia` VARCHAR(200) CHARSET utf8) RETURNS int(11)
BEGIN
DECLARE next_numero_ticket INT(11);
SELECT IF(COUNT(*)>0,COUNT(*)+1,1) INTO next_numero_ticket FROM tickets WHERE DATE_FORMAT(fecha, "%Y-%m-%d") = CURDATE() AND agencia = p_agencia;
RETURN next_numero_ticket;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getSerialTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getSerialTicket`(`p_semilla` INT(1)) RETURNS int(11)
    NO SQL
BEGIN
DECLARE current_serial_ticket INT(11);
SELECT IF(COUNT(*)>0,MAX(serial) + p_semilla,30001) INTO current_serial_ticket FROM tickets WHERE DATE_FORMAT(fecha, "%Y-%m-%d") = CURDATE();
RETURN current_serial_ticket;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_estatus_ticket_det`
--

/*!50001 DROP VIEW IF EXISTS `vw_estatus_ticket_det`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_estatus_ticket_det` AS select `vw_monto_pagado_ticket_det`.`id_ticket` AS `id_ticket`,(case when (`vw_monto_pagado_ticket_det`.`monto_premiado` > `vw_monto_pagado_ticket_det`.`monto_pagado`) then 'Pago Parcial' when (`vw_monto_pagado_ticket_det`.`monto_premiado` = `vw_monto_pagado_ticket_det`.`monto_pagado`) then 'Pagado' when ((`vw_monto_pagado_ticket_det`.`monto_premiado` > 0) and isnull(`vw_monto_pagado_ticket_det`.`monto_pagado`)) then 'Ganador Por Pagar' end) AS `estatus` from `vw_monto_pagado_ticket_det` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_monto_pagado_ticket_det`
--

/*!50001 DROP VIEW IF EXISTS `vw_monto_pagado_ticket_det`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_monto_pagado_ticket_det` AS select `a`.`id_ticket` AS `id_ticket`,sum(`a`.`monto`) AS `monto_apuesta`,sum(`a`.`monto_premiado`) AS `monto_premiado`,(select sum(`ticket_det`.`monto_premiado`) from `ticket_det` where ((`ticket_det`.`id_ticket` = `a`.`id_ticket`) and (`ticket_det`.`pagado` = 1))) AS `monto_pagado` from `ticket_det` `a` where (`a`.`monto_premiado` > 0) group by `a`.`id_ticket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reporte_ticket_det`
--

/*!50001 DROP VIEW IF EXISTS `vw_reporte_ticket_det`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reporte_ticket_det` AS select `a`.`id` AS `id`,`a`.`id_ticket` AS `id_ticket`,`a`.`numero_apuesta` AS `numero_apuesta`,concat(`a`.`numero_apuesta`,'-',`a`.`nombre_apuesta`) AS `apuesta`,`a`.`id_sorteo` AS `id_sorteo`,`b`.`sorteo` AS `sorteo`,`a`.`monto` AS `monto_apuesta`,`a`.`monto_premiado` AS `monto_premiado`,`a`.`pagado` AS `pagado`,if(isnull(date_format(`a`.`fecha_pagado`,'%d-%m-%Y %h:%i:%s')),'NO',concat('Si, el ',convert(date_format(`a`.`fecha_pagado`,'%d-%m-%Y') using utf8mb4),' a las ',convert(date_format(`a`.`fecha_pagado`,'%h:%i:%s') using utf8mb4))) AS `fecha_pagado` from (`ticket_det` `a` join `sorteos` `b`) where (`a`.`id_sorteo` = `b`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reporte_ticket_gral`
--

/*!50001 DROP VIEW IF EXISTS `vw_reporte_ticket_gral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reporte_ticket_gral` AS select `a`.`id` AS `id`,`a`.`agencia` AS `agencia`,date_format(`a`.`fecha`,'%d-%m-%Y') AS `fecha`,`a`.`hora` AS `hora`,`a`.`numero_ticket` AS `numero_ticket`,`a`.`total_monto` AS `total_monto`,if((`a`.`estatus` = 0),'Activo','Anulado') AS `estatusTicket`,(select `vw_estatus_ticket_det`.`estatus` from `vw_estatus_ticket_det` where (`vw_estatus_ticket_det`.`id_ticket` = `a`.`id`)) AS `estatus`,sum(`b`.`monto_premiado`) AS `monto_premiado`,(select `vw_monto_pagado_ticket_det`.`monto_pagado` from `vw_monto_pagado_ticket_det` where (`vw_monto_pagado_ticket_det`.`id_ticket` = `a`.`id`)) AS `monto_pagado`,if(isnull(date_format(max(`b`.`fecha_pagado`),'%d-%m-%Y %h:%i:%s')),'NO',concat('Si, el ',convert(date_format(max(`b`.`fecha_pagado`),'%d-%m-%Y') using utf8mb4),' a las ',convert(date_format(max(`b`.`fecha_pagado`),'%h:%i:%s') using utf8mb4))) AS `pagado` from (`tickets` `a` join `ticket_det` `b`) where (`a`.`id` = `b`.`id_ticket`) group by `a`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reporte_ventas_diarias`
--

/*!50001 DROP VIEW IF EXISTS `vw_reporte_ventas_diarias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reporte_ventas_diarias` AS select `ticket_det`.`fecha` AS `fecha`,`tickets`.`agencia` AS `agencia`,sum(`ticket_det`.`monto`) AS `venta`,sum(`ticket_det`.`monto_premiado`) AS `premios`,(sum(`ticket_det`.`monto`) - sum(`ticket_det`.`monto_premiado`)) AS `total` from (`ticket_det` join `tickets`) where ((`tickets`.`id` = `ticket_det`.`id_ticket`) and (`tickets`.`estatus` = 0)) group by `ticket_det`.`fecha`,`tickets`.`agencia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reporte_ventas_generales`
--

/*!50001 DROP VIEW IF EXISTS `vw_reporte_ventas_generales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reporte_ventas_generales` AS select `ticket_det`.`fecha` AS `fecha`,`tickets`.`agencia` AS `agencia`,sum(`ticket_det`.`monto`) AS `venta`,(sum(`ticket_det`.`monto`) * 0.12) AS `comision`,sum(`ticket_det`.`monto_premiado`) AS `premios`,((sum(`ticket_det`.`monto`) - (sum(`ticket_det`.`monto`) * 0.12)) - sum(`ticket_det`.`monto_premiado`)) AS `total` from (`ticket_det` join `tickets`) where ((`ticket_det`.`id_ticket` = `tickets`.`id`) and (`tickets`.`estatus` = 0)) group by `ticket_det`.`fecha`,`tickets`.`agencia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_resultados`
--

/*!50001 DROP VIEW IF EXISTS `vw_resultados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_resultados` AS select `a`.`id` AS `id`,`a`.`id_sorteo` AS `id_sorteo`,`b`.`sorteo` AS `sorteo`,`a`.`numero_apuesta` AS `numero_apuesta`,`a`.`fecha` AS `fecha` from (`resultados` `a` join `sorteos` `b`) where ((`a`.`id_sorteo` = `b`.`id`) and `a`.`id` in (select max(`resultados`.`id`) from `resultados` group by `resultados`.`id_sorteo`,`resultados`.`fecha`)) */;
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

-- Dump completed on 2017-11-16 13:00:52
