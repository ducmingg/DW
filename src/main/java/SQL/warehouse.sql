-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: warehouse
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_date` (
  `date_sk` int NOT NULL AUTO_INCREMENT,
  `datetime` date DEFAULT NULL,
  `day_of_week` varchar(10) DEFAULT '',
  `month` int DEFAULT '0',
  `year` int DEFAULT '0',
  `quarter` int DEFAULT '0',
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `date_nk` bigint DEFAULT NULL,
  `is_current` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`date_sk`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_date`
--

LOCK TABLES `dim_date` WRITE;
/*!40000 ALTER TABLE `dim_date` DISABLE KEYS */;
INSERT INTO `dim_date` VALUES (1,'2024-10-30','Wednesday',10,2024,4,'9999-12-31 23:59:59',20241030,1),(2,'2024-10-31','Thursday',10,2024,4,'9999-12-31 23:59:59',20241031,1),(3,'2024-11-01','Friday',11,2024,4,'9999-12-31 23:59:59',20241101,1),(4,'2024-11-02','Saturday',11,2024,4,'9999-12-31 23:59:59',20241102,1),(5,'2024-11-03','Sunday',11,2024,4,'9999-12-31 23:59:59',20241103,1),(6,'2024-11-04','Monday',11,2024,4,'9999-12-31 23:59:59',20241104,1),(7,'2024-11-05','Tuesday',11,2024,4,'9999-12-31 23:59:59',20241105,1),(8,'2024-11-06','Wednesday',11,2024,4,'9999-12-31 23:59:59',20241106,1),(9,'2024-11-07','Thursday',11,2024,4,'9999-12-31 23:59:59',20241107,1),(10,'2024-11-08','Friday',11,2024,4,'9999-12-31 23:59:59',20241108,1),(11,'2024-11-09','Saturday',11,2024,4,'9999-12-31 23:59:59',20241109,1),(12,'2024-11-10','Sunday',11,2024,4,'9999-12-31 23:59:59',20241110,1),(13,'2024-11-11','Monday',11,2024,4,'9999-12-31 23:59:59',20241111,1),(14,'2024-11-12','Tuesday',11,2024,4,'9999-12-31 23:59:59',20241112,1),(15,'2024-11-13','Wednesday',11,2024,4,'9999-12-31 23:59:59',20241113,1),(16,'2024-11-14','Thursday',11,2024,4,'9999-12-31 23:59:59',20241114,1),(17,'2024-11-15','Friday',11,2024,4,'9999-12-31 23:59:59',20241115,1),(18,'2024-11-16','Saturday',11,2024,4,'9999-12-31 23:59:59',20241116,1),(19,'2024-11-17','Sunday',11,2024,4,'9999-12-31 23:59:59',20241117,1),(20,'2024-11-18','Monday',11,2024,4,'9999-12-31 23:59:59',20241118,1),(21,'2024-11-19','Tuesday',11,2024,4,'9999-12-31 23:59:59',20241119,1),(22,'2024-11-20','Wednesday',11,2024,4,'9999-12-31 23:59:59',20241120,1),(23,'2024-11-21','Thursday',11,2024,4,'9999-12-31 23:59:59',20241121,1),(24,'2024-11-22','Friday',11,2024,4,'9999-12-31 23:59:59',20241122,1),(25,'2024-11-23','Saturday',11,2024,4,'9999-12-31 23:59:59',20241123,1),(26,'2024-11-24','Sunday',11,2024,4,'9999-12-31 23:59:59',20241124,1),(27,'2024-11-25','Monday',11,2024,4,'9999-12-31 23:59:59',20241125,1),(28,'2024-11-26','Tuesday',11,2024,4,'9999-12-31 23:59:59',20241126,1),(29,'2024-11-27','Wednesday',11,2024,4,'9999-12-31 23:59:59',20241127,1),(30,'2024-11-28','Thursday',11,2024,4,'9999-12-31 23:59:59',20241128,1),(31,'2024-11-29','Friday',11,2024,4,'9999-12-31 23:59:59',20241129,1),(32,'2024-11-30','Saturday',11,2024,4,'9999-12-31 23:59:59',20241130,1),(33,'2024-12-01','Sunday',12,2024,4,'9999-12-31 23:59:59',20241201,1),(34,'2024-12-02','Monday',12,2024,4,'9999-12-31 23:59:59',20241202,1),(35,'2024-12-03','Tuesday',12,2024,4,'9999-12-31 23:59:59',20241203,1),(36,'2024-12-04','Wednesday',12,2024,4,'9999-12-31 23:59:59',20241204,1),(37,'2024-12-05','Thursday',12,2024,4,'9999-12-31 23:59:59',20241205,1),(38,'2024-12-06','Friday',12,2024,4,'9999-12-31 23:59:59',20241206,1),(39,'2024-12-07','Saturday',12,2024,4,'9999-12-31 23:59:59',20241207,1),(40,'2024-12-08','Sunday',12,2024,4,'9999-12-31 23:59:59',20241208,1),(41,'2024-12-09','Monday',12,2024,4,'9999-12-31 23:59:59',20241209,1),(42,'2024-12-10','Tuesday',12,2024,4,'9999-12-31 23:59:59',20241210,1),(43,'2024-12-11','Wednesday',12,2024,4,'9999-12-31 23:59:59',20241211,1),(44,'2024-12-12','Thursday',12,2024,4,'9999-12-31 23:59:59',20241212,1),(45,'2024-12-13','Friday',12,2024,4,'9999-12-31 23:59:59',20241213,1),(46,'2024-12-14','Saturday',12,2024,4,'9999-12-31 23:59:59',20241214,1),(47,'2024-12-15','Sunday',12,2024,4,'9999-12-31 23:59:59',20241215,1),(48,'2024-12-16','Monday',12,2024,4,'9999-12-31 23:59:59',20241216,1),(49,'2024-12-17','Tuesday',12,2024,4,'9999-12-31 23:59:59',20241217,1),(50,'2024-12-18','Wednesday',12,2024,4,'9999-12-31 23:59:59',20241218,1),(51,'2024-12-19','Thursday',12,2024,4,'9999-12-31 23:59:59',20241219,1),(52,'2024-12-20','Friday',12,2024,4,'9999-12-31 23:59:59',20241220,1),(53,'2024-12-21','Saturday',12,2024,4,'9999-12-31 23:59:59',20241221,1),(54,'2024-12-22','Sunday',12,2024,4,'9999-12-31 23:59:59',20241222,1),(55,'2024-12-23','Monday',12,2024,4,'9999-12-31 23:59:59',20241223,1),(56,'2024-12-24','Tuesday',12,2024,4,'9999-12-31 23:59:59',20241224,1),(57,'2024-12-25','Wednesday',12,2024,4,'9999-12-31 23:59:59',20241225,1),(58,'2024-12-26','Thursday',12,2024,4,'9999-12-31 23:59:59',20241226,1),(59,'2024-12-27','Friday',12,2024,4,'9999-12-31 23:59:59',20241227,1),(60,'2024-12-28','Saturday',12,2024,4,'9999-12-31 23:59:59',20241228,1),(61,'2024-12-29','Sunday',12,2024,4,'9999-12-31 23:59:59',20241229,1),(62,'2024-12-30','Monday',12,2024,4,'9999-12-31 23:59:59',20241230,1),(63,'2024-12-31','Tuesday',12,2024,4,'9999-12-31 23:59:59',20241231,1);
/*!40000 ALTER TABLE `dim_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_location`
--

DROP TABLE IF EXISTS `dim_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_location` (
  `location_sk` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `dtChanged` datetime DEFAULT CURRENT_TIMESTAMP,
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `isCurrent` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`location_sk`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_location`
--

LOCK TABLES `dim_location` WRITE;
/*!40000 ALTER TABLE `dim_location` DISABLE KEYS */;
INSERT INTO `dim_location` VALUES (69,1,'An Giang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(70,2,'Bà Rịa','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(71,3,'Bắc Giang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(72,4,'Bắc Kạn','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(73,5,'Bến Tre','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(74,6,'Bình Định','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(75,7,'Bình Dương','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(76,8,'Bình Phước','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(77,9,'Cà Mau','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(78,10,'Cần Thơ','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(79,11,'Cao Bằng','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(80,12,'Gia','Liberia','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(81,13,'Hà Giang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(82,14,'Ha-Magau','South Africa','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(83,15,'Hà Nội','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(84,16,'Hà Tĩnh','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(85,17,'Hải Dương','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(86,18,'Hải Phòng','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(87,19,'Hòa Bình','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(88,20,'Hưng Yên','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(89,21,'Khánh Hòa','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(90,22,'Kiên Giang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(91,23,'Kon Tum','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(92,24,'Lai Châu','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(93,25,'臺灣426台中市龍安','臺灣426台中市龍安','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(94,26,'Nghệ An','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(95,27,'Ninh Bình','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(96,28,'Xã Ninh Thượng','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(97,29,'Phú Thọ','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(98,30,'Phú Yên','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(99,31,'Quảng Bình','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(100,32,'Quảng Nam','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(101,33,'Quảng Ngãi','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(102,34,'Quảng Ninh','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(103,35,'Sóc Trăng','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(104,36,'La Son','France','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(105,37,'Tây Ninh','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(106,38,'Thái Bình','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(107,39,'Thái Nguyên','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(108,40,'Thanh Hóa','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(109,41,'Huế','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(110,42,'Tiền Giang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(111,43,'Trà Vinh','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(112,44,'Tuyên Quang','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(113,45,'Yên Bái','Việt Nam','2024-11-13 10:57:43','9999-12-31 23:59:59',1),(114,68,'bonba','hai phong','2024-11-13 00:00:00','2024-11-13 00:00:00',0),(116,68,'bonba','hai phong 1','2024-11-13 00:00:00','9999-12-31 00:00:00',1);
/*!40000 ALTER TABLE `dim_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_time`
--

DROP TABLE IF EXISTS `dim_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_time` (
  `time_sk` int NOT NULL AUTO_INCREMENT,
  `hour` bigint DEFAULT '0',
  `minute` bigint DEFAULT '0',
  `time_of_day` varchar(255) DEFAULT '',
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `time_nk` varchar(255) DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`time_sk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_time`
--

LOCK TABLES `dim_time` WRITE;
/*!40000 ALTER TABLE `dim_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forecastresult`
--

DROP TABLE IF EXISTS `forecastresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forecastresult` (
  `forecast_id` int NOT NULL AUTO_INCREMENT,
  `date_id` int DEFAULT '0',
  `time_id` int DEFAULT '0',
  `predicted_temp_max` decimal(10,0) DEFAULT '0',
  `predicted_temp_min` decimal(10,0) DEFAULT '0',
  `predicted_humidity` decimal(10,0) DEFAULT '0',
  `predicted_precipitation` decimal(10,0) DEFAULT '0',
  `predicted_wind_speed` decimal(10,0) DEFAULT '0',
  `conditions` varchar(255) DEFAULT '',
  `dtChanged` datetime DEFAULT CURRENT_TIMESTAMP,
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `dim_location_location_sk` int NOT NULL,
  PRIMARY KEY (`forecast_id`),
  KEY `date_id` (`date_id`),
  KEY `time_id` (`time_id`),
  KEY `fk_forecastresult_dim_location1_idx` (`dim_location_location_sk`),
  CONSTRAINT `fk_forecastresult_dim_location1` FOREIGN KEY (`dim_location_location_sk`) REFERENCES `dim_location` (`location_sk`),
  CONSTRAINT `forecastresult_ibfk_2` FOREIGN KEY (`date_id`) REFERENCES `dim_date` (`date_sk`),
  CONSTRAINT `forecastresult_ibfk_3` FOREIGN KEY (`time_id`) REFERENCES `dim_time` (`time_sk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forecastresult`
--

LOCK TABLES `forecastresult` WRITE;
/*!40000 ALTER TABLE `forecastresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `forecastresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weatherfact`
--

DROP TABLE IF EXISTS `weatherfact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weatherfact` (
  `weather_id` int NOT NULL AUTO_INCREMENT,
  `date_id` int DEFAULT '0',
  `time_id` int DEFAULT '0',
  `temp_max` decimal(10,0) DEFAULT '0',
  `temp_min` decimal(10,0) DEFAULT '0',
  `temp_avg` decimal(10,0) DEFAULT '0',
  `feels_like_max` decimal(10,0) DEFAULT '0',
  `feels_like_min` decimal(10,0) DEFAULT '0',
  `humidity` decimal(10,0) DEFAULT '0',
  `precipitation` decimal(10,0) DEFAULT '0',
  `precip_prob` decimal(10,0) DEFAULT '0',
  `wind_speed` decimal(10,0) DEFAULT '0',
  `wind_direction` decimal(10,0) DEFAULT '0',
  `cloud_cover` decimal(10,0) DEFAULT '0',
  `visibility` decimal(10,0) DEFAULT '0',
  `pressure` decimal(10,0) DEFAULT '0',
  `solar_radiation` decimal(10,0) DEFAULT '0',
  `uv_index` decimal(10,0) DEFAULT '0',
  `conditions` varchar(255) DEFAULT '',
  `dtChanged` datetime DEFAULT CURRENT_TIMESTAMP,
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `isDelete` tinyint DEFAULT '0',
  `dim_location_location_sk` int NOT NULL,
  PRIMARY KEY (`weather_id`),
  KEY `date_id` (`date_id`),
  KEY `time_id` (`time_id`),
  KEY `fk_weatherfact_dim_location1_idx` (`dim_location_location_sk`),
  CONSTRAINT `fk_weatherfact_dim_location1` FOREIGN KEY (`dim_location_location_sk`) REFERENCES `dim_location` (`location_sk`),
  CONSTRAINT `weatherfact_ibfk_2` FOREIGN KEY (`date_id`) REFERENCES `dim_date` (`date_sk`),
  CONSTRAINT `weatherfact_ibfk_3` FOREIGN KEY (`time_id`) REFERENCES `dim_time` (`time_sk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weatherfact`
--

LOCK TABLES `weatherfact` WRITE;
/*!40000 ALTER TABLE `weatherfact` DISABLE KEYS */;
/*!40000 ALTER TABLE `weatherfact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'warehouse'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 12:27:05