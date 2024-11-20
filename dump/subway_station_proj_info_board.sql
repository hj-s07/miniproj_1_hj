-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: subway_station_proj
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `info_board`
--

DROP TABLE IF EXISTS `info_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_board` (
  `INFO_BRD_NO` int NOT NULL AUTO_INCREMENT,
  `INFO_BRD_TITL` varchar(45) NOT NULL,
  `INFO_BRD_CTNT` longtext NOT NULL,
  `INFO_BRD_CATE` int NOT NULL,
  `ETC1` varchar(45) DEFAULT NULL,
  `ETC2` varchar(45) DEFAULT NULL,
  `ETC3` varchar(45) DEFAULT NULL,
  `ETC4` varchar(45) DEFAULT NULL,
  `ETC5` varchar(45) DEFAULT NULL,
  `REGDT` date NOT NULL DEFAULT (curdate()),
  `REGID` int NOT NULL,
  `UPDDT` date DEFAULT NULL,
  `UPDID` int DEFAULT NULL,
  `DELDT` date DEFAULT NULL,
  `DEL_FLAG` char(1) DEFAULT 'N',
  PRIMARY KEY (`INFO_BRD_NO`),
  KEY `info_board_ibfk_1_idx` (`INFO_BRD_CATE`),
  CONSTRAINT `info_board_ibfk_1` FOREIGN KEY (`INFO_BRD_CATE`) REFERENCES `board_category` (`BRD_CATE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_board`
--

LOCK TABLES `info_board` WRITE;
/*!40000 ALTER TABLE `info_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 13:41:26
