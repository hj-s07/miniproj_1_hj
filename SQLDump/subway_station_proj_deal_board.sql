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
-- Table structure for table `deal_board`
--

DROP TABLE IF EXISTS `deal_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_board` (
  `DEAL_BRD_NO` int unsigned NOT NULL AUTO_INCREMENT,
  `DEAL_BRD_TITL` varchar(45) NOT NULL,
  `DEAL_BRD_CTNT` longtext NOT NULL,
  `DEAL_BRD_CATE` varchar(45) NOT NULL,
  `DEAL_BRD_PRICE` int NOT NULL DEFAULT '0',
  `DEAL_BRD_IMG_NAME` varchar(200) NOT NULL,
  `DEAL_BRD_STATE` char(1) DEFAULT 'Y',
  `HIT` int DEFAULT '0',
  `ETC2` varchar(45) DEFAULT NULL,
  `ETC3` varchar(45) DEFAULT NULL,
  `REGDT` date DEFAULT (curdate()),
  `REGID` varchar(45) DEFAULT NULL,
  `UPDDT` date DEFAULT NULL,
  `UPDID` varchar(45) DEFAULT NULL,
  `DELDT` date DEFAULT NULL,
  `DEL_FLAG` char(1) DEFAULT 'N',
  PRIMARY KEY (`DEAL_BRD_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_board`
--

LOCK TABLES `deal_board` WRITE;
/*!40000 ALTER TABLE `deal_board` DISABLE KEYS */;
INSERT INTO `deal_board` VALUES (5,'[판매] iPhone 12 Pro 128GB 퍼시픽 블루 (상태 A급)','안녕하세요. 약 1년 사용한 iPhone 12 Pro 128GB 모델을 판매합니다.\r\n상품 정보:\r\n모델: iPhone 12 Pro\r\n용량: 128GB\r\n색상: 퍼시픽 블루\r\n구매일: 2022년 11월\r\n상태: A급 (미세 생활 흠집 외 깨끗)\r\n구성품: 본체, 충전기, 케이블, 박스\r\n\r\n상세 설명:\r\n배터리 성능 91%로 양호합니다. 항상 케이스와 필름 착용하여 사용했습니다. 기능상 문제 전혀 없으며, 공장 초기화 완료했습니다. 직거래 가능하며, 9호선 고속터미널역에서 만나실 수 있습니다.\r\n궁금하신 점 있으시면 댓글이나 쪽지 주세요. 감사합니다!','고속터미널',780000,'iphone12pro.jpg','Y',9,NULL,NULL,'2024-11-07','user01','2024-11-07','user01',NULL,'N'),(6,'[판매] 트렉 FX3 디스크 하이브리드 자전거 (2023년식, S 사이즈)','안녕하세요. 작년에 구매한 트렉 FX3 디스크 하이브리드 자전거를 판매합니다.\r\n상품 정보:\r\n브랜드: 트렉(Trek)\r\n모델: FX3 디스크\r\n연식: 2023년식\r\n프레임 사이즈: S (키 160-170cm 적합)\r\n주행 거리: 약 500km\r\n구매일: 2023년 5월\r\n판매 가격: 650,000원 (협의 가능)\r\n상세 설명:\r\n출퇴근용으로 주 3회 정도 사용했습니다. 실내 보관으로 관리 상태가 매우 좋습니다. 최근 정기 점검을 받아 상태가 양호합니다. 디스크 브레이크로 제동력이 뛰어나며, 시마노 구동계로 변속이 부드럽습니다.\r\n구성품:\r\n자전거 본체\r\n물통 거치대\r\n펌프\r\n구매 영수증\r\n특이사항:\r\n안장에 약간의 사용감 있음\r\n프레임에 미세한 스크래치 1-2군데 있음 (사진 참조)\r\n직거래 선호하며, 서울 고속터미널역 인근에서 거래 가능합니다.\r\n궁금한 점이나 추가 사진이 필요하시면 언제든 문의 주세요. 감사합니다!','고속터미널',750000,'bike.jpg','Y',23,NULL,NULL,'2024-11-05','user03','2024-11-07','user03','2024-11-07','Y'),(7,'Test','Test','고속터미널',100,'0','Y',1,NULL,NULL,'2024-11-07','user03',NULL,NULL,NULL,'N');
/*!40000 ALTER TABLE `deal_board` ENABLE KEYS */;
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
