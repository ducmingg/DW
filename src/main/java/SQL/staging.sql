-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: staging
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
-- Table structure for table `staging`
--

DROP TABLE IF EXISTS `staging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `datetime` varchar(100) DEFAULT '',
  `temp` decimal(10,2) DEFAULT '0.00',
  `feelslike` decimal(10,2) DEFAULT '0.00',
  `dew` decimal(10,2) DEFAULT '0.00',
  `humidity` decimal(10,2) DEFAULT '0.00',
  `precip` float(10,2) DEFAULT '0.00',
  `precipprob` decimal(10,2) DEFAULT '0.00',
  `preciptype` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `snow` decimal(10,2) DEFAULT '0.00',
  `snowdepth` decimal(10,2) DEFAULT '0.00',
  `windgust` decimal(10,2) DEFAULT '0.00',
  `windspeed` decimal(10,2) DEFAULT '0.00',
  `winddir` decimal(10,2) DEFAULT '0.00',
  `pressure` float DEFAULT '0',
  `cloudcover` float DEFAULT '0',
  `visibility` float DEFAULT '0',
  `solarradiation` float DEFAULT '0',
  `solarenergy` float DEFAULT '0',
  `uvindex` int DEFAULT '0',
  `severerisk` int DEFAULT '0',
  `conditions` varchar(100) DEFAULT '',
  `icon` varchar(50) DEFAULT '',
  `stations` varchar(100) DEFAULT '',
  `LOCATION_ID` int DEFAULT '-1',
  `province_id` varchar(255) DEFAULT '',
  `date_id` bigint DEFAULT '-1',
  `time_id` int DEFAULT NULL,
  `weather_id` int DEFAULT '-2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 18:32:25
