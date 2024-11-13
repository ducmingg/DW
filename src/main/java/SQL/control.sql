-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: control
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
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `flag` int DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  `path_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_processing` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'control',NULL,'weather','C:\\\\Users\\\\voduc\\\\Data_Weather\\\\','CRAWLING',1,NULL,'C:\\\\Users\\\\voduc\\\\Data_Weather\\\\weather2024-11-13.csv',1),(2,'staging',NULL,NULL,NULL,'EXTRACTING',NULL,NULL,NULL,1),(3,'warehouse',NULL,NULL,NULL,'LOAD TO DATE_DIM',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `configs_id` int NOT NULL,
  PRIMARY KEY (`id`,`configs_id`),
  KEY `fk_logs_configs_idx` (`configs_id`),
  CONSTRAINT `fk_logs_configs` FOREIGN KEY (`configs_id`) REFERENCES `configs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'CRAWLING','Start crawling weather data','2024-10-29 10:35:07',1),(2,'CRAWLED','CRAWL HOAN THANH','2024-10-29 10:35:22',1),(3,'CRAWLED','FINISH','2024-10-29 10:35:22',1),(4,'CRAWLING','Start crawling weather data','2024-10-29 17:55:29',1),(5,'CRAWLED','CRAWL HOAN THANH','2024-10-29 17:55:45',1),(6,'CRAWLED','FINISH','2024-10-29 17:55:45',1),(7,'CRAWLING','Start crawling weather data','2024-10-29 17:56:09',1),(8,'CRAWLED','CRAWL HOAN THANH','2024-10-29 17:56:23',1),(9,'CRAWLED','FINISH','2024-10-29 17:56:23',1),(10,'CRAWLING','Start crawling weather data','2024-10-29 18:25:01',1),(11,'CRAWLED','CRAWL HOAN THANH','2024-10-29 18:25:16',1),(12,'CRAWLED','FINISH','2024-10-29 18:25:16',1),(13,'CRAWLING','Start crawling weather data','2024-10-29 19:27:54',1),(14,'CRAWLING','Start crawling weather data','2024-10-29 19:28:10',1),(15,'CRAWLING','Start crawling weather data','2024-10-29 19:28:21',1),(16,'CRAWLED','FINISH','2024-10-29 19:28:27',1),(17,'CRAWLING','Start crawling weather data','2024-10-29 19:29:51',1),(18,'CRAWLED','FINISH','2024-10-29 19:29:53',1),(19,'CRAWLING','Start crawling weather data','2024-10-29 19:31:40',1),(20,'CRAWLED','FINISH','2024-10-29 19:31:43',1),(21,'CRAWLING','Start crawling weather data','2024-10-29 19:33:21',1),(22,'CRAWLED','FINISH','2024-10-29 19:33:23',1),(23,'CRAWLING','Start crawling weather data','2024-10-29 19:34:18',1),(24,'CRAWLED','FINISH','2024-10-29 19:34:19',1),(25,'CRAWLING','Start crawling weather data','2024-10-29 19:36:57',1),(26,'ERROR','java.io.IOException: Server returned HTTP response code: 429 for URL: https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/An+Giang/tomorrow?unitGroup=metric&include=hours%2Cdays&key=KBEND38354CYDL8J58VTCBCMC','2024-10-29 19:36:59',1),(27,'CRAWLED','FINISH','2024-10-29 19:36:59',1),(28,'CRAWLING','Start crawling weather data','2024-10-29 19:47:00',1),(29,'CRAWLED','CRAWL HOAN THANH','2024-10-29 19:47:14',1),(30,'CRAWLED','FINISH','2024-10-29 19:47:14',1),(31,'CRAWLING','Start crawling weather data','2024-10-30 03:25:51',1),(32,'ERROR','java.io.IOException: Server returned HTTP response code: 401 for URL: https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/An+Giang/tomorrow?unitGroup=metric&include=hours%2Cdays&key=null','2024-10-30 03:25:55',1),(33,'CRAWLED','FINISH','2024-10-30 03:25:55',1),(34,'EXTRACTING','START EXTRACT DATA','2024-10-30 03:25:55',2),(35,'TRUNCATED','TRUNCATED STAGING','2024-10-30 03:25:55',2),(36,'IMPORT TO STAGING','FINISH','2024-10-30 03:25:55',2),(37,'CRAWLING','Start crawling weather data','2024-10-30 03:27:52',1),(38,'ERROR','config.properties (The system cannot find the file specified)','2024-10-30 03:27:52',1),(39,'CRAWLED','FINISH','2024-10-30 03:27:52',1),(40,'EXTRACTING','START EXTRACT DATA','2024-10-30 03:27:52',2),(41,'TRUNCATED','TRUNCATED STAGING','2024-10-30 03:27:52',2),(42,'IMPORT TO STAGING','FINISH','2024-10-30 03:27:52',2),(43,'CRAWLING','Start crawling weather data','2024-10-30 03:28:33',1),(44,'CRAWLED','CRAWL HOAN THANH','2024-10-30 03:28:49',1),(45,'CRAWLED','FINISH','2024-10-30 03:28:49',1),(46,'EXTRACTING','START EXTRACT DATA','2024-10-30 03:28:49',2),(47,'IMPORT TO STAGING','FINISH','2024-10-30 03:28:49',2),(48,'CRAWLING','Start crawling weather data','2024-10-30 03:35:37',1),(49,'CRAWLED','CRAWL HOAN THANH','2024-10-30 03:35:52',1),(50,'CRAWLED','FINISH','2024-10-30 03:35:52',1),(51,'EXTRACTING','START EXTRACT DATA','2024-10-30 03:35:52',2),(52,'TRUNCATED','TRUNCATED STAGING','2024-10-30 03:35:53',2),(53,'IMPORT TO STAGING','FINISH','2024-10-30 03:35:53',2),(54,'CRAWLING','Start crawling weather data','2024-10-30 05:06:04',1),(55,'CRAWLED','CRAWL HOAN THANH','2024-10-30 05:06:20',1),(56,'CRAWLED','FINISH','2024-10-30 05:06:20',1),(57,'EXTRACTING','START EXTRACT DATA','2024-10-30 05:06:20',2),(58,'TRUNCATED','TRUNCATED STAGING','2024-10-30 05:06:20',2),(59,'IMPORT TO STAGING','FINISH','2024-10-30 05:06:20',2),(60,'LOADING','LOAD TO DATE_DIM','2024-10-30 05:06:21',3),(61,'ERROR','java.sql.SQLSyntaxErrorException: PROCEDURE control.import_to_date_dim does not exist','2024-10-30 05:06:21',3),(62,'LOADED',' LOAD TO DATE_DIM DONE ERROR','2024-10-30 05:06:21',3),(63,'LOAD TO DATE_DIM','FINISH','2024-10-30 05:06:21',2),(64,'CRAWLING','Start crawling weather data','2024-11-12 23:16:53',1),(65,'CRAWLED','CRAWL HOAN THANH','2024-11-12 23:17:07',1),(66,'CRAWLED','FINISH','2024-11-12 23:17:07',1),(67,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:17:07',2),(68,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:17:07',2),(69,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:17:08',2),(70,'IMPORT TO STAGING','FINISH','2024-11-12 23:17:08',2),(71,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:17:08',3),(72,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:17:08',3),(73,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:17:08',2),(74,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:25:18',2),(75,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:25:18',2),(76,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:25:18',2),(77,'IMPORT TO STAGING','FINISH','2024-11-12 23:25:18',2),(78,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:25:18',3),(79,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:25:18',3),(80,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:25:18',2),(81,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:27:24',2),(82,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:27:24',2),(83,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:27:24',2),(84,'IMPORT TO STAGING','FINISH','2024-11-12 23:27:24',2),(85,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:27:24',3),(86,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:27:24',3),(87,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:27:24',2),(88,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:28:36',2),(89,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:28:36',2),(90,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:28:36',2),(91,'IMPORT TO STAGING','FINISH','2024-11-12 23:28:36',2),(92,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:28:36',3),(93,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:28:36',3),(94,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:28:36',2),(95,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:29:48',2),(96,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:29:48',2),(97,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:29:48',2),(98,'IMPORT TO STAGING','FINISH','2024-11-12 23:29:48',2),(99,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:29:48',3),(100,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:29:48',3),(101,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:29:48',2),(102,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:30:34',2),(103,'ERROR','Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides','2024-11-12 23:30:34',2),(104,'TRUNCATED','TRUNCATED STAGING ERROR','2024-11-12 23:30:34',2),(105,'IMPORT TO STAGING','FINISH','2024-11-12 23:30:34',2),(106,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:30:34',3),(107,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:30:34',3),(108,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:30:34',2),(109,'EXTRACTING','START EXTRACT DATA','2024-11-12 23:36:10',2),(110,'TRUNCATED','TRUNCATED STAGING','2024-11-12 23:36:10',2),(111,'IMPORT TO STAGING','FINISH','2024-11-12 23:36:10',2),(112,'LOADING','LOAD TO DATE_DIM','2024-11-12 23:36:10',3),(113,'LOADED','LOAD TO DATE_DIM DONE','2024-11-12 23:36:11',3),(114,'LOAD TO DATE_DIM','FINISH','2024-11-12 23:36:11',2),(115,'LOADING','LOAD TO DATE_DIM','2024-11-13 00:53:40',3),(116,'LOADED','LOAD TO DATE_DIM DONE','2024-11-13 00:53:40',3),(117,'LOAD TO DATE_DIM','FINISH','2024-11-13 00:53:40',2),(118,'LOADING','LOAD TO DATE_DIM','2024-11-13 01:07:15',3),(119,'LOADED','LOAD TO DATE_DIM DONE','2024-11-13 01:07:15',3),(120,'LOAD TO DATE_DIM','FINISH','2024-11-13 01:07:15',2);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'control'
--
/*!50003 DROP PROCEDURE IF EXISTS `import_to_date_dim` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `import_to_date_dim`()
BEGIN
    INSERT INTO warehouse.dim_date(date_nk, datetime, day_of_week, month, year)
    SELECT 
        CAST(DATE_FORMAT(datetime, '%Y%m%d') AS UNSIGNED) AS date_nk, -- Đảm bảo kiểu số cho date_nk
        datetime,
        DAYOFWEEK(CAST(datetime AS DATE)),
        MONTH(datetime),
        YEAR(datetime)
    FROM staging.staging;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `import_to_time_dim` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `import_to_time_dim`()
BEGIN
INSERT INTO warehouse.dim_time(time_nk,hour,minute)
    SELECT 
        SUBSTRING_INDEX(datetime,'T',-1) AS time_nk, -- Đảm bảo kiểu số cho date_nk
        CAST(HOUR(datetime) as UNSIGNED) ,
				CAST(MINUTE(datetime) as UNSIGNED)
    FROM staging.staging;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_status_logs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_status_logs`(in config_id int, in stt VARCHAR(255),in des VARCHAR(255))
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(config_id,stt,des,NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `truncate_staging_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `truncate_staging_table`()
BEGIN
	TRUNCATE TABLE staging.staging;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_file_path_configs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_file_path_configs`(in id_config int,in path varchar(255))
BEGIN
	update configs
	set configs.path_file = path
	where configs.id  = id_config;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_isProcessing_configs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_isProcessing_configs`(in config_id int, in isProcessing int)
BEGIN
	UPDATE configs
	SET configs.is_processing = isProcessing
	WHERE configs.id = config_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_location_id_staging` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_location_id_staging`()
BEGIN
	 UPDATE staging.staging s
    JOIN warehouse.dim_location w
    on 
		TRIM(SUBSTRING_INDEX(s.name, ',', 1)) = w.province
		and
    TRIM(SUBSTRING_INDEX(s.name, ',', -1)) = w.country
    SET s.LOCATION_ID = w.location_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_status_configs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_status_configs`(in config_id int,in stt varchar(255))
BEGIN
	update configs
	set configs.`status` = stt
	WHERE configs.id = config_id;
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

-- Dump completed on 2024-11-13 12:27:51
