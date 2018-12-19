-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_twinships
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table_skibdata`
--

DROP TABLE IF EXISTS `table_skibdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `table_skibdata` (
  `skib_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `skib_id` int(11) NOT NULL,
  `skib_fart` int(11) NOT NULL,
  `skib_kurs` int(11) NOT NULL,
  `skib_GPS_N` varchar(45) DEFAULT NULL,
  `skib_GPS_E` varchar(45) DEFAULT NULL,
  `skib_vindretning` int(11) NOT NULL,
  `skib_vindstyrke` int(11) NOT NULL,
  `skib_Otemp` int(11) NOT NULL,
  `skib_motor01_omdrejninger` int(11) NOT NULL,
  `skib_motor02_omdrejninger` int(11) NOT NULL,
  PRIMARY KEY (`skib_log_id`),
  UNIQUE KEY `skib_log_id_UNIQUE` (`skib_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_skibdata`
--

LOCK TABLES `table_skibdata` WRITE;
/*!40000 ALTER TABLE `table_skibdata` DISABLE KEYS */;
INSERT INTO `table_skibdata` VALUES (1,1,10,270,'55°07 25.2\"N','11°27 55.8\"E',90,5,20,10000,11000),(2,1,11,275,'55°07 25.1\"N','11°27 55.9\"E',87,4,21,10050,10950),(3,2,5,90,'45°8 23.2\"N','15°28 55.8\"E',270,15,15,15000,14950),(4,3,20,180,'13°8 23.2\"N','25°18 55.8\"E',100,25,5,5001,5051),(5,4,50,231,'10°07 25.2\"N','11°27 55.8\"E',1,50,5,10,100000);
/*!40000 ALTER TABLE `table_skibdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 13:46:50
