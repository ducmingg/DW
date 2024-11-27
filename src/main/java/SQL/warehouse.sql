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
  `date_sk` bigint NOT NULL,
  `datetime` date DEFAULT NULL,
  `day_of_week` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `day` int DEFAULT NULL,
  `month` int DEFAULT '0',
  `year` int DEFAULT '0',
  `week` int DEFAULT NULL,
  `quarter` int DEFAULT '0',
  PRIMARY KEY (`date_sk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_location`
--

DROP TABLE IF EXISTS `dim_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `dtChanged` datetime DEFAULT CURRENT_TIMESTAMP,
  `dtExpired` datetime DEFAULT '9999-12-31 23:59:59',
  `isCurrent` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_time`
--

DROP TABLE IF EXISTS `dim_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_time` (
  `time_sk` int NOT NULL AUTO_INCREMENT,
  `hour` int DEFAULT '0',
  PRIMARY KEY (`time_sk`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_weather`
--

DROP TABLE IF EXISTS `dim_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_weather` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `preciptype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `severerisk` tinyint DEFAULT NULL,
  `cloudcover` float DEFAULT NULL,
  `humidity_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `temperature_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `wind_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_aggregate`
--

DROP TABLE IF EXISTS `weather_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_aggregate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int DEFAULT NULL,
  `date_id` int DEFAULT NULL,
  `time_id` int DEFAULT NULL,
  `humidity` decimal(10,2) DEFAULT NULL,
  `precip` decimal(10,2) DEFAULT NULL,
  `precipprob` decimal(10,2) DEFAULT NULL,
  `windspeed` decimal(10,2) DEFAULT NULL,
  `cloudcover` varchar(255) DEFAULT NULL,
  `conditions` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `aggregate_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_fact`
--

DROP TABLE IF EXISTS `weather_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_fact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weather_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `time_id` int DEFAULT NULL,
  `date_id` int DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temperature` decimal(10,2) DEFAULT NULL,
  `feels_like` decimal(10,2) DEFAULT NULL,
  `dew_point` decimal(10,2) DEFAULT NULL,
  `humidity` decimal(10,2) DEFAULT NULL,
  `precip` decimal(10,2) DEFAULT NULL,
  `precip_prob` decimal(10,2) DEFAULT NULL,
  `precip_type` varchar(50) DEFAULT NULL,
  `snow` decimal(10,2) DEFAULT NULL,
  `snow_depth` decimal(10,2) DEFAULT NULL,
  `wind_gust` decimal(10,2) DEFAULT NULL,
  `wind_speed` decimal(10,2) DEFAULT NULL,
  `wind_dir` decimal(10,2) DEFAULT NULL,
  `pressure` decimal(10,2) DEFAULT NULL,
  `cloud_cover` decimal(10,2) DEFAULT NULL,
  `visibility` decimal(10,2) DEFAULT NULL,
  `solar_radiation` decimal(10,2) DEFAULT NULL,
  `solar_energy` decimal(10,2) DEFAULT NULL,
  `uv_index` decimal(10,2) DEFAULT NULL,
  `severe_risk` int DEFAULT NULL,
  `conditions` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `stations` varchar(100) DEFAULT NULL,
  `dtExpired` date DEFAULT '9999-12-31',
  PRIMARY KEY (`id`) USING BTREE
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

-- Dump completed on 2024-11-27 21:10:06
