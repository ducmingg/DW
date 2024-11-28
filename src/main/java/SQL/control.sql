/*
 Navicat Premium Data Transfer

 Source Server         : DataWarehouse
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : control

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 28/11/2024 22:08:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` int NULL DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  `path_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_processing` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES (1, 'control', '21130447@st.hcmuaf.edu.vn', 'weather', 'C:\\\\Users\\\\voduc\\\\Data_Weather\\\\', 'FINISHED', 0, NULL, 'C:\\\\Users\\\\voduc\\\\Data_Weather\\\\weather2024-11-28.csv', 0);
INSERT INTO `configs` VALUES (2, 'staging', '21130447@st.hcmuaf.edu.vn', '', '', 'EXTRACTED', 0, NULL, NULL, 0);
INSERT INTO `configs` VALUES (3, 'warehouse', '21130447@st.hcmuaf.edu.vn', '', NULL, 'WH_LOADED', 0, NULL, NULL, 0);
INSERT INTO `configs` VALUES (4, 'datamart', '21130447@st.hcmuaf.edu.vn', '', '', 'MLOADED', 0, NULL, NULL, 0);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `configs_id` int NOT NULL,
  PRIMARY KEY (`id`, `configs_id`) USING BTREE,
  INDEX `fk_logs_configs_idx`(`configs_id` ASC) USING BTREE,
  CONSTRAINT `fk_logs_configs` FOREIGN KEY (`configs_id`) REFERENCES `configs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 335 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, 'CRAWLING', 'Start crawling weather data', '2024-10-29 17:35:07', 1);
INSERT INTO `logs` VALUES (2, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-29 17:35:22', 1);
INSERT INTO `logs` VALUES (3, 'CRAWLED', 'FINISH', '2024-10-29 17:35:22', 1);
INSERT INTO `logs` VALUES (4, 'CRAWLING', 'Start crawling weather data', '2024-10-30 00:55:29', 1);
INSERT INTO `logs` VALUES (5, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 00:55:45', 1);
INSERT INTO `logs` VALUES (6, 'CRAWLED', 'FINISH', '2024-10-30 00:55:45', 1);
INSERT INTO `logs` VALUES (7, 'CRAWLING', 'Start crawling weather data', '2024-10-30 00:56:09', 1);
INSERT INTO `logs` VALUES (8, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 00:56:23', 1);
INSERT INTO `logs` VALUES (9, 'CRAWLED', 'FINISH', '2024-10-30 00:56:23', 1);
INSERT INTO `logs` VALUES (10, 'CRAWLING', 'Start crawling weather data', '2024-10-30 01:25:01', 1);
INSERT INTO `logs` VALUES (11, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 01:25:16', 1);
INSERT INTO `logs` VALUES (12, 'CRAWLED', 'FINISH', '2024-10-30 01:25:16', 1);
INSERT INTO `logs` VALUES (13, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:27:54', 1);
INSERT INTO `logs` VALUES (14, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:28:10', 1);
INSERT INTO `logs` VALUES (15, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:28:21', 1);
INSERT INTO `logs` VALUES (16, 'CRAWLED', 'FINISH', '2024-10-30 02:28:27', 1);
INSERT INTO `logs` VALUES (17, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:29:51', 1);
INSERT INTO `logs` VALUES (18, 'CRAWLED', 'FINISH', '2024-10-30 02:29:53', 1);
INSERT INTO `logs` VALUES (19, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:31:40', 1);
INSERT INTO `logs` VALUES (20, 'CRAWLED', 'FINISH', '2024-10-30 02:31:43', 1);
INSERT INTO `logs` VALUES (21, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:33:21', 1);
INSERT INTO `logs` VALUES (22, 'CRAWLED', 'FINISH', '2024-10-30 02:33:23', 1);
INSERT INTO `logs` VALUES (23, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:34:18', 1);
INSERT INTO `logs` VALUES (24, 'CRAWLED', 'FINISH', '2024-10-30 02:34:19', 1);
INSERT INTO `logs` VALUES (25, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:36:57', 1);
INSERT INTO `logs` VALUES (26, 'ERROR', 'java.io.IOException: Server returned HTTP response code: 429 for URL: https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/An+Giang/tomorrow?unitGroup=metric&include=hours%2Cdays&key=KBEND38354CYDL8J58VTCBCMC', '2024-10-30 02:36:59', 1);
INSERT INTO `logs` VALUES (27, 'CRAWLED', 'FINISH', '2024-10-30 02:36:59', 1);
INSERT INTO `logs` VALUES (28, 'CRAWLING', 'Start crawling weather data', '2024-10-30 02:47:00', 1);
INSERT INTO `logs` VALUES (29, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 02:47:14', 1);
INSERT INTO `logs` VALUES (30, 'CRAWLED', 'FINISH', '2024-10-30 02:47:14', 1);
INSERT INTO `logs` VALUES (31, 'CRAWLING', 'Start crawling weather data', '2024-10-30 10:25:51', 1);
INSERT INTO `logs` VALUES (32, 'ERROR', 'java.io.IOException: Server returned HTTP response code: 401 for URL: https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/An+Giang/tomorrow?unitGroup=metric&include=hours%2Cdays&key=null', '2024-10-30 10:25:55', 1);
INSERT INTO `logs` VALUES (33, 'CRAWLED', 'FINISH', '2024-10-30 10:25:55', 1);
INSERT INTO `logs` VALUES (34, 'EXTRACTING', 'START EXTRACT DATA', '2024-10-30 10:25:55', 2);
INSERT INTO `logs` VALUES (35, 'TRUNCATED', 'TRUNCATED STAGING', '2024-10-30 10:25:55', 2);
INSERT INTO `logs` VALUES (36, 'IMPORT TO STAGING', 'FINISH', '2024-10-30 10:25:55', 2);
INSERT INTO `logs` VALUES (37, 'CRAWLING', 'Start crawling weather data', '2024-10-30 10:27:52', 1);
INSERT INTO `logs` VALUES (38, 'ERROR', 'config.properties (The system cannot find the file specified)', '2024-10-30 10:27:52', 1);
INSERT INTO `logs` VALUES (39, 'CRAWLED', 'FINISH', '2024-10-30 10:27:52', 1);
INSERT INTO `logs` VALUES (40, 'EXTRACTING', 'START EXTRACT DATA', '2024-10-30 10:27:52', 2);
INSERT INTO `logs` VALUES (41, 'TRUNCATED', 'TRUNCATED STAGING', '2024-10-30 10:27:52', 2);
INSERT INTO `logs` VALUES (42, 'IMPORT TO STAGING', 'FINISH', '2024-10-30 10:27:52', 2);
INSERT INTO `logs` VALUES (43, 'CRAWLING', 'Start crawling weather data', '2024-10-30 10:28:33', 1);
INSERT INTO `logs` VALUES (44, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 10:28:49', 1);
INSERT INTO `logs` VALUES (45, 'CRAWLED', 'FINISH', '2024-10-30 10:28:49', 1);
INSERT INTO `logs` VALUES (46, 'EXTRACTING', 'START EXTRACT DATA', '2024-10-30 10:28:49', 2);
INSERT INTO `logs` VALUES (47, 'IMPORT TO STAGING', 'FINISH', '2024-10-30 10:28:49', 2);
INSERT INTO `logs` VALUES (48, 'CRAWLING', 'Start crawling weather data', '2024-10-30 10:35:37', 1);
INSERT INTO `logs` VALUES (49, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 10:35:52', 1);
INSERT INTO `logs` VALUES (50, 'CRAWLED', 'FINISH', '2024-10-30 10:35:52', 1);
INSERT INTO `logs` VALUES (51, 'EXTRACTING', 'START EXTRACT DATA', '2024-10-30 10:35:52', 2);
INSERT INTO `logs` VALUES (52, 'TRUNCATED', 'TRUNCATED STAGING', '2024-10-30 10:35:53', 2);
INSERT INTO `logs` VALUES (53, 'IMPORT TO STAGING', 'FINISH', '2024-10-30 10:35:53', 2);
INSERT INTO `logs` VALUES (54, 'CRAWLING', 'Start crawling weather data', '2024-10-30 12:06:04', 1);
INSERT INTO `logs` VALUES (55, 'CRAWLED', 'CRAWL HOAN THANH', '2024-10-30 12:06:20', 1);
INSERT INTO `logs` VALUES (56, 'CRAWLED', 'FINISH', '2024-10-30 12:06:20', 1);
INSERT INTO `logs` VALUES (57, 'EXTRACTING', 'START EXTRACT DATA', '2024-10-30 12:06:20', 2);
INSERT INTO `logs` VALUES (58, 'TRUNCATED', 'TRUNCATED STAGING', '2024-10-30 12:06:20', 2);
INSERT INTO `logs` VALUES (59, 'IMPORT TO STAGING', 'FINISH', '2024-10-30 12:06:20', 2);
INSERT INTO `logs` VALUES (60, 'LOADING', 'LOAD TO DATE_DIM', '2024-10-30 12:06:21', 3);
INSERT INTO `logs` VALUES (61, 'ERROR', 'java.sql.SQLSyntaxErrorException: PROCEDURE control.import_to_date_dim does not exist', '2024-10-30 12:06:21', 3);
INSERT INTO `logs` VALUES (62, 'LOADED', ' LOAD TO DATE_DIM DONE ERROR', '2024-10-30 12:06:21', 3);
INSERT INTO `logs` VALUES (63, 'LOAD TO DATE_DIM', 'FINISH', '2024-10-30 12:06:21', 2);
INSERT INTO `logs` VALUES (64, 'CRAWLING', 'Start crawling weather data', '2024-11-13 06:16:53', 1);
INSERT INTO `logs` VALUES (65, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-13 06:17:07', 1);
INSERT INTO `logs` VALUES (66, 'CRAWLED', 'FINISH', '2024-11-13 06:17:07', 1);
INSERT INTO `logs` VALUES (67, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:17:07', 2);
INSERT INTO `logs` VALUES (68, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:17:07', 2);
INSERT INTO `logs` VALUES (69, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:17:08', 2);
INSERT INTO `logs` VALUES (70, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:17:08', 2);
INSERT INTO `logs` VALUES (71, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:17:08', 3);
INSERT INTO `logs` VALUES (72, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:17:08', 3);
INSERT INTO `logs` VALUES (73, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:17:08', 2);
INSERT INTO `logs` VALUES (74, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:25:18', 2);
INSERT INTO `logs` VALUES (75, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:25:18', 2);
INSERT INTO `logs` VALUES (76, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:25:18', 2);
INSERT INTO `logs` VALUES (77, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:25:18', 2);
INSERT INTO `logs` VALUES (78, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:25:18', 3);
INSERT INTO `logs` VALUES (79, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:25:18', 3);
INSERT INTO `logs` VALUES (80, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:25:18', 2);
INSERT INTO `logs` VALUES (81, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:27:24', 2);
INSERT INTO `logs` VALUES (82, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:27:24', 2);
INSERT INTO `logs` VALUES (83, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:27:24', 2);
INSERT INTO `logs` VALUES (84, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:27:24', 2);
INSERT INTO `logs` VALUES (85, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:27:24', 3);
INSERT INTO `logs` VALUES (86, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:27:24', 3);
INSERT INTO `logs` VALUES (87, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:27:24', 2);
INSERT INTO `logs` VALUES (88, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:28:36', 2);
INSERT INTO `logs` VALUES (89, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:28:36', 2);
INSERT INTO `logs` VALUES (90, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:28:36', 2);
INSERT INTO `logs` VALUES (91, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:28:36', 2);
INSERT INTO `logs` VALUES (92, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:28:36', 3);
INSERT INTO `logs` VALUES (93, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:28:36', 3);
INSERT INTO `logs` VALUES (94, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:28:36', 2);
INSERT INTO `logs` VALUES (95, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:29:48', 2);
INSERT INTO `logs` VALUES (96, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:29:48', 2);
INSERT INTO `logs` VALUES (97, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:29:48', 2);
INSERT INTO `logs` VALUES (98, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:29:48', 2);
INSERT INTO `logs` VALUES (99, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:29:48', 3);
INSERT INTO `logs` VALUES (100, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:29:48', 3);
INSERT INTO `logs` VALUES (101, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:29:48', 2);
INSERT INTO `logs` VALUES (102, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:30:34', 2);
INSERT INTO `logs` VALUES (103, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-13 06:30:34', 2);
INSERT INTO `logs` VALUES (104, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-13 06:30:34', 2);
INSERT INTO `logs` VALUES (105, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:30:34', 2);
INSERT INTO `logs` VALUES (106, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:30:34', 3);
INSERT INTO `logs` VALUES (107, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:30:34', 3);
INSERT INTO `logs` VALUES (108, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:30:34', 2);
INSERT INTO `logs` VALUES (109, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-13 06:36:10', 2);
INSERT INTO `logs` VALUES (110, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-13 06:36:10', 2);
INSERT INTO `logs` VALUES (111, 'IMPORT TO STAGING', 'FINISH', '2024-11-13 06:36:10', 2);
INSERT INTO `logs` VALUES (112, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 06:36:10', 3);
INSERT INTO `logs` VALUES (113, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 06:36:11', 3);
INSERT INTO `logs` VALUES (114, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 06:36:11', 2);
INSERT INTO `logs` VALUES (115, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 07:53:40', 3);
INSERT INTO `logs` VALUES (116, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 07:53:40', 3);
INSERT INTO `logs` VALUES (117, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 07:53:40', 2);
INSERT INTO `logs` VALUES (118, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-13 08:07:15', 3);
INSERT INTO `logs` VALUES (119, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-13 08:07:15', 3);
INSERT INTO `logs` VALUES (120, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-13 08:07:15', 2);
INSERT INTO `logs` VALUES (121, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:20:48', 1);
INSERT INTO `logs` VALUES (122, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:21:02', 1);
INSERT INTO `logs` VALUES (123, 'CRAWLED', 'FINISH', '2024-11-20 11:21:02', 1);
INSERT INTO `logs` VALUES (124, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:22:25', 1);
INSERT INTO `logs` VALUES (125, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:22:41', 1);
INSERT INTO `logs` VALUES (126, 'CRAWLED', 'FINISH', '2024-11-20 11:22:41', 1);
INSERT INTO `logs` VALUES (127, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:26:10', 1);
INSERT INTO `logs` VALUES (128, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:26:24', 1);
INSERT INTO `logs` VALUES (129, 'CRAWLED', 'FINISH', '2024-11-20 11:26:24', 1);
INSERT INTO `logs` VALUES (130, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:26:31', 1);
INSERT INTO `logs` VALUES (131, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:26:47', 1);
INSERT INTO `logs` VALUES (132, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:28:16', 1);
INSERT INTO `logs` VALUES (133, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:28:16', 1);
INSERT INTO `logs` VALUES (134, 'CRAWLED', 'FINISH', '2024-11-20 11:28:16', 1);
INSERT INTO `logs` VALUES (135, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:28:36', 1);
INSERT INTO `logs` VALUES (136, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:28:36', 1);
INSERT INTO `logs` VALUES (137, 'CRAWLED', 'FINISH', '2024-11-20 11:28:36', 1);
INSERT INTO `logs` VALUES (138, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:29:01', 1);
INSERT INTO `logs` VALUES (139, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:29:01', 1);
INSERT INTO `logs` VALUES (140, 'CRAWLED', 'FINISH', '2024-11-20 11:29:01', 1);
INSERT INTO `logs` VALUES (141, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:30:44', 1);
INSERT INTO `logs` VALUES (142, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:30:44', 1);
INSERT INTO `logs` VALUES (143, 'CRAWLED', 'FINISH', '2024-11-20 11:30:44', 1);
INSERT INTO `logs` VALUES (144, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:30:52', 1);
INSERT INTO `logs` VALUES (145, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:30:52', 1);
INSERT INTO `logs` VALUES (146, 'CRAWLED', 'FINISH', '2024-11-20 11:30:52', 1);
INSERT INTO `logs` VALUES (147, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:31:08', 1);
INSERT INTO `logs` VALUES (148, 'CRAWLED', 'CRAWL HOAN THANH', '2024-11-20 11:31:08', 1);
INSERT INTO `logs` VALUES (149, 'CRAWLED', 'FINISH', '2024-11-20 11:31:08', 1);
INSERT INTO `logs` VALUES (150, 'CRAWLING', 'Start crawling weather data', '2024-11-20 11:32:22', 1);
INSERT INTO `logs` VALUES (151, 'FINISHED', 'CRAWL HOAN THANH', '2024-11-20 11:32:37', 1);
INSERT INTO `logs` VALUES (152, 'FINISHED', 'FINISH', '2024-11-20 11:32:37', 1);
INSERT INTO `logs` VALUES (153, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-20 12:36:16', 2);
INSERT INTO `logs` VALUES (154, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-20 12:36:16', 2);
INSERT INTO `logs` VALUES (155, 'TRUNCATED', 'TRUNCATED STAGING ERROR', '2024-11-20 12:36:16', 2);
INSERT INTO `logs` VALUES (156, 'IMPORT TO STAGING', 'FINISH', '2024-11-20 12:36:17', 2);
INSERT INTO `logs` VALUES (157, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-20 12:39:42', 2);
INSERT INTO `logs` VALUES (158, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-20 12:39:42', 2);
INSERT INTO `logs` VALUES (159, 'IMPORT TO STAGING', 'FINISH', '2024-11-20 12:39:42', 2);
INSERT INTO `logs` VALUES (160, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-20 13:18:29', 2);
INSERT INTO `logs` VALUES (161, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-20 13:18:29', 2);
INSERT INTO `logs` VALUES (162, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-20 13:18:29', 2);
INSERT INTO `logs` VALUES (163, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-20 13:18:29', 2);
INSERT INTO `logs` VALUES (164, 'LOADING', 'LOAD TO DATE_DIM', '2024-11-20 13:35:17', 3);
INSERT INTO `logs` VALUES (165, 'LOADED', 'LOAD TO DATE_DIM DONE', '2024-11-20 13:35:17', 3);
INSERT INTO `logs` VALUES (166, 'LOAD TO DATE_DIM', 'FINISH', '2024-11-20 13:35:17', 2);
INSERT INTO `logs` VALUES (167, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:04:52', 1);
INSERT INTO `logs` VALUES (168, 'CRAWLED', 'FINISH', '2024-11-23 15:05:12', 1);
INSERT INTO `logs` VALUES (169, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:14:53', 1);
INSERT INTO `logs` VALUES (170, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:16:25', 1);
INSERT INTO `logs` VALUES (171, 'CRAWLED', 'FINISH', '2024-11-23 15:16:43', 1);
INSERT INTO `logs` VALUES (172, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:40:31', 1);
INSERT INTO `logs` VALUES (173, 'CRAWLED', 'FINISH', '2024-11-23 15:40:49', 1);
INSERT INTO `logs` VALUES (174, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:45:26', 1);
INSERT INTO `logs` VALUES (175, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:46:58', 1);
INSERT INTO `logs` VALUES (176, 'CRAWLED', 'FINISH', '2024-11-23 15:47:17', 1);
INSERT INTO `logs` VALUES (177, 'CRAWLING', 'Start crawling weather data', '2024-11-23 15:49:13', 1);
INSERT INTO `logs` VALUES (178, 'CRAWLED', 'FINISH', '2024-11-23 15:49:34', 1);
INSERT INTO `logs` VALUES (179, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-23 15:52:55', 2);
INSERT INTO `logs` VALUES (180, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-23 15:52:55', 2);
INSERT INTO `logs` VALUES (181, 'ERROR', 'Error executing LOAD DATA command: Loading local data is disabled; this must be enabled on both the client and server sides', '2024-11-23 15:52:55', 2);
INSERT INTO `logs` VALUES (182, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-23 15:52:55', 2);
INSERT INTO `logs` VALUES (183, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-23 15:52:55', 2);
INSERT INTO `logs` VALUES (184, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-23 15:55:21', 2);
INSERT INTO `logs` VALUES (185, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-23 15:55:21', 2);
INSERT INTO `logs` VALUES (186, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-23 15:55:21', 2);
INSERT INTO `logs` VALUES (187, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-23 15:55:21', 2);
INSERT INTO `logs` VALUES (188, 'CRAWLING', 'Start crawling weather data', '2024-11-25 10:58:52', 1);
INSERT INTO `logs` VALUES (189, 'CRAWLED', 'FINISH', '2024-11-25 10:59:12', 1);
INSERT INTO `logs` VALUES (190, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-25 20:49:00', 2);
INSERT INTO `logs` VALUES (191, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-25 20:49:00', 2);
INSERT INTO `logs` VALUES (192, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-25 20:49:01', 2);
INSERT INTO `logs` VALUES (193, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-25 20:49:01', 2);
INSERT INTO `logs` VALUES (194, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-25 20:49:21', 2);
INSERT INTO `logs` VALUES (195, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-25 20:49:22', 2);
INSERT INTO `logs` VALUES (196, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-25 20:49:22', 2);
INSERT INTO `logs` VALUES (197, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-25 20:49:22', 2);
INSERT INTO `logs` VALUES (198, 'CRAWLING', 'Start crawling weather data', '2024-11-26 01:52:27', 1);
INSERT INTO `logs` VALUES (199, 'CRAWLED', 'FINISH', '2024-11-26 01:52:45', 1);
INSERT INTO `logs` VALUES (200, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-26 01:53:21', 2);
INSERT INTO `logs` VALUES (201, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-26 01:53:22', 2);
INSERT INTO `logs` VALUES (202, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-26 01:53:22', 2);
INSERT INTO `logs` VALUES (203, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-26 01:53:22', 2);
INSERT INTO `logs` VALUES (204, 'CRAWLING', 'Start crawling weather data', '2024-11-26 11:09:26', 1);
INSERT INTO `logs` VALUES (205, 'CRAWLED', 'FINISH', '2024-11-26 11:09:45', 1);
INSERT INTO `logs` VALUES (206, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-26 11:10:24', 2);
INSERT INTO `logs` VALUES (207, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-26 11:10:24', 2);
INSERT INTO `logs` VALUES (208, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-26 11:10:24', 2);
INSERT INTO `logs` VALUES (209, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-26 11:10:24', 2);
INSERT INTO `logs` VALUES (210, 'CRAWLING', 'Start crawling weather data', '2024-11-27 11:39:45', 1);
INSERT INTO `logs` VALUES (211, 'CRAWLED', 'FINISH', '2024-11-27 11:40:03', 1);
INSERT INTO `logs` VALUES (212, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 11:42:41', 2);
INSERT INTO `logs` VALUES (213, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 11:42:41', 2);
INSERT INTO `logs` VALUES (214, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 11:42:41', 2);
INSERT INTO `logs` VALUES (215, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 11:42:41', 2);
INSERT INTO `logs` VALUES (216, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 11:44:18', 3);
INSERT INTO `logs` VALUES (217, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 11:44:24', 3);
INSERT INTO `logs` VALUES (218, 'MLOADING', 'Start load data to DataMart', '2024-11-27 13:39:51', 4);
INSERT INTO `logs` VALUES (219, 'MLOADED', 'Load to mart success', '2024-11-27 13:39:52', 3);
INSERT INTO `logs` VALUES (220, 'FINISHED', 'Finished', '2024-11-27 13:39:52', 3);
INSERT INTO `logs` VALUES (221, 'CRAWLING', 'Start crawling weather data', '2024-11-27 16:41:02', 1);
INSERT INTO `logs` VALUES (222, 'CRAWLED', 'FINISH', '2024-11-27 16:41:19', 1);
INSERT INTO `logs` VALUES (223, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:41:20', 3);
INSERT INTO `logs` VALUES (224, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:41:20', 3);
INSERT INTO `logs` VALUES (225, 'MLOADING', 'Start load data to DataMart', '2024-11-27 16:41:20', 4);
INSERT INTO `logs` VALUES (226, 'MLOADED', 'Load to mart success', '2024-11-27 16:41:20', 4);
INSERT INTO `logs` VALUES (227, 'FINISHED', 'Finished: DataWarehouse Date:04:41:20 27/11/2024', '2024-11-27 16:41:20', 4);
INSERT INTO `logs` VALUES (228, 'CRAWLING', 'Start crawling weather data', '2024-11-27 16:48:15', 1);
INSERT INTO `logs` VALUES (229, 'CRAWLED', 'FINISH', '2024-11-27 16:48:34', 1);
INSERT INTO `logs` VALUES (230, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:48:34', 3);
INSERT INTO `logs` VALUES (231, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:48:34', 3);
INSERT INTO `logs` VALUES (232, 'MLOADING', 'Start load data to DataMart', '2024-11-27 16:48:34', 4);
INSERT INTO `logs` VALUES (233, 'MLOADED', 'Load to mart success', '2024-11-27 16:48:34', 4);
INSERT INTO `logs` VALUES (234, 'FINISHED', 'Finished: DataWarehouse Date:04:48:34 27/11/2024', '2024-11-27 16:48:34', 4);
INSERT INTO `logs` VALUES (235, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:55:42', 3);
INSERT INTO `logs` VALUES (236, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:55:42', 3);
INSERT INTO `logs` VALUES (237, 'CRAWLING', 'Start crawling weather data', '2024-11-27 16:55:55', 1);
INSERT INTO `logs` VALUES (238, 'CRAWLED', 'FINISH', '2024-11-27 16:56:14', 1);
INSERT INTO `logs` VALUES (239, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:56:14', 3);
INSERT INTO `logs` VALUES (240, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:56:14', 3);
INSERT INTO `logs` VALUES (241, 'MLOADING', 'Start load data to DataMart', '2024-11-27 16:56:14', 4);
INSERT INTO `logs` VALUES (242, 'MLOADED', 'Load to mart success', '2024-11-27 16:56:14', 4);
INSERT INTO `logs` VALUES (243, 'FINISHED', 'Finished: DataWarehouse Date:04:56:14 27/11/2024', '2024-11-27 16:56:14', 4);
INSERT INTO `logs` VALUES (244, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:58:12', 3);
INSERT INTO `logs` VALUES (245, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:58:12', 3);
INSERT INTO `logs` VALUES (246, 'CRAWLING', 'Start crawling weather data', '2024-11-27 16:58:23', 1);
INSERT INTO `logs` VALUES (247, 'CRAWLED', 'FINISH', '2024-11-27 16:58:42', 1);
INSERT INTO `logs` VALUES (248, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 16:58:42', 3);
INSERT INTO `logs` VALUES (249, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 16:58:42', 3);
INSERT INTO `logs` VALUES (250, 'MLOADING', 'Start load data to DataMart', '2024-11-27 16:58:42', 4);
INSERT INTO `logs` VALUES (251, 'MLOADED', 'Load to mart success', '2024-11-27 16:58:42', 4);
INSERT INTO `logs` VALUES (252, 'FINISHED', 'Finished: DataWarehouse Date:04:58:42 27/11/2024', '2024-11-27 16:58:42', 4);
INSERT INTO `logs` VALUES (253, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 17:06:05', 2);
INSERT INTO `logs` VALUES (254, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 17:06:05', 2);
INSERT INTO `logs` VALUES (255, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 17:06:05', 2);
INSERT INTO `logs` VALUES (256, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 17:06:05', 2);
INSERT INTO `logs` VALUES (257, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 17:06:05', 3);
INSERT INTO `logs` VALUES (258, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 17:06:09', 3);
INSERT INTO `logs` VALUES (259, 'MLOADING', 'Start load data to DataMart', '2024-11-27 17:06:09', 4);
INSERT INTO `logs` VALUES (260, 'MLOADED', 'Load to mart success', '2024-11-27 17:06:09', 4);
INSERT INTO `logs` VALUES (261, 'FINISHED', 'Finished: DataWarehouse Date:05:06:09 27/11/2024', '2024-11-27 17:06:09', 4);
INSERT INTO `logs` VALUES (262, 'CRAWLING', 'Start crawling weather data', '2024-11-27 17:08:28', 1);
INSERT INTO `logs` VALUES (263, 'CRAWLED', 'FINISH', '2024-11-27 17:08:46', 1);
INSERT INTO `logs` VALUES (264, 'CRAWLING', 'Start crawling weather data', '2024-11-27 17:10:26', 1);
INSERT INTO `logs` VALUES (265, 'CRAWLED', 'FINISH', '2024-11-27 17:10:44', 1);
INSERT INTO `logs` VALUES (266, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 17:10:44', 3);
INSERT INTO `logs` VALUES (267, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 17:10:48', 3);
INSERT INTO `logs` VALUES (268, 'MLOADING', 'Start load data to DataMart', '2024-11-27 17:10:48', 4);
INSERT INTO `logs` VALUES (269, 'MLOADED', 'Load to mart success', '2024-11-27 17:10:48', 4);
INSERT INTO `logs` VALUES (270, 'FINISHED', 'Finished: DataWarehouse Date:05:10:48 27/11/2024', '2024-11-27 17:10:48', 4);
INSERT INTO `logs` VALUES (271, 'CRAWLING', 'Start crawling weather data', '2024-11-27 18:27:03', 1);
INSERT INTO `logs` VALUES (272, 'CRAWLED', 'FINISH', '2024-11-27 18:27:22', 1);
INSERT INTO `logs` VALUES (273, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 18:27:22', 2);
INSERT INTO `logs` VALUES (274, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 18:27:22', 2);
INSERT INTO `logs` VALUES (275, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 18:27:22', 2);
INSERT INTO `logs` VALUES (276, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 18:27:22', 2);
INSERT INTO `logs` VALUES (277, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 18:27:22', 3);
INSERT INTO `logs` VALUES (278, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 18:27:26', 3);
INSERT INTO `logs` VALUES (279, 'MLOADING', 'Start load data to DataMart', '2024-11-27 18:27:26', 4);
INSERT INTO `logs` VALUES (280, 'MLOADED', 'Load to mart success', '2024-11-27 18:27:27', 4);
INSERT INTO `logs` VALUES (281, 'FINISHED', 'Finished: DataWarehouse Date:06:27:26 27/11/2024', '2024-11-27 18:27:27', 4);
INSERT INTO `logs` VALUES (282, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 21:02:17', 2);
INSERT INTO `logs` VALUES (283, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 21:02:17', 2);
INSERT INTO `logs` VALUES (284, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 21:02:17', 2);
INSERT INTO `logs` VALUES (285, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 21:02:17', 2);
INSERT INTO `logs` VALUES (286, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 21:06:10', 3);
INSERT INTO `logs` VALUES (287, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 21:06:13', 3);
INSERT INTO `logs` VALUES (288, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 21:11:40', 3);
INSERT INTO `logs` VALUES (289, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 21:11:43', 3);
INSERT INTO `logs` VALUES (290, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 21:13:59', 2);
INSERT INTO `logs` VALUES (291, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 21:13:59', 2);
INSERT INTO `logs` VALUES (292, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 21:13:59', 2);
INSERT INTO `logs` VALUES (293, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 21:13:59', 2);
INSERT INTO `logs` VALUES (294, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 21:13:59', 3);
INSERT INTO `logs` VALUES (295, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 21:14:02', 3);
INSERT INTO `logs` VALUES (296, 'MLOADING', 'Start load data to DataMart', '2024-11-27 21:14:02', 4);
INSERT INTO `logs` VALUES (297, 'MLOADED', 'Load to mart success', '2024-11-27 21:14:02', 4);
INSERT INTO `logs` VALUES (298, 'FINISHED', 'Finished: DataWarehouse Date:09:14:02 27/11/2024', '2024-11-27 21:14:02', 4);
INSERT INTO `logs` VALUES (299, 'CRAWLING', 'Start crawling weather data', '2024-11-27 21:15:15', 1);
INSERT INTO `logs` VALUES (300, 'CRAWLED', 'FINISH', '2024-11-27 21:15:33', 1);
INSERT INTO `logs` VALUES (301, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-27 21:15:33', 2);
INSERT INTO `logs` VALUES (302, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-27 21:15:34', 2);
INSERT INTO `logs` VALUES (303, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-27 21:15:34', 2);
INSERT INTO `logs` VALUES (304, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-27 21:15:34', 2);
INSERT INTO `logs` VALUES (305, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-27 21:15:34', 3);
INSERT INTO `logs` VALUES (306, 'WH_LOADED', 'Load to warehouse success', '2024-11-27 21:15:38', 3);
INSERT INTO `logs` VALUES (307, 'MLOADING', 'Start load data to DataMart', '2024-11-27 21:15:38', 4);
INSERT INTO `logs` VALUES (308, 'MLOADED', 'Load to mart success', '2024-11-27 21:15:38', 4);
INSERT INTO `logs` VALUES (309, 'FINISHED', 'Finished: DataWarehouse Date:09:15:38 27/11/2024', '2024-11-27 21:15:38', 4);
INSERT INTO `logs` VALUES (310, 'MLOADING', 'Start load data to DataMart', '2024-11-27 21:17:06', 4);
INSERT INTO `logs` VALUES (311, 'MLOADED', 'Load to mart success', '2024-11-27 21:17:07', 4);
INSERT INTO `logs` VALUES (312, 'FINISHED', 'Finished: DataWarehouse Date:09:17:06 27/11/2024', '2024-11-27 21:17:07', 4);
INSERT INTO `logs` VALUES (313, 'CRAWLING', 'Start crawling weather data', '2024-11-28 01:50:31', 1);
INSERT INTO `logs` VALUES (314, 'CRAWLED', 'FINISH', '2024-11-28 01:50:49', 1);
INSERT INTO `logs` VALUES (315, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-28 01:50:49', 2);
INSERT INTO `logs` VALUES (316, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-28 01:50:49', 2);
INSERT INTO `logs` VALUES (317, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-28 01:50:49', 2);
INSERT INTO `logs` VALUES (318, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-28 01:50:49', 2);
INSERT INTO `logs` VALUES (319, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-28 01:50:49', 3);
INSERT INTO `logs` VALUES (320, 'WH_LOADED', 'Load to warehouse success', '2024-11-28 01:50:53', 3);
INSERT INTO `logs` VALUES (321, 'MLOADING', 'Start load data to DataMart', '2024-11-28 01:51:10', 4);
INSERT INTO `logs` VALUES (322, 'MLOADED', 'Load to mart success', '2024-11-28 01:51:10', 4);
INSERT INTO `logs` VALUES (323, 'FINISHED', 'Finished: DataWarehouse Date:01:51:10 28/11/2024', '2024-11-28 01:51:10', 4);
INSERT INTO `logs` VALUES (324, 'CRAWLING', 'Start crawling weather data', '2024-11-28 21:16:50', 1);
INSERT INTO `logs` VALUES (325, 'CRAWLED', 'FINISH', '2024-11-28 21:17:11', 1);
INSERT INTO `logs` VALUES (326, 'EXTRACTING', 'START EXTRACT DATA', '2024-11-28 21:17:11', 2);
INSERT INTO `logs` VALUES (327, 'TRUNCATED', 'TRUNCATED STAGING', '2024-11-28 21:17:11', 2);
INSERT INTO `logs` VALUES (328, 'EXTRACTING', 'IMPORT TO STAGING', '2024-11-28 21:17:11', 2);
INSERT INTO `logs` VALUES (329, 'EXTRACTED', 'IMPORTED TO STAGING', '2024-11-28 21:17:11', 2);
INSERT INTO `logs` VALUES (330, 'WH_LOADING', 'Start load data to Warehouse', '2024-11-28 21:17:12', 3);
INSERT INTO `logs` VALUES (331, 'WH_LOADED', 'Load to warehouse success', '2024-11-28 21:17:25', 3);
INSERT INTO `logs` VALUES (332, 'MLOADING', 'Start load data to DataMart', '2024-11-28 21:17:25', 4);
INSERT INTO `logs` VALUES (333, 'MLOADED', 'Load to mart success', '2024-11-28 21:17:25', 4);
INSERT INTO `logs` VALUES (334, 'FINISHED', 'Finished: DataWarehouse Date:09:17:25 28/11/2024', '2024-11-28 21:17:25', 4);

-- ----------------------------
-- Procedure structure for import_to_date_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `import_to_date_dim`;
delimiter ;;
CREATE PROCEDURE `import_to_date_dim`()
BEGIN
    INSERT INTO warehouse.dim_date(date_nk, datetime, day_of_week, month, year)
    SELECT 
        CAST(DATE_FORMAT(datetime, '%Y%m%d') AS UNSIGNED) AS date_nk, -- Đảm bảo kiểu số cho date_nk
        datetime,
        DAYOFWEEK(CAST(datetime AS DATE)),
        MONTH(datetime),
        YEAR(datetime)
    FROM staging.staging;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for import_to_time_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `import_to_time_dim`;
delimiter ;;
CREATE PROCEDURE `import_to_time_dim`()
BEGIN
INSERT INTO warehouse.dim_time(time_nk,hour,minute)
    SELECT 
        SUBSTRING_INDEX(datetime,'T',-1) AS time_nk, -- Đảm bảo kiểu số cho date_nk
        CAST(HOUR(datetime) as UNSIGNED) ,
				CAST(MINUTE(datetime) as UNSIGNED)
    FROM staging.staging;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs`(in config_id int, in stt VARCHAR(255),in des VARCHAR(255))
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(config_id,stt,des,NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for truncate_staging_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `truncate_staging_table`;
delimiter ;;
CREATE PROCEDURE `truncate_staging_table`()
BEGIN
	TRUNCATE TABLE staging.staging;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_file_path_configs
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_file_path_configs`;
delimiter ;;
CREATE PROCEDURE `update_file_path_configs`(in id_config int,in path varchar(255))
BEGIN
	update configs
	set configs.path_file = path
	where configs.id  = id_config;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs`(IN input_id INT,    -- Tham số đầu vào: id của bản ghi cần cập nhật
    IN input_flag INT)
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = input_flag
    WHERE id = input_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs`(in config_id int, in isProcessing int)
BEGIN
	UPDATE configs
	SET configs.is_processing = isProcessing
	WHERE configs.id = config_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_location_id_staging
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_location_id_staging`;
delimiter ;;
CREATE PROCEDURE `update_location_id_staging`()
BEGIN
	 UPDATE staging.staging s
    JOIN warehouse.dim_location w
    on 
		TRIM(SUBSTRING_INDEX(s.name, ',', 1)) = w.province
		and
    TRIM(SUBSTRING_INDEX(s.name, ',', -1)) = w.country
    SET s.LOCATION_ID = w.location_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs`;
delimiter ;;
CREATE PROCEDURE `update_status_configs`(in config_id int,in stt varchar(255))
BEGIN
	update configs
	set configs.`status` = stt
	WHERE configs.id = config_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
