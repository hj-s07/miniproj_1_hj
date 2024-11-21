CREATE DATABASE  IF NOT EXISTS `subway_station_proj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `subway_station_proj`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: subway_station_proj
-- ------------------------------------------------------
-- Server version	8.0.40

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
  `INFO_BRD_TITLE` varchar(45) NOT NULL,
  `INFO_BRD_CTNT` longtext NOT NULL,
  `INFO_BRD_CATE` varchar(45) DEFAULT NULL,
  `INFO_BRD_HIT` int DEFAULT '0',
  `ETC2` varchar(45) DEFAULT NULL,
  `ETC3` varchar(45) DEFAULT NULL,
  `ETC4` varchar(45) DEFAULT NULL,
  `ETC5` varchar(45) DEFAULT NULL,
  `INFO_BRD_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REGID` varchar(45) DEFAULT NULL,
  `INFO_BRD_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDID` int DEFAULT NULL,
  `INFO_BRD_deleted_at` timestamp NULL DEFAULT NULL,
  `INFO_BRD_is_deleted` char(1) DEFAULT 'N',
  PRIMARY KEY (`INFO_BRD_NO`),
  KEY `info_board_ibfk_1_idx` (`INFO_BRD_CATE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_board`
--

LOCK TABLES `info_board` WRITE;
/*!40000 ALTER TABLE `info_board` DISABLE KEYS */;
INSERT INTO `info_board` VALUES (17,'지금 고속터미널에서 사평 사이에 차가 멈췄어요!','얼마나 정체 될까요?','고속터미널',1,NULL,NULL,NULL,NULL,'2024-11-07 02:19:30','user03','2024-11-07 02:19:30',NULL,NULL,'N'),(18,'저도 지금 고속터미널하고 사평 사이에 멈춰있어요!','다들 지금 아시는 정보 있으신가요?','고속터미널',2,NULL,NULL,NULL,NULL,'2024-11-07 02:20:26','user04','2024-11-07 02:20:26',NULL,NULL,'N'),(19,'저도 오늘 고속터미널역에서 막혔어요','진짜루','고속터미널',3,NULL,NULL,NULL,NULL,'2024-11-07 04:42:02','user201','2024-11-07 04:42:19',NULL,NULL,'N'),(20,'저도 오늘 막혔어요','진짜로','고속터미널',2,NULL,NULL,NULL,NULL,'2024-11-07 04:52:15','user200','2024-11-07 04:52:28',NULL,'2024-11-07 04:52:37','y');
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

-- Dump completed on 2024-11-10 17:39:59
