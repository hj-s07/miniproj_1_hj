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
-- Table structure for table `board_comment`
--

DROP TABLE IF EXISTS `board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment` (
  `BRD_CMNT_NO` int NOT NULL AUTO_INCREMENT,
  `BRD_TYPE` char(1) DEFAULT NULL,
  `BRD_NO` int DEFAULT NULL,
  `BRD_CMNT_CTNT` mediumtext,
  `ETC1` varchar(45) DEFAULT NULL,
  `ETC2` varchar(45) DEFAULT NULL,
  `REGID` varchar(45) DEFAULT NULL,
  `REGDT` date DEFAULT (curdate()),
  `DELDT` date DEFAULT NULL,
  `DEL_FLAG` char(1) DEFAULT 'N',
  PRIMARY KEY (`BRD_CMNT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment`
--

LOCK TABLES `board_comment` WRITE;
/*!40000 ALTER TABLE `board_comment` DISABLE KEYS */;
INSERT INTO `board_comment` VALUES (5,'D',6,'저 구매하고 싶은 데! 가능한 날짜 알려주세요~',NULL,NULL,'user02','2024-11-07',NULL,'N'),(6,'D',5,'더 상세한 사진 받고 싶어요',NULL,NULL,'user04','2024-11-07',NULL,'N'),(7,'D',6,'더 자세한 사진 가능할까요?',NULL,NULL,'user04','2024-11-07',NULL,'N'),(8,'D',5,'asldfasdfasdf',NULL,NULL,'user03','2024-11-07','2024-11-07','Y'),(9,'D',6,'탐나네요',NULL,NULL,'user200','2024-11-07','2024-11-07','Y'),(10,'D',6,'좋아보여요\r\n',NULL,NULL,'user200','2024-11-07','2024-11-07','Y');
/*!40000 ALTER TABLE `board_comment` ENABLE KEYS */;
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
