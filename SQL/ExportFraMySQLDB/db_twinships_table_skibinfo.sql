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
-- Table structure for table `table_skibinfo`
--

DROP TABLE IF EXISTS `table_skibinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `table_skibinfo` (
  `skib_id` int(11) NOT NULL AUTO_INCREMENT,
  `skib_navn` varchar(45) DEFAULT NULL,
  `skib_hjemhavn` varchar(45) DEFAULT NULL,
  `skib_kaldesignal` varchar(45) DEFAULT NULL,
  `skib_MMSI` int(11) NOT NULL,
  `skib_anvendelse` varchar(1000) DEFAULT NULL,
  `skib_BRT_BT_TONS` int(11) NOT NULL,
  `skib_længde` int(11) NOT NULL,
  `skib_max_crew` int(11) NOT NULL,
  PRIMARY KEY (`skib_id`),
  UNIQUE KEY `skib_id_UNIQUE` (`skib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_skibinfo`
--

LOCK TABLES `table_skibinfo` WRITE;
/*!40000 ALTER TABLE `table_skibinfo` DISABLE KEYS */;
INSERT INTO `table_skibinfo` VALUES (1,'Skibladner 2','København','OWYE',219000446,'Skibet anvendes som øvelsesskib for FDF Københavns Søkreds',43,18500,24),(2,'Le Stenboeg','Nyrup','LMAO',123456789,'Skibet anvendes til skolebrug',85,200,1),(3,'Feva','Skælskør','FEVA',111234567,'Skibet anvendes til jollesejlads',1,250,3),(4,'postmanShip','postmandoe','POST',111123456,'Tester post requests i hele dk',10000,100,6969),(5,'postmanShip2','postmandoe2','POST',111123455,'Tester post requests i hele dk',10000,100,6969);
/*!40000 ALTER TABLE `table_skibinfo` ENABLE KEYS */;
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
