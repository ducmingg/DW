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
  `DATE_SK` int DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging`
--

LOCK TABLES `staging` WRITE;
/*!40000 ALTER TABLE `staging` DISABLE KEYS */;
/*!40000 ALTER TABLE `staging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'staging'
--
/*!50003 DROP PROCEDURE IF EXISTS `transform_time_staging` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transform_time_staging`()
BEGIN

    -- Kiß╗âm tra v├á th├¬m cß╗Öt DATE_SK nß║┐u ch╞░a tß╗ôn tß║íi

    IF NOT EXISTS (

        SELECT * FROM information_schema.COLUMNS 

        WHERE TABLE_NAME = 'staging' 

        AND COLUMN_NAME = 'DATE_SK'

    ) THEN

        ALTER TABLE staging ADD COLUMN DATE_SK INT;

    END IF;



    -- Cß║¡p nhß║¡t bß║úng staging

    UPDATE staging

    JOIN warehouse.dim_date 

    ON CAST(staging.datetime AS TIME) = CAST(warehouse.dim_date.datetime AS TIME)

    SET staging.datetime = warehouse.dim_date.datetime;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `truncate_staging` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `truncate_staging`(in table_name varchar(255))
BEGIN

SET @query = CONCAT('TRUNCATE TABLE ', table_name);

    PREPARE stmt FROM @query;

    EXECUTE stmt;

    DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30  3:22:58
