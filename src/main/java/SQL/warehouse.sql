/*
 Navicat Premium Data Transfer

 Source Server         : DataWarehouse
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : warehouse

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 05/12/2024 18:49:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agg_weather_daily
-- ----------------------------
DROP TABLE IF EXISTS `agg_weather_daily`;
CREATE TABLE `agg_weather_daily`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_id` bigint NOT NULL DEFAULT 0,
  `location_id` int NOT NULL DEFAULT 0,
  `avg_temp_daily` decimal(10, 2) NULL DEFAULT NULL,
  `avg_humidity_daily` decimal(10, 2) NULL DEFAULT NULL,
  `avg_precip_daily` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_date1_idx`(`date_id` ASC) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE,
  CONSTRAINT `fk_agg_weather_daily_dim_date1` FOREIGN KEY (`date_id`) REFERENCES `dim_date` (`date_sk`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_agg_weather_daily_dim_location1` FOREIGN KEY (`location_id`) REFERENCES `dim_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agg_weather_daily
-- ----------------------------
INSERT INTO `agg_weather_daily` VALUES (1, 7280, 1, 27.31, 1.25, 0.31);
INSERT INTO `agg_weather_daily` VALUES (2, 7280, 2, 26.20, 1.58, 0.02);
INSERT INTO `agg_weather_daily` VALUES (3, 7280, 3, 27.03, 1.00, 0.18);
INSERT INTO `agg_weather_daily` VALUES (4, 7280, 4, 21.93, 1.25, 0.01);
INSERT INTO `agg_weather_daily` VALUES (5, 7280, 5, 16.01, 2.08, 0.22);
INSERT INTO `agg_weather_daily` VALUES (6, 7280, 6, 21.71, 1.04, 0.05);
INSERT INTO `agg_weather_daily` VALUES (7, 7280, 7, 27.01, 1.54, 0.05);
INSERT INTO `agg_weather_daily` VALUES (8, 7280, 8, 23.95, 1.92, 0.37);
INSERT INTO `agg_weather_daily` VALUES (9, 7280, 9, 26.10, 1.67, 0.00);
INSERT INTO `agg_weather_daily` VALUES (10, 7280, 10, 25.30, 2.50, 0.06);
INSERT INTO `agg_weather_daily` VALUES (11, 7280, 11, 24.93, 1.83, 0.00);
INSERT INTO `agg_weather_daily` VALUES (12, 7280, 12, 26.46, 1.92, 0.36);
INSERT INTO `agg_weather_daily` VALUES (13, 7280, 13, 26.43, 1.54, 0.22);
INSERT INTO `agg_weather_daily` VALUES (14, 7280, 14, 16.42, 1.75, 0.12);
INSERT INTO `agg_weather_daily` VALUES (15, 7280, 15, 23.88, 1.00, 0.24);
INSERT INTO `agg_weather_daily` VALUES (16, 7280, 16, 24.20, 1.33, 0.01);
INSERT INTO `agg_weather_daily` VALUES (17, 7280, 17, 21.68, 2.42, 0.00);
INSERT INTO `agg_weather_daily` VALUES (18, 7280, 18, 17.89, 2.42, 0.05);
INSERT INTO `agg_weather_daily` VALUES (19, 7280, 19, 26.89, 1.63, 0.32);
INSERT INTO `agg_weather_daily` VALUES (20, 7280, 20, 20.89, 1.79, 0.00);
INSERT INTO `agg_weather_daily` VALUES (21, 7280, 21, 16.12, 3.00, 0.61);
INSERT INTO `agg_weather_daily` VALUES (22, 7280, 22, 21.85, 1.00, 0.28);
INSERT INTO `agg_weather_daily` VALUES (23, 7280, 23, 20.83, 3.00, 0.03);
INSERT INTO `agg_weather_daily` VALUES (24, 7280, 24, 22.13, 1.13, 0.04);
INSERT INTO `agg_weather_daily` VALUES (25, 7280, 25, 22.67, 1.00, 0.04);
INSERT INTO `agg_weather_daily` VALUES (26, 7280, 26, 26.42, 2.00, 0.15);
INSERT INTO `agg_weather_daily` VALUES (27, 7280, 27, 19.56, 2.75, 0.25);
INSERT INTO `agg_weather_daily` VALUES (28, 7280, 28, 22.59, 1.04, 0.12);
INSERT INTO `agg_weather_daily` VALUES (29, 7280, 29, 24.61, 1.00, 0.05);
INSERT INTO `agg_weather_daily` VALUES (30, 7280, 30, 27.14, 1.00, 0.35);
INSERT INTO `agg_weather_daily` VALUES (31, 7280, 31, 20.53, 1.92, 0.00);
INSERT INTO `agg_weather_daily` VALUES (32, 7280, 32, 15.07, 2.42, 0.05);
INSERT INTO `agg_weather_daily` VALUES (33, 7280, 33, 17.93, 2.38, 0.07);
INSERT INTO `agg_weather_daily` VALUES (34, 7280, 34, 18.39, 1.42, 0.00);
INSERT INTO `agg_weather_daily` VALUES (35, 7280, 35, 16.76, 3.00, 0.09);
INSERT INTO `agg_weather_daily` VALUES (36, 7280, 36, 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_daily` VALUES (37, 7280, 37, 22.53, 1.08, 0.03);
INSERT INTO `agg_weather_daily` VALUES (38, 7280, 38, 22.92, 1.21, 0.14);
INSERT INTO `agg_weather_daily` VALUES (39, 7280, 39, 25.99, 1.25, 0.00);
INSERT INTO `agg_weather_daily` VALUES (40, 7280, 40, 19.96, 2.17, 0.53);
INSERT INTO `agg_weather_daily` VALUES (41, 7280, 41, 22.66, 3.00, 0.14);
INSERT INTO `agg_weather_daily` VALUES (42, 7280, 42, 21.89, 2.17, 0.16);
INSERT INTO `agg_weather_daily` VALUES (43, 7280, 43, 22.59, 2.50, 0.30);
INSERT INTO `agg_weather_daily` VALUES (44, 7280, 44, 21.66, 3.00, 0.25);
INSERT INTO `agg_weather_daily` VALUES (45, 7280, 45, 20.64, 1.13, 0.03);
INSERT INTO `agg_weather_daily` VALUES (46, 7280, 46, 21.83, 2.42, 0.09);
INSERT INTO `agg_weather_daily` VALUES (47, 7280, 47, 27.18, 1.21, 0.02);
INSERT INTO `agg_weather_daily` VALUES (48, 7280, 48, 17.14, 2.33, 0.05);
INSERT INTO `agg_weather_daily` VALUES (49, 7280, 49, 27.13, 1.38, 0.11);
INSERT INTO `agg_weather_daily` VALUES (50, 7280, 50, 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_daily` VALUES (51, 7280, 51, 19.93, 1.00, 0.12);
INSERT INTO `agg_weather_daily` VALUES (52, 7280, 52, 22.05, 2.33, 0.07);
INSERT INTO `agg_weather_daily` VALUES (53, 7280, 53, 26.25, 2.25, 0.13);
INSERT INTO `agg_weather_daily` VALUES (54, 7280, 54, 26.65, 1.88, 0.00);
INSERT INTO `agg_weather_daily` VALUES (55, 7280, 55, 27.35, 1.33, 0.01);
INSERT INTO `agg_weather_daily` VALUES (56, 7280, 56, 19.44, 2.17, 0.23);
INSERT INTO `agg_weather_daily` VALUES (57, 7280, 57, 26.20, 2.17, 0.33);
INSERT INTO `agg_weather_daily` VALUES (58, 7280, 58, 20.71, 1.33, 0.35);
INSERT INTO `agg_weather_daily` VALUES (59, 7280, 59, 19.52, 2.33, 0.74);

-- ----------------------------
-- Table structure for agg_weather_monthly
-- ----------------------------
DROP TABLE IF EXISTS `agg_weather_monthly`;
CREATE TABLE `agg_weather_monthly`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL DEFAULT 0,
  `monthly` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `avg_temp_monthly` decimal(10, 2) NULL DEFAULT NULL,
  `avg_humidity_monthly` decimal(10, 2) NULL DEFAULT NULL,
  `avg_precip_monthly` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_date1_idx`(`monthly` ASC) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE,
  CONSTRAINT `agg_weather_monthly_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `dim_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agg_weather_monthly
-- ----------------------------
INSERT INTO `agg_weather_monthly` VALUES (190, 1, '12/2024', 27.31, 1.25, 0.31);
INSERT INTO `agg_weather_monthly` VALUES (191, 2, '12/2024', 26.20, 1.58, 0.02);
INSERT INTO `agg_weather_monthly` VALUES (192, 3, '12/2024', 27.03, 1.00, 0.18);
INSERT INTO `agg_weather_monthly` VALUES (193, 4, '12/2024', 21.93, 1.25, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (194, 5, '12/2024', 16.01, 2.08, 0.22);
INSERT INTO `agg_weather_monthly` VALUES (195, 6, '12/2024', 21.71, 1.04, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (196, 7, '12/2024', 27.01, 1.54, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (197, 8, '12/2024', 23.95, 1.92, 0.37);
INSERT INTO `agg_weather_monthly` VALUES (198, 9, '12/2024', 26.10, 1.67, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (199, 10, '12/2024', 25.30, 2.50, 0.06);
INSERT INTO `agg_weather_monthly` VALUES (200, 11, '12/2024', 24.93, 1.83, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (201, 12, '12/2024', 26.46, 1.92, 0.36);
INSERT INTO `agg_weather_monthly` VALUES (202, 13, '12/2024', 26.43, 1.54, 0.22);
INSERT INTO `agg_weather_monthly` VALUES (203, 14, '12/2024', 16.42, 1.75, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (204, 15, '12/2024', 23.88, 1.00, 0.24);
INSERT INTO `agg_weather_monthly` VALUES (205, 16, '12/2024', 24.20, 1.33, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (206, 17, '12/2024', 21.68, 2.42, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (207, 18, '12/2024', 17.89, 2.42, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (208, 19, '12/2024', 26.89, 1.63, 0.32);
INSERT INTO `agg_weather_monthly` VALUES (209, 20, '12/2024', 20.89, 1.79, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (210, 21, '12/2024', 16.12, 3.00, 0.61);
INSERT INTO `agg_weather_monthly` VALUES (211, 22, '12/2024', 21.85, 1.00, 0.28);
INSERT INTO `agg_weather_monthly` VALUES (212, 23, '12/2024', 20.83, 3.00, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (213, 24, '12/2024', 22.13, 1.13, 0.04);
INSERT INTO `agg_weather_monthly` VALUES (214, 25, '12/2024', 22.67, 1.00, 0.04);
INSERT INTO `agg_weather_monthly` VALUES (215, 26, '12/2024', 26.42, 2.00, 0.15);
INSERT INTO `agg_weather_monthly` VALUES (216, 27, '12/2024', 19.56, 2.75, 0.25);
INSERT INTO `agg_weather_monthly` VALUES (217, 28, '12/2024', 22.59, 1.04, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (218, 29, '12/2024', 24.61, 1.00, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (219, 30, '12/2024', 27.14, 1.00, 0.35);
INSERT INTO `agg_weather_monthly` VALUES (220, 31, '12/2024', 20.53, 1.92, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (221, 32, '12/2024', 15.07, 2.42, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (222, 33, '12/2024', 17.93, 2.38, 0.07);
INSERT INTO `agg_weather_monthly` VALUES (223, 34, '12/2024', 18.39, 1.42, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (224, 35, '12/2024', 16.76, 3.00, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (225, 36, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (226, 37, '12/2024', 22.53, 1.08, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (227, 38, '12/2024', 22.92, 1.21, 0.14);
INSERT INTO `agg_weather_monthly` VALUES (228, 39, '12/2024', 25.99, 1.25, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (229, 40, '12/2024', 19.96, 2.17, 0.53);
INSERT INTO `agg_weather_monthly` VALUES (230, 41, '12/2024', 22.66, 3.00, 0.14);
INSERT INTO `agg_weather_monthly` VALUES (231, 42, '12/2024', 21.89, 2.17, 0.16);
INSERT INTO `agg_weather_monthly` VALUES (232, 43, '12/2024', 22.59, 2.50, 0.30);
INSERT INTO `agg_weather_monthly` VALUES (233, 44, '12/2024', 21.66, 3.00, 0.25);
INSERT INTO `agg_weather_monthly` VALUES (234, 45, '12/2024', 20.64, 1.13, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (235, 46, '12/2024', 21.83, 2.42, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (236, 47, '12/2024', 27.18, 1.21, 0.02);
INSERT INTO `agg_weather_monthly` VALUES (237, 48, '12/2024', 17.14, 2.33, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (238, 49, '12/2024', 27.13, 1.38, 0.11);
INSERT INTO `agg_weather_monthly` VALUES (239, 50, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (240, 51, '12/2024', 19.93, 1.00, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (241, 52, '12/2024', 22.05, 2.33, 0.07);
INSERT INTO `agg_weather_monthly` VALUES (242, 53, '12/2024', 26.25, 2.25, 0.13);
INSERT INTO `agg_weather_monthly` VALUES (243, 54, '12/2024', 26.65, 1.88, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (244, 55, '12/2024', 27.35, 1.33, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (245, 56, '12/2024', 19.44, 2.17, 0.23);
INSERT INTO `agg_weather_monthly` VALUES (246, 57, '12/2024', 26.20, 2.17, 0.33);
INSERT INTO `agg_weather_monthly` VALUES (247, 58, '12/2024', 20.71, 1.33, 0.35);
INSERT INTO `agg_weather_monthly` VALUES (248, 59, '12/2024', 19.52, 2.33, 0.74);

-- ----------------------------
-- Table structure for dim_cloudcover
-- ----------------------------
DROP TABLE IF EXISTS `dim_cloudcover`;
CREATE TABLE `dim_cloudcover`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cloudcover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_cloudcover
-- ----------------------------
INSERT INTO `dim_cloudcover` VALUES (1, 'Overcast');
INSERT INTO `dim_cloudcover` VALUES (2, 'Unknown');
INSERT INTO `dim_cloudcover` VALUES (3, 'Mostly Cloudy');
INSERT INTO `dim_cloudcover` VALUES (4, 'Partly Cloudy');
INSERT INTO `dim_cloudcover` VALUES (5, 'Clear');
INSERT INTO `dim_cloudcover` VALUES (6, 'Cloudy');

-- ----------------------------
-- Table structure for dim_conditions
-- ----------------------------
DROP TABLE IF EXISTS `dim_conditions`;
CREATE TABLE `dim_conditions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_conditions
-- ----------------------------
INSERT INTO `dim_conditions` VALUES (1, 'Rain, Overcast');
INSERT INTO `dim_conditions` VALUES (2, 'Overcast');
INSERT INTO `dim_conditions` VALUES (3, 'Rain, Partially cloudy');
INSERT INTO `dim_conditions` VALUES (4, 'Rain');
INSERT INTO `dim_conditions` VALUES (5, 'Clear');
INSERT INTO `dim_conditions` VALUES (6, 'Partially cloudy');

-- ----------------------------
-- Table structure for dim_date
-- ----------------------------
DROP TABLE IF EXISTS `dim_date`;
CREATE TABLE `dim_date`  (
  `date_sk` bigint NOT NULL,
  `datetime` date NULL DEFAULT NULL,
  `day_of_week` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `day` int NULL DEFAULT NULL,
  `month` int NULL DEFAULT 0,
  `year` int NULL DEFAULT 0,
  `week` int NULL DEFAULT NULL,
  `quarter` int NULL DEFAULT 0,
  PRIMARY KEY (`date_sk`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_date
-- ----------------------------
INSERT INTO `dim_date` VALUES (7214, '2024-10-01', 'Tuesday', 1, 10, 2024, 39, 4);
INSERT INTO `dim_date` VALUES (7215, '2024-10-02', 'Wednesday', 2, 10, 2024, 39, 4);
INSERT INTO `dim_date` VALUES (7216, '2024-10-03', 'Thursday', 3, 10, 2024, 39, 4);
INSERT INTO `dim_date` VALUES (7217, '2024-10-04', 'Friday', 4, 10, 2024, 39, 4);
INSERT INTO `dim_date` VALUES (7218, '2024-10-05', 'Saturday', 5, 10, 2024, 39, 4);
INSERT INTO `dim_date` VALUES (7219, '2024-10-06', 'Sunday', 6, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7220, '2024-10-07', 'Monday', 7, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7221, '2024-10-08', 'Tuesday', 8, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7222, '2024-10-09', 'Wednesday', 9, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7223, '2024-10-10', 'Thursday', 10, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7224, '2024-10-11', 'Friday', 11, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7225, '2024-10-12', 'Saturday', 12, 10, 2024, 40, 4);
INSERT INTO `dim_date` VALUES (7226, '2024-10-13', 'Sunday', 13, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7227, '2024-10-14', 'Monday', 14, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7228, '2024-10-15', 'Tuesday', 15, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7229, '2024-10-16', 'Wednesday', 16, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7230, '2024-10-17', 'Thursday', 17, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7231, '2024-10-18', 'Friday', 18, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7232, '2024-10-19', 'Saturday', 19, 10, 2024, 41, 4);
INSERT INTO `dim_date` VALUES (7233, '2024-10-20', 'Sunday', 20, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7234, '2024-10-21', 'Monday', 21, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7235, '2024-10-22', 'Tuesday', 22, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7236, '2024-10-23', 'Wednesday', 23, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7237, '2024-10-24', 'Thursday', 24, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7238, '2024-10-25', 'Friday', 25, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7239, '2024-10-26', 'Saturday', 26, 10, 2024, 42, 4);
INSERT INTO `dim_date` VALUES (7240, '2024-10-27', 'Sunday', 27, 10, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7241, '2024-10-28', 'Monday', 28, 10, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7242, '2024-10-29', 'Tuesday', 29, 10, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7243, '2024-10-30', 'Wednesday', 30, 10, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7244, '2024-10-31', 'Thursday', 31, 10, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7245, '2024-11-01', 'Friday', 1, 11, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7246, '2024-11-02', 'Saturday', 2, 11, 2024, 43, 4);
INSERT INTO `dim_date` VALUES (7247, '2024-11-03', 'Sunday', 3, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7248, '2024-11-04', 'Monday', 4, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7249, '2024-11-05', 'Tuesday', 5, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7250, '2024-11-06', 'Wednesday', 6, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7251, '2024-11-07', 'Thursday', 7, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7252, '2024-11-08', 'Friday', 8, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7253, '2024-11-09', 'Saturday', 9, 11, 2024, 44, 4);
INSERT INTO `dim_date` VALUES (7254, '2024-11-10', 'Sunday', 10, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7255, '2024-11-11', 'Monday', 11, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7256, '2024-11-12', 'Tuesday', 12, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7257, '2024-11-13', 'Wednesday', 13, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7258, '2024-11-14', 'Thursday', 14, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7259, '2024-11-15', 'Friday', 15, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7260, '2024-11-16', 'Saturday', 16, 11, 2024, 45, 4);
INSERT INTO `dim_date` VALUES (7261, '2024-11-17', 'Sunday', 17, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7262, '2024-11-18', 'Monday', 18, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7263, '2024-11-19', 'Tuesday', 19, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7264, '2024-11-20', 'Wednesday', 20, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7265, '2024-11-21', 'Thursday', 21, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7266, '2024-11-22', 'Friday', 22, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7267, '2024-11-23', 'Saturday', 23, 11, 2024, 46, 4);
INSERT INTO `dim_date` VALUES (7268, '2024-11-24', 'Sunday', 24, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7269, '2024-11-25', 'Monday', 25, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7270, '2024-11-26', 'Tuesday', 26, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7271, '2024-11-27', 'Wednesday', 27, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7272, '2024-11-28', 'Thursday', 28, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7273, '2024-11-29', 'Friday', 29, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7274, '2024-11-30', 'Saturday', 30, 11, 2024, 47, 4);
INSERT INTO `dim_date` VALUES (7275, '2024-12-01', 'Sunday', 1, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7276, '2024-12-02', 'Monday', 2, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7277, '2024-12-03', 'Tuesday', 3, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7278, '2024-12-04', 'Wednesday', 4, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7279, '2024-12-05', 'Thursday', 5, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7280, '2024-12-06', 'Friday', 6, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7281, '2024-12-07', 'Saturday', 7, 12, 2024, 48, 4);
INSERT INTO `dim_date` VALUES (7282, '2024-12-08', 'Sunday', 8, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7283, '2024-12-09', 'Monday', 9, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7284, '2024-12-10', 'Tuesday', 10, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7285, '2024-12-11', 'Wednesday', 11, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7286, '2024-12-12', 'Thursday', 12, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7287, '2024-12-13', 'Friday', 13, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7288, '2024-12-14', 'Saturday', 14, 12, 2024, 49, 4);
INSERT INTO `dim_date` VALUES (7289, '2024-12-15', 'Sunday', 15, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7290, '2024-12-16', 'Monday', 16, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7291, '2024-12-17', 'Tuesday', 17, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7292, '2024-12-18', 'Wednesday', 18, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7293, '2024-12-19', 'Thursday', 19, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7294, '2024-12-20', 'Friday', 20, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7295, '2024-12-21', 'Saturday', 21, 12, 2024, 50, 4);
INSERT INTO `dim_date` VALUES (7296, '2024-12-22', 'Sunday', 22, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7297, '2024-12-23', 'Monday', 23, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7298, '2024-12-24', 'Tuesday', 24, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7299, '2024-12-25', 'Wednesday', 25, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7300, '2024-12-26', 'Thursday', 26, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7301, '2024-12-27', 'Friday', 27, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7302, '2024-12-28', 'Saturday', 28, 12, 2024, 51, 4);
INSERT INTO `dim_date` VALUES (7303, '2024-12-29', 'Sunday', 29, 12, 2024, 52, 4);
INSERT INTO `dim_date` VALUES (7304, '2024-12-30', 'Monday', 30, 12, 2024, 52, 4);
INSERT INTO `dim_date` VALUES (7305, '2024-12-31', 'Tuesday', 31, 12, 2024, 52, 4);
INSERT INTO `dim_date` VALUES (7306, '2025-01-01', 'Wednesday', 1, 1, 2025, 0, 1);
INSERT INTO `dim_date` VALUES (7307, '2025-01-02', 'Thursday', 2, 1, 2025, 0, 1);
INSERT INTO `dim_date` VALUES (7308, '2025-01-03', 'Friday', 3, 1, 2025, 0, 1);
INSERT INTO `dim_date` VALUES (7309, '2025-01-04', 'Saturday', 4, 1, 2025, 0, 1);
INSERT INTO `dim_date` VALUES (7310, '2025-01-05', 'Sunday', 5, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7311, '2025-01-06', 'Monday', 6, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7312, '2025-01-07', 'Tuesday', 7, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7313, '2025-01-08', 'Wednesday', 8, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7314, '2025-01-09', 'Thursday', 9, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7315, '2025-01-10', 'Friday', 10, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7316, '2025-01-11', 'Saturday', 11, 1, 2025, 1, 1);
INSERT INTO `dim_date` VALUES (7317, '2025-01-12', 'Sunday', 12, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7318, '2025-01-13', 'Monday', 13, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7319, '2025-01-14', 'Tuesday', 14, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7320, '2025-01-15', 'Wednesday', 15, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7321, '2025-01-16', 'Thursday', 16, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7322, '2025-01-17', 'Friday', 17, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7323, '2025-01-18', 'Saturday', 18, 1, 2025, 2, 1);
INSERT INTO `dim_date` VALUES (7324, '2025-01-19', 'Sunday', 19, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7325, '2025-01-20', 'Monday', 20, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7326, '2025-01-21', 'Tuesday', 21, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7327, '2025-01-22', 'Wednesday', 22, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7328, '2025-01-23', 'Thursday', 23, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7329, '2025-01-24', 'Friday', 24, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7330, '2025-01-25', 'Saturday', 25, 1, 2025, 3, 1);
INSERT INTO `dim_date` VALUES (7331, '2025-01-26', 'Sunday', 26, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7332, '2025-01-27', 'Monday', 27, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7333, '2025-01-28', 'Tuesday', 28, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7334, '2025-01-29', 'Wednesday', 29, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7335, '2025-01-30', 'Thursday', 30, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7336, '2025-01-31', 'Friday', 31, 1, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7337, '2025-02-01', 'Saturday', 1, 2, 2025, 4, 1);
INSERT INTO `dim_date` VALUES (7338, '2025-02-02', 'Sunday', 2, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7339, '2025-02-03', 'Monday', 3, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7340, '2025-02-04', 'Tuesday', 4, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7341, '2025-02-05', 'Wednesday', 5, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7342, '2025-02-06', 'Thursday', 6, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7343, '2025-02-07', 'Friday', 7, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7344, '2025-02-08', 'Saturday', 8, 2, 2025, 5, 1);
INSERT INTO `dim_date` VALUES (7345, '2025-02-09', 'Sunday', 9, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7346, '2025-02-10', 'Monday', 10, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7347, '2025-02-11', 'Tuesday', 11, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7348, '2025-02-12', 'Wednesday', 12, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7349, '2025-02-13', 'Thursday', 13, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7350, '2025-02-14', 'Friday', 14, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7351, '2025-02-15', 'Saturday', 15, 2, 2025, 6, 1);
INSERT INTO `dim_date` VALUES (7352, '2025-02-16', 'Sunday', 16, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7353, '2025-02-17', 'Monday', 17, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7354, '2025-02-18', 'Tuesday', 18, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7355, '2025-02-19', 'Wednesday', 19, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7356, '2025-02-20', 'Thursday', 20, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7357, '2025-02-21', 'Friday', 21, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7358, '2025-02-22', 'Saturday', 22, 2, 2025, 7, 1);
INSERT INTO `dim_date` VALUES (7359, '2025-02-23', 'Sunday', 23, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7360, '2025-02-24', 'Monday', 24, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7361, '2025-02-25', 'Tuesday', 25, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7362, '2025-02-26', 'Wednesday', 26, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7363, '2025-02-27', 'Thursday', 27, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7364, '2025-02-28', 'Friday', 28, 2, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7365, '2025-03-01', 'Saturday', 1, 3, 2025, 8, 1);
INSERT INTO `dim_date` VALUES (7366, '2025-03-02', 'Sunday', 2, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7367, '2025-03-03', 'Monday', 3, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7368, '2025-03-04', 'Tuesday', 4, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7369, '2025-03-05', 'Wednesday', 5, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7370, '2025-03-06', 'Thursday', 6, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7371, '2025-03-07', 'Friday', 7, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7372, '2025-03-08', 'Saturday', 8, 3, 2025, 9, 1);
INSERT INTO `dim_date` VALUES (7373, '2025-03-09', 'Sunday', 9, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7374, '2025-03-10', 'Monday', 10, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7375, '2025-03-11', 'Tuesday', 11, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7376, '2025-03-12', 'Wednesday', 12, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7377, '2025-03-13', 'Thursday', 13, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7378, '2025-03-14', 'Friday', 14, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7379, '2025-03-15', 'Saturday', 15, 3, 2025, 10, 1);
INSERT INTO `dim_date` VALUES (7380, '2025-03-16', 'Sunday', 16, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7381, '2025-03-17', 'Monday', 17, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7382, '2025-03-18', 'Tuesday', 18, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7383, '2025-03-19', 'Wednesday', 19, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7384, '2025-03-20', 'Thursday', 20, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7385, '2025-03-21', 'Friday', 21, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7386, '2025-03-22', 'Saturday', 22, 3, 2025, 11, 1);
INSERT INTO `dim_date` VALUES (7387, '2025-03-23', 'Sunday', 23, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7388, '2025-03-24', 'Monday', 24, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7389, '2025-03-25', 'Tuesday', 25, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7390, '2025-03-26', 'Wednesday', 26, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7391, '2025-03-27', 'Thursday', 27, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7392, '2025-03-28', 'Friday', 28, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7393, '2025-03-29', 'Saturday', 29, 3, 2025, 12, 1);
INSERT INTO `dim_date` VALUES (7394, '2025-03-30', 'Sunday', 30, 3, 2025, 13, 1);
INSERT INTO `dim_date` VALUES (7395, '2025-03-31', 'Monday', 31, 3, 2025, 13, 1);
INSERT INTO `dim_date` VALUES (7396, '2025-04-01', 'Tuesday', 1, 4, 2025, 13, 2);
INSERT INTO `dim_date` VALUES (7397, '2025-04-02', 'Wednesday', 2, 4, 2025, 13, 2);
INSERT INTO `dim_date` VALUES (7398, '2025-04-03', 'Thursday', 3, 4, 2025, 13, 2);
INSERT INTO `dim_date` VALUES (7399, '2025-04-04', 'Friday', 4, 4, 2025, 13, 2);
INSERT INTO `dim_date` VALUES (7400, '2025-04-05', 'Saturday', 5, 4, 2025, 13, 2);
INSERT INTO `dim_date` VALUES (7401, '2025-04-06', 'Sunday', 6, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7402, '2025-04-07', 'Monday', 7, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7403, '2025-04-08', 'Tuesday', 8, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7404, '2025-04-09', 'Wednesday', 9, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7405, '2025-04-10', 'Thursday', 10, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7406, '2025-04-11', 'Friday', 11, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7407, '2025-04-12', 'Saturday', 12, 4, 2025, 14, 2);
INSERT INTO `dim_date` VALUES (7408, '2025-04-13', 'Sunday', 13, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7409, '2025-04-14', 'Monday', 14, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7410, '2025-04-15', 'Tuesday', 15, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7411, '2025-04-16', 'Wednesday', 16, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7412, '2025-04-17', 'Thursday', 17, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7413, '2025-04-18', 'Friday', 18, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7414, '2025-04-19', 'Saturday', 19, 4, 2025, 15, 2);
INSERT INTO `dim_date` VALUES (7415, '2025-04-20', 'Sunday', 20, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7416, '2025-04-21', 'Monday', 21, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7417, '2025-04-22', 'Tuesday', 22, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7418, '2025-04-23', 'Wednesday', 23, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7419, '2025-04-24', 'Thursday', 24, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7420, '2025-04-25', 'Friday', 25, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7421, '2025-04-26', 'Saturday', 26, 4, 2025, 16, 2);
INSERT INTO `dim_date` VALUES (7422, '2025-04-27', 'Sunday', 27, 4, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7423, '2025-04-28', 'Monday', 28, 4, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7424, '2025-04-29', 'Tuesday', 29, 4, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7425, '2025-04-30', 'Wednesday', 30, 4, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7426, '2025-05-01', 'Thursday', 1, 5, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7427, '2025-05-02', 'Friday', 2, 5, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7428, '2025-05-03', 'Saturday', 3, 5, 2025, 17, 2);
INSERT INTO `dim_date` VALUES (7429, '2025-05-04', 'Sunday', 4, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7430, '2025-05-05', 'Monday', 5, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7431, '2025-05-06', 'Tuesday', 6, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7432, '2025-05-07', 'Wednesday', 7, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7433, '2025-05-08', 'Thursday', 8, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7434, '2025-05-09', 'Friday', 9, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7435, '2025-05-10', 'Saturday', 10, 5, 2025, 18, 2);
INSERT INTO `dim_date` VALUES (7436, '2025-05-11', 'Sunday', 11, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7437, '2025-05-12', 'Monday', 12, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7438, '2025-05-13', 'Tuesday', 13, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7439, '2025-05-14', 'Wednesday', 14, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7440, '2025-05-15', 'Thursday', 15, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7441, '2025-05-16', 'Friday', 16, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7442, '2025-05-17', 'Saturday', 17, 5, 2025, 19, 2);
INSERT INTO `dim_date` VALUES (7443, '2025-05-18', 'Sunday', 18, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7444, '2025-05-19', 'Monday', 19, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7445, '2025-05-20', 'Tuesday', 20, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7446, '2025-05-21', 'Wednesday', 21, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7447, '2025-05-22', 'Thursday', 22, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7448, '2025-05-23', 'Friday', 23, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7449, '2025-05-24', 'Saturday', 24, 5, 2025, 20, 2);
INSERT INTO `dim_date` VALUES (7450, '2025-05-25', 'Sunday', 25, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7451, '2025-05-26', 'Monday', 26, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7452, '2025-05-27', 'Tuesday', 27, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7453, '2025-05-28', 'Wednesday', 28, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7454, '2025-05-29', 'Thursday', 29, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7455, '2025-05-30', 'Friday', 30, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7456, '2025-05-31', 'Saturday', 31, 5, 2025, 21, 2);
INSERT INTO `dim_date` VALUES (7457, '2025-06-01', 'Sunday', 1, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7458, '2025-06-02', 'Monday', 2, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7459, '2025-06-03', 'Tuesday', 3, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7460, '2025-06-04', 'Wednesday', 4, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7461, '2025-06-05', 'Thursday', 5, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7462, '2025-06-06', 'Friday', 6, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7463, '2025-06-07', 'Saturday', 7, 6, 2025, 22, 2);
INSERT INTO `dim_date` VALUES (7464, '2025-06-08', 'Sunday', 8, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7465, '2025-06-09', 'Monday', 9, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7466, '2025-06-10', 'Tuesday', 10, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7467, '2025-06-11', 'Wednesday', 11, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7468, '2025-06-12', 'Thursday', 12, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7469, '2025-06-13', 'Friday', 13, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7470, '2025-06-14', 'Saturday', 14, 6, 2025, 23, 2);
INSERT INTO `dim_date` VALUES (7471, '2025-06-15', 'Sunday', 15, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7472, '2025-06-16', 'Monday', 16, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7473, '2025-06-17', 'Tuesday', 17, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7474, '2025-06-18', 'Wednesday', 18, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7475, '2025-06-19', 'Thursday', 19, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7476, '2025-06-20', 'Friday', 20, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7477, '2025-06-21', 'Saturday', 21, 6, 2025, 24, 2);
INSERT INTO `dim_date` VALUES (7478, '2025-06-22', 'Sunday', 22, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7479, '2025-06-23', 'Monday', 23, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7480, '2025-06-24', 'Tuesday', 24, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7481, '2025-06-25', 'Wednesday', 25, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7482, '2025-06-26', 'Thursday', 26, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7483, '2025-06-27', 'Friday', 27, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7484, '2025-06-28', 'Saturday', 28, 6, 2025, 25, 2);
INSERT INTO `dim_date` VALUES (7485, '2025-06-29', 'Sunday', 29, 6, 2025, 26, 2);
INSERT INTO `dim_date` VALUES (7486, '2025-06-30', 'Monday', 30, 6, 2025, 26, 2);
INSERT INTO `dim_date` VALUES (7487, '2025-07-01', 'Tuesday', 1, 7, 2025, 26, 3);
INSERT INTO `dim_date` VALUES (7488, '2025-07-02', 'Wednesday', 2, 7, 2025, 26, 3);
INSERT INTO `dim_date` VALUES (7489, '2025-07-03', 'Thursday', 3, 7, 2025, 26, 3);
INSERT INTO `dim_date` VALUES (7490, '2025-07-04', 'Friday', 4, 7, 2025, 26, 3);
INSERT INTO `dim_date` VALUES (7491, '2025-07-05', 'Saturday', 5, 7, 2025, 26, 3);
INSERT INTO `dim_date` VALUES (7492, '2025-07-06', 'Sunday', 6, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7493, '2025-07-07', 'Monday', 7, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7494, '2025-07-08', 'Tuesday', 8, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7495, '2025-07-09', 'Wednesday', 9, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7496, '2025-07-10', 'Thursday', 10, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7497, '2025-07-11', 'Friday', 11, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7498, '2025-07-12', 'Saturday', 12, 7, 2025, 27, 3);
INSERT INTO `dim_date` VALUES (7499, '2025-07-13', 'Sunday', 13, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7500, '2025-07-14', 'Monday', 14, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7501, '2025-07-15', 'Tuesday', 15, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7502, '2025-07-16', 'Wednesday', 16, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7503, '2025-07-17', 'Thursday', 17, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7504, '2025-07-18', 'Friday', 18, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7505, '2025-07-19', 'Saturday', 19, 7, 2025, 28, 3);
INSERT INTO `dim_date` VALUES (7506, '2025-07-20', 'Sunday', 20, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7507, '2025-07-21', 'Monday', 21, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7508, '2025-07-22', 'Tuesday', 22, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7509, '2025-07-23', 'Wednesday', 23, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7510, '2025-07-24', 'Thursday', 24, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7511, '2025-07-25', 'Friday', 25, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7512, '2025-07-26', 'Saturday', 26, 7, 2025, 29, 3);
INSERT INTO `dim_date` VALUES (7513, '2025-07-27', 'Sunday', 27, 7, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7514, '2025-07-28', 'Monday', 28, 7, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7515, '2025-07-29', 'Tuesday', 29, 7, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7516, '2025-07-30', 'Wednesday', 30, 7, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7517, '2025-07-31', 'Thursday', 31, 7, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7518, '2025-08-01', 'Friday', 1, 8, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7519, '2025-08-02', 'Saturday', 2, 8, 2025, 30, 3);
INSERT INTO `dim_date` VALUES (7520, '2025-08-03', 'Sunday', 3, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7521, '2025-08-04', 'Monday', 4, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7522, '2025-08-05', 'Tuesday', 5, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7523, '2025-08-06', 'Wednesday', 6, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7524, '2025-08-07', 'Thursday', 7, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7525, '2025-08-08', 'Friday', 8, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7526, '2025-08-09', 'Saturday', 9, 8, 2025, 31, 3);
INSERT INTO `dim_date` VALUES (7527, '2025-08-10', 'Sunday', 10, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7528, '2025-08-11', 'Monday', 11, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7529, '2025-08-12', 'Tuesday', 12, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7530, '2025-08-13', 'Wednesday', 13, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7531, '2025-08-14', 'Thursday', 14, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7532, '2025-08-15', 'Friday', 15, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7533, '2025-08-16', 'Saturday', 16, 8, 2025, 32, 3);
INSERT INTO `dim_date` VALUES (7534, '2025-08-17', 'Sunday', 17, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7535, '2025-08-18', 'Monday', 18, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7536, '2025-08-19', 'Tuesday', 19, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7537, '2025-08-20', 'Wednesday', 20, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7538, '2025-08-21', 'Thursday', 21, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7539, '2025-08-22', 'Friday', 22, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7540, '2025-08-23', 'Saturday', 23, 8, 2025, 33, 3);
INSERT INTO `dim_date` VALUES (7541, '2025-08-24', 'Sunday', 24, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7542, '2025-08-25', 'Monday', 25, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7543, '2025-08-26', 'Tuesday', 26, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7544, '2025-08-27', 'Wednesday', 27, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7545, '2025-08-28', 'Thursday', 28, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7546, '2025-08-29', 'Friday', 29, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7547, '2025-08-30', 'Saturday', 30, 8, 2025, 34, 3);
INSERT INTO `dim_date` VALUES (7548, '2025-08-31', 'Sunday', 31, 8, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7549, '2025-09-01', 'Monday', 1, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7550, '2025-09-02', 'Tuesday', 2, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7551, '2025-09-03', 'Wednesday', 3, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7552, '2025-09-04', 'Thursday', 4, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7553, '2025-09-05', 'Friday', 5, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7554, '2025-09-06', 'Saturday', 6, 9, 2025, 35, 3);
INSERT INTO `dim_date` VALUES (7555, '2025-09-07', 'Sunday', 7, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7556, '2025-09-08', 'Monday', 8, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7557, '2025-09-09', 'Tuesday', 9, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7558, '2025-09-10', 'Wednesday', 10, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7559, '2025-09-11', 'Thursday', 11, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7560, '2025-09-12', 'Friday', 12, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7561, '2025-09-13', 'Saturday', 13, 9, 2025, 36, 3);
INSERT INTO `dim_date` VALUES (7562, '2025-09-14', 'Sunday', 14, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7563, '2025-09-15', 'Monday', 15, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7564, '2025-09-16', 'Tuesday', 16, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7565, '2025-09-17', 'Wednesday', 17, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7566, '2025-09-18', 'Thursday', 18, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7567, '2025-09-19', 'Friday', 19, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7568, '2025-09-20', 'Saturday', 20, 9, 2025, 37, 3);
INSERT INTO `dim_date` VALUES (7569, '2025-09-21', 'Sunday', 21, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7570, '2025-09-22', 'Monday', 22, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7571, '2025-09-23', 'Tuesday', 23, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7572, '2025-09-24', 'Wednesday', 24, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7573, '2025-09-25', 'Thursday', 25, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7574, '2025-09-26', 'Friday', 26, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7575, '2025-09-27', 'Saturday', 27, 9, 2025, 38, 3);
INSERT INTO `dim_date` VALUES (7576, '2025-09-28', 'Sunday', 28, 9, 2025, 39, 3);
INSERT INTO `dim_date` VALUES (7577, '2025-09-29', 'Monday', 29, 9, 2025, 39, 3);
INSERT INTO `dim_date` VALUES (7578, '2025-09-30', 'Tuesday', 30, 9, 2025, 39, 3);
INSERT INTO `dim_date` VALUES (7579, '2025-10-01', 'Wednesday', 1, 10, 2025, 39, 4);
INSERT INTO `dim_date` VALUES (7580, '2025-10-02', 'Thursday', 2, 10, 2025, 39, 4);
INSERT INTO `dim_date` VALUES (7581, '2025-10-03', 'Friday', 3, 10, 2025, 39, 4);
INSERT INTO `dim_date` VALUES (7582, '2025-10-04', 'Saturday', 4, 10, 2025, 39, 4);
INSERT INTO `dim_date` VALUES (7583, '2025-10-05', 'Sunday', 5, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7584, '2025-10-06', 'Monday', 6, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7585, '2025-10-07', 'Tuesday', 7, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7586, '2025-10-08', 'Wednesday', 8, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7587, '2025-10-09', 'Thursday', 9, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7588, '2025-10-10', 'Friday', 10, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7589, '2025-10-11', 'Saturday', 11, 10, 2025, 40, 4);
INSERT INTO `dim_date` VALUES (7590, '2025-10-12', 'Sunday', 12, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7591, '2025-10-13', 'Monday', 13, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7592, '2025-10-14', 'Tuesday', 14, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7593, '2025-10-15', 'Wednesday', 15, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7594, '2025-10-16', 'Thursday', 16, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7595, '2025-10-17', 'Friday', 17, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7596, '2025-10-18', 'Saturday', 18, 10, 2025, 41, 4);
INSERT INTO `dim_date` VALUES (7597, '2025-10-19', 'Sunday', 19, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7598, '2025-10-20', 'Monday', 20, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7599, '2025-10-21', 'Tuesday', 21, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7600, '2025-10-22', 'Wednesday', 22, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7601, '2025-10-23', 'Thursday', 23, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7602, '2025-10-24', 'Friday', 24, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7603, '2025-10-25', 'Saturday', 25, 10, 2025, 42, 4);
INSERT INTO `dim_date` VALUES (7604, '2025-10-26', 'Sunday', 26, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7605, '2025-10-27', 'Monday', 27, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7606, '2025-10-28', 'Tuesday', 28, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7607, '2025-10-29', 'Wednesday', 29, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7608, '2025-10-30', 'Thursday', 30, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7609, '2025-10-31', 'Friday', 31, 10, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7610, '2025-11-01', 'Saturday', 1, 11, 2025, 43, 4);
INSERT INTO `dim_date` VALUES (7611, '2025-11-02', 'Sunday', 2, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7612, '2025-11-03', 'Monday', 3, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7613, '2025-11-04', 'Tuesday', 4, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7614, '2025-11-05', 'Wednesday', 5, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7615, '2025-11-06', 'Thursday', 6, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7616, '2025-11-07', 'Friday', 7, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7617, '2025-11-08', 'Saturday', 8, 11, 2025, 44, 4);
INSERT INTO `dim_date` VALUES (7618, '2025-11-09', 'Sunday', 9, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7619, '2025-11-10', 'Monday', 10, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7620, '2025-11-11', 'Tuesday', 11, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7621, '2025-11-12', 'Wednesday', 12, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7622, '2025-11-13', 'Thursday', 13, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7623, '2025-11-14', 'Friday', 14, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7624, '2025-11-15', 'Saturday', 15, 11, 2025, 45, 4);
INSERT INTO `dim_date` VALUES (7625, '2025-11-16', 'Sunday', 16, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7626, '2025-11-17', 'Monday', 17, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7627, '2025-11-18', 'Tuesday', 18, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7628, '2025-11-19', 'Wednesday', 19, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7629, '2025-11-20', 'Thursday', 20, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7630, '2025-11-21', 'Friday', 21, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7631, '2025-11-22', 'Saturday', 22, 11, 2025, 46, 4);
INSERT INTO `dim_date` VALUES (7632, '2025-11-23', 'Sunday', 23, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7633, '2025-11-24', 'Monday', 24, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7634, '2025-11-25', 'Tuesday', 25, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7635, '2025-11-26', 'Wednesday', 26, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7636, '2025-11-27', 'Thursday', 27, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7637, '2025-11-28', 'Friday', 28, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7638, '2025-11-29', 'Saturday', 29, 11, 2025, 47, 4);
INSERT INTO `dim_date` VALUES (7639, '2025-11-30', 'Sunday', 30, 11, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7640, '2025-12-01', 'Monday', 1, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7641, '2025-12-02', 'Tuesday', 2, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7642, '2025-12-03', 'Wednesday', 3, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7643, '2025-12-04', 'Thursday', 4, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7644, '2025-12-05', 'Friday', 5, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7645, '2025-12-06', 'Saturday', 6, 12, 2025, 48, 4);
INSERT INTO `dim_date` VALUES (7646, '2025-12-07', 'Sunday', 7, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7647, '2025-12-08', 'Monday', 8, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7648, '2025-12-09', 'Tuesday', 9, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7649, '2025-12-10', 'Wednesday', 10, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7650, '2025-12-11', 'Thursday', 11, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7651, '2025-12-12', 'Friday', 12, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7652, '2025-12-13', 'Saturday', 13, 12, 2025, 49, 4);
INSERT INTO `dim_date` VALUES (7653, '2025-12-14', 'Sunday', 14, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7654, '2025-12-15', 'Monday', 15, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7655, '2025-12-16', 'Tuesday', 16, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7656, '2025-12-17', 'Wednesday', 17, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7657, '2025-12-18', 'Thursday', 18, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7658, '2025-12-19', 'Friday', 19, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7659, '2025-12-20', 'Saturday', 20, 12, 2025, 50, 4);
INSERT INTO `dim_date` VALUES (7660, '2025-12-21', 'Sunday', 21, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7661, '2025-12-22', 'Monday', 22, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7662, '2025-12-23', 'Tuesday', 23, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7663, '2025-12-24', 'Wednesday', 24, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7664, '2025-12-25', 'Thursday', 25, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7665, '2025-12-26', 'Friday', 26, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7666, '2025-12-27', 'Saturday', 27, 12, 2025, 51, 4);
INSERT INTO `dim_date` VALUES (7667, '2025-12-28', 'Sunday', 28, 12, 2025, 52, 4);
INSERT INTO `dim_date` VALUES (7668, '2025-12-29', 'Monday', 29, 12, 2025, 52, 4);
INSERT INTO `dim_date` VALUES (7669, '2025-12-30', 'Tuesday', 30, 12, 2025, 52, 4);
INSERT INTO `dim_date` VALUES (7670, '2025-12-31', 'Wednesday', 31, 12, 2025, 52, 4);
INSERT INTO `dim_date` VALUES (7671, '2026-01-01', 'Thursday', 1, 1, 2026, 0, 1);

-- ----------------------------
-- Table structure for dim_humidity
-- ----------------------------
DROP TABLE IF EXISTS `dim_humidity`;
CREATE TABLE `dim_humidity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `humidity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_humidity
-- ----------------------------
INSERT INTO `dim_humidity` VALUES (1, 'High');
INSERT INTO `dim_humidity` VALUES (2, 'Normal');
INSERT INTO `dim_humidity` VALUES (3, 'Very High');

-- ----------------------------
-- Table structure for dim_icon
-- ----------------------------
DROP TABLE IF EXISTS `dim_icon`;
CREATE TABLE `dim_icon`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_icon
-- ----------------------------
INSERT INTO `dim_icon` VALUES (1, 'rain');
INSERT INTO `dim_icon` VALUES (2, 'cloudy');
INSERT INTO `dim_icon` VALUES (3, 'clear-night');
INSERT INTO `dim_icon` VALUES (4, 'partly-cloudy-night');
INSERT INTO `dim_icon` VALUES (5, 'partly-cloudy-day');
INSERT INTO `dim_icon` VALUES (6, 'clear-day');
INSERT INTO `dim_icon` VALUES (7, 'fog');

-- ----------------------------
-- Table structure for dim_location
-- ----------------------------
DROP TABLE IF EXISTS `dim_location`;
CREATE TABLE `dim_location`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `dtChanged` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExpired` datetime NULL DEFAULT '9999-12-31 23:59:59',
  `isCurrent` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_location
-- ----------------------------
INSERT INTO `dim_location` VALUES (1, 'VN1', 'An Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (2, 'VN25', 'Bà Rịa', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (3, 'VN49', 'Bạc Liêu', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (4, 'VN73', 'Bắc Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (5, 'VN97', 'Bắc Kạn', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (6, 'VN121', 'Bắc Ninh', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (7, 'VN145', 'Bến Tre', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (8, 'VN169', 'Bình Định', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (9, 'VN193', 'Bình Dương', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (10, 'VN217', 'Bình Phước', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (11, 'VN241', 'Bình Thuận', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (12, 'VN265', 'Cà Mau', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (13, 'VN289', 'Cần Thơ', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (14, 'VN313', 'Cao Bằng', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (15, 'VN337', 'Đà Nẵng', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (16, 'VN361', 'Đắk Lắk', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (17, 'VN385', 'Đắk Nông', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (18, 'VN409', 'Điện Biên', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (19, 'VN433', 'Đồng Tháp', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (20, 'VN457', 'Gia Lai', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (21, 'VN481', 'Hà Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (22, 'VN505', 'Quận Hoàn Kiếm', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (23, 'VN529', 'Hà Tĩnh', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (24, 'VN553', 'Hải Dương', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (25, 'VN577', 'Quận Ngô Quyền', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (26, 'VN601', 'Hậu Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (27, 'VN625', 'Hòa Bình', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (28, 'VN649', 'Hưng Yên', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (29, 'VN673', 'Khánh Hòa', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (30, 'VN697', 'Kiên Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (31, 'VN721', 'Kon Tum', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (32, 'VN745', 'Lai Châu', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (33, 'VN769', 'Lâm Đồng', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (34, 'VN793', 'Lạng Sơn', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (35, 'VN817', 'Lào Cai', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (36, 'VN841', 'Nam Định', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (37, 'VN865', 'Nghệ An', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (38, 'VN889', 'Ninh Bình', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (39, 'VN913', 'Ninh Thuận', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (40, 'VN937', 'Thị Xã Phú Thọ', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (41, 'VN961', 'Phú Yên', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (42, 'VN985', 'Quảng Bình', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (43, 'VN1009', 'Quảng Nam', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (44, 'VN1033', 'Quảng Ngãi', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (45, 'VN1057', 'Quảng Ninh', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (46, 'VN1081', 'Quảng Trị', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (47, 'VN1105', 'Sóc Trăng', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (48, 'VN1129', 'Sơn La', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (49, 'VN1153', 'Tây Ninh', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (50, 'VN1177', 'Thái Bình', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (51, 'VN1201', 'Thái Nguyên', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (52, 'VN1225', 'Huế', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (53, 'VN1249', 'Tiền Giang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (54, 'VN1273', 'Thủ Đức', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (55, 'VN1297', 'Trà Vinh', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (56, 'VN1321', 'Tuyên Quang', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (57, 'VN1345', 'Vĩnh Long', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (58, 'VN1369', 'Vĩnh Phúc', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);
INSERT INTO `dim_location` VALUES (59, 'VN1393', 'Yên Bái', 'Việt Nam', '2024-11-27 21:15:34', '9999-12-31 23:59:59', 1);

-- ----------------------------
-- Table structure for dim_preciptype
-- ----------------------------
DROP TABLE IF EXISTS `dim_preciptype`;
CREATE TABLE `dim_preciptype`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `preciptype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_preciptype
-- ----------------------------
INSERT INTO `dim_preciptype` VALUES (1, '[rain]');
INSERT INTO `dim_preciptype` VALUES (2, 'None');

-- ----------------------------
-- Table structure for dim_pressure
-- ----------------------------
DROP TABLE IF EXISTS `dim_pressure`;
CREATE TABLE `dim_pressure`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pressure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_pressure
-- ----------------------------
INSERT INTO `dim_pressure` VALUES (1, 'Normal');

-- ----------------------------
-- Table structure for dim_stations
-- ----------------------------
DROP TABLE IF EXISTS `dim_stations`;
CREATE TABLE `dim_stations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stations` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_stations
-- ----------------------------
INSERT INTO `dim_stations` VALUES (1, 'None');

-- ----------------------------
-- Table structure for dim_time
-- ----------------------------
DROP TABLE IF EXISTS `dim_time`;
CREATE TABLE `dim_time`  (
  `time_sk` int NOT NULL AUTO_INCREMENT,
  `hour` int NULL DEFAULT 0,
  PRIMARY KEY (`time_sk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_time
-- ----------------------------
INSERT INTO `dim_time` VALUES (1, 0);
INSERT INTO `dim_time` VALUES (2, 1);
INSERT INTO `dim_time` VALUES (3, 2);
INSERT INTO `dim_time` VALUES (4, 3);
INSERT INTO `dim_time` VALUES (5, 4);
INSERT INTO `dim_time` VALUES (6, 5);
INSERT INTO `dim_time` VALUES (7, 6);
INSERT INTO `dim_time` VALUES (8, 7);
INSERT INTO `dim_time` VALUES (9, 8);
INSERT INTO `dim_time` VALUES (10, 9);
INSERT INTO `dim_time` VALUES (11, 10);
INSERT INTO `dim_time` VALUES (12, 11);
INSERT INTO `dim_time` VALUES (13, 12);
INSERT INTO `dim_time` VALUES (14, 13);
INSERT INTO `dim_time` VALUES (15, 14);
INSERT INTO `dim_time` VALUES (16, 15);
INSERT INTO `dim_time` VALUES (17, 16);
INSERT INTO `dim_time` VALUES (18, 17);
INSERT INTO `dim_time` VALUES (19, 18);
INSERT INTO `dim_time` VALUES (20, 19);
INSERT INTO `dim_time` VALUES (21, 20);
INSERT INTO `dim_time` VALUES (22, 21);
INSERT INTO `dim_time` VALUES (23, 22);
INSERT INTO `dim_time` VALUES (24, 23);

-- ----------------------------
-- Table structure for dim_uvindex
-- ----------------------------
DROP TABLE IF EXISTS `dim_uvindex`;
CREATE TABLE `dim_uvindex`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uvindex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_uvindex
-- ----------------------------
INSERT INTO `dim_uvindex` VALUES (1, 'Low');
INSERT INTO `dim_uvindex` VALUES (2, 'Moderate');
INSERT INTO `dim_uvindex` VALUES (3, 'High');
INSERT INTO `dim_uvindex` VALUES (4, 'Very High');

-- ----------------------------
-- Table structure for dim_winddir
-- ----------------------------
DROP TABLE IF EXISTS `dim_winddir`;
CREATE TABLE `dim_winddir`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `winddir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_winddir
-- ----------------------------
INSERT INTO `dim_winddir` VALUES (1, 'South-East');
INSERT INTO `dim_winddir` VALUES (2, 'East');
INSERT INTO `dim_winddir` VALUES (3, 'North-East');
INSERT INTO `dim_winddir` VALUES (4, 'North-West');
INSERT INTO `dim_winddir` VALUES (5, 'North');
INSERT INTO `dim_winddir` VALUES (6, 'South-West');
INSERT INTO `dim_winddir` VALUES (7, 'West');
INSERT INTO `dim_winddir` VALUES (8, 'South');

-- ----------------------------
-- Table structure for dim_windspeed
-- ----------------------------
DROP TABLE IF EXISTS `dim_windspeed`;
CREATE TABLE `dim_windspeed`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `windspeed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_windspeed
-- ----------------------------
INSERT INTO `dim_windspeed` VALUES (1, 'Light Breeze');
INSERT INTO `dim_windspeed` VALUES (2, 'Unknown');
INSERT INTO `dim_windspeed` VALUES (3, 'Light Air');
INSERT INTO `dim_windspeed` VALUES (4, 'Calm');
INSERT INTO `dim_windspeed` VALUES (5, 'Moderate Breeze');
INSERT INTO `dim_windspeed` VALUES (6, 'Near Gale');
INSERT INTO `dim_windspeed` VALUES (7, 'Strong Breeze');

-- ----------------------------
-- Table structure for weather_fact
-- ----------------------------
DROP TABLE IF EXISTS `weather_fact`;
CREATE TABLE `weather_fact`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NULL DEFAULT NULL,
  `time_id` int NULL DEFAULT NULL,
  `date_id` bigint NULL DEFAULT NULL,
  `stations_id` int NOT NULL,
  `preciptype_id` int NOT NULL,
  `conditions_id` int NOT NULL,
  `winddir_id` int NOT NULL,
  `icon_id` int NOT NULL,
  `pressure_id` int NOT NULL,
  `humidity_id` int NOT NULL,
  `winspeed_id` int NOT NULL,
  `uvindex_id` int NOT NULL,
  `cloudcover_id` int NOT NULL,
  `temperature` decimal(10, 2) NULL DEFAULT NULL,
  `feels_like` decimal(10, 2) NULL DEFAULT NULL,
  `dew_point` decimal(10, 2) NULL DEFAULT NULL,
  `precip` decimal(10, 2) NULL DEFAULT NULL,
  `precip_prob` decimal(10, 2) NULL DEFAULT NULL,
  `snow` decimal(10, 2) NULL DEFAULT NULL,
  `snow_depth` decimal(10, 2) NULL DEFAULT NULL,
  `wind_gust` decimal(10, 2) NULL DEFAULT NULL,
  `visibility` decimal(10, 2) NULL DEFAULT NULL,
  `solar_radiation` decimal(10, 2) NULL DEFAULT NULL,
  `solar_energy` decimal(10, 2) NULL DEFAULT NULL,
  `severe_risk` int NULL DEFAULT NULL,
  `dtExpired` date NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_name`(`time_id` ASC) USING BTREE,
  INDEX `date_id`(`date_id` ASC) USING BTREE,
  INDEX `fk_location_id`(`location_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_stations1_idx`(`stations_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_preciptype1_idx`(`preciptype_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_conditions1_idx`(`conditions_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_winddir1_idx`(`winddir_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_icon1_idx`(`icon_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_pressure1_idx`(`pressure_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_humidity1_idx`(`humidity_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_winspeed1_idx`(`winspeed_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_uvindex1_idx`(`uvindex_id` ASC) USING BTREE,
  INDEX `fk_weather_fact_dim_cloudcover1_idx`(`cloudcover_id` ASC) USING BTREE,
  CONSTRAINT `fk_date_id` FOREIGN KEY (`date_id`) REFERENCES `dim_date` (`date_sk`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_location_id` FOREIGN KEY (`location_id`) REFERENCES `dim_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_time_id` FOREIGN KEY (`time_id`) REFERENCES `dim_time` (`time_sk`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_cloudcover1` FOREIGN KEY (`cloudcover_id`) REFERENCES `dim_cloudcover` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_conditions1` FOREIGN KEY (`conditions_id`) REFERENCES `dim_conditions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_humidity1` FOREIGN KEY (`humidity_id`) REFERENCES `dim_humidity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_icon1` FOREIGN KEY (`icon_id`) REFERENCES `dim_icon` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_preciptype1` FOREIGN KEY (`preciptype_id`) REFERENCES `dim_preciptype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_stations1` FOREIGN KEY (`stations_id`) REFERENCES `dim_stations` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_uvindex1` FOREIGN KEY (`uvindex_id`) REFERENCES `dim_uvindex` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_winddir1` FOREIGN KEY (`winddir_id`) REFERENCES `dim_winddir` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_weather_fact_dim_winspeed1` FOREIGN KEY (`winspeed_id`) REFERENCES `dim_windspeed` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2048 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weather_fact
-- ----------------------------
INSERT INTO `weather_fact` VALUES (1, 1, 1, 7280, 1, 1, 1, 8, 1, 1, 1, 3, 1, 1, 26.60, 26.60, 23.50, 0.60, 80.60, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (2, 1, 2, 7280, 1, 1, 1, 8, 1, 1, 1, 2, 1, 1, 26.30, 26.30, 23.60, 0.00, 80.60, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (3, 1, 3, 7280, 1, 1, 2, 8, 2, 1, 1, 2, 1, 1, 26.00, 26.00, 23.60, 0.10, 16.10, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (4, 1, 4, 7280, 1, 2, 2, 8, 2, 1, 1, 2, 1, 1, 25.80, 25.80, 23.50, 0.00, 16.10, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (5, 1, 5, 7280, 1, 2, 2, 8, 2, 1, 1, 3, 1, 1, 25.50, 25.50, 23.40, 0.00, 16.10, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (6, 1, 6, 7280, 1, 2, 2, 6, 2, 1, 1, 3, 1, 1, 25.60, 25.60, 23.40, 0.00, 16.10, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (7, 1, 7, 7280, 1, 2, 2, 7, 2, 1, 1, 3, 1, 1, 25.50, 25.50, 23.30, 0.00, 16.10, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (8, 1, 8, 7280, 1, 2, 2, 7, 2, 1, 1, 3, 1, 1, 25.90, 25.90, 23.40, 0.00, 16.10, 0.00, 0.00, 6.50, 24.10, 30.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (9, 1, 9, 7280, 1, 1, 1, 7, 1, 1, 1, 1, 1, 1, 26.80, 29.20, 23.10, 0.00, 64.50, 0.00, 0.00, 10.10, 24.10, 136.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (10, 1, 10, 7280, 1, 1, 1, 4, 1, 1, 1, 1, 2, 1, 27.90, 30.90, 22.80, 0.00, 64.50, 0.00, 0.00, 9.00, 24.10, 355.00, 1.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (11, 1, 11, 7280, 1, 1, 1, 4, 1, 1, 2, 1, 2, 1, 28.80, 32.10, 22.70, 0.00, 64.50, 0.00, 0.00, 8.60, 24.10, 466.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (12, 1, 12, 7280, 1, 1, 1, 5, 1, 1, 2, 1, 3, 1, 29.60, 33.20, 22.70, 0.10, 64.50, 0.00, 0.00, 7.20, 24.10, 559.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (13, 1, 13, 7280, 1, 1, 1, 5, 1, 1, 2, 1, 3, 1, 30.30, 34.30, 22.80, 0.30, 64.50, 0.00, 0.00, 8.30, 24.10, 632.00, 2.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (14, 1, 14, 7280, 1, 1, 1, 5, 1, 1, 2, 1, 3, 1, 31.00, 35.00, 22.60, 0.20, 64.50, 0.00, 0.00, 10.80, 24.10, 672.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (15, 1, 15, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 3, 1, 31.40, 35.30, 22.40, 0.30, 83.90, 0.00, 0.00, 12.20, 13.50, 642.00, 2.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (16, 1, 16, 7280, 1, 1, 3, 3, 1, 1, 2, 1, 2, 1, 31.40, 35.30, 22.40, 0.20, 83.90, 0.00, 0.00, 14.00, 24.10, 525.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (17, 1, 17, 7280, 1, 1, 4, 2, 1, 1, 2, 2, 2, 5, 30.70, 34.70, 22.70, 0.60, 83.90, 0.00, 0.00, 12.60, 9.60, 385.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (18, 1, 18, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 4, 29.20, 33.60, 23.80, 0.70, 83.90, 0.00, 0.00, 11.90, 11.60, 174.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (19, 1, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 4, 26.50, 26.50, 23.40, 1.70, 83.90, 0.00, 0.00, 9.70, 5.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (20, 1, 20, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 26.00, 26.00, 23.60, 1.50, 83.90, 0.00, 0.00, 9.70, 21.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (21, 1, 21, 7280, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 26.40, 26.40, 23.80, 0.20, 41.90, 0.00, 0.00, 13.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (22, 1, 22, 7280, 1, 2, 6, 2, 4, 1, 1, 1, 1, 3, 26.20, 26.20, 23.80, 0.00, 41.90, 0.00, 0.00, 15.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (23, 1, 23, 7280, 1, 2, 6, 2, 4, 1, 1, 1, 1, 3, 25.70, 25.70, 23.60, 0.00, 41.90, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (24, 1, 24, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 25.30, 25.30, 23.40, 0.00, 41.90, 0.00, 0.00, 14.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (25, 2, 1, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 24.70, 24.70, 22.40, 0.00, 45.20, 0.00, 0.00, 9.00, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (26, 2, 2, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 24.60, 24.60, 22.50, 0.00, 45.20, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (27, 2, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 24.40, 24.40, 22.50, 0.00, 0.00, 0.00, 0.00, 9.00, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (28, 2, 4, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 24.30, 24.30, 22.60, 0.00, 0.00, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (29, 2, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 24.20, 24.20, 22.60, 0.00, 0.00, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (30, 2, 6, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 24.10, 24.10, 22.60, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (31, 2, 7, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 24.00, 24.00, 22.60, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (32, 2, 8, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 1, 1, 24.90, 24.90, 23.00, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 46.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (33, 2, 9, 7280, 1, 1, 1, 5, 1, 1, 1, 3, 1, 1, 26.20, 26.20, 23.20, 0.00, 61.30, 0.00, 0.00, 5.00, 24.10, 196.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (34, 2, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 2, 1, 28.30, 32.00, 23.50, 0.00, 61.30, 0.00, 0.00, 6.50, 24.10, 489.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (35, 2, 11, 7280, 1, 1, 1, 2, 1, 1, 2, 2, 3, 1, 29.70, 33.60, 23.00, 0.10, 61.30, 0.00, 0.00, 14.00, 10.80, 673.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (36, 2, 12, 7280, 1, 1, 1, 2, 1, 1, 2, 2, 4, 1, 30.60, 34.60, 22.70, 0.10, 61.30, 0.00, 0.00, 20.20, 24.10, 796.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (37, 2, 13, 7280, 1, 1, 1, 2, 1, 1, 2, 5, 4, 1, 30.90, 34.90, 22.60, 0.20, 61.30, 0.00, 0.00, 19.80, 24.10, 782.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (38, 2, 14, 7280, 1, 1, 1, 2, 1, 1, 2, 5, 4, 1, 30.70, 34.60, 22.60, 0.30, 61.30, 0.00, 0.00, 19.10, 22.70, 814.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (39, 2, 15, 7280, 1, 1, 3, 2, 1, 1, 2, 5, 3, 6, 30.30, 34.20, 22.70, 0.10, 64.50, 0.00, 0.00, 17.30, 23.40, 731.00, 2.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (40, 2, 16, 7280, 1, 1, 3, 2, 1, 1, 2, 5, 3, 4, 29.50, 33.20, 22.80, 0.10, 64.50, 0.00, 0.00, 16.60, 24.10, 586.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (41, 2, 17, 7280, 1, 1, 4, 2, 1, 1, 1, 5, 2, 5, 28.50, 31.90, 23.00, 0.00, 64.50, 0.00, 0.00, 19.80, 24.10, 378.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (42, 2, 18, 7280, 1, 1, 4, 2, 1, 1, 1, 5, 1, 5, 26.80, 29.30, 23.40, 0.00, 64.50, 0.00, 0.00, 26.60, 24.10, 156.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (43, 2, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 4, 25.70, 25.70, 23.20, 0.10, 64.50, 0.00, 0.00, 25.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (44, 2, 20, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 1, 25.50, 25.50, 23.30, 0.00, 64.50, 0.00, 0.00, 22.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (45, 2, 21, 7280, 1, 1, 5, 3, 3, 1, 1, 1, 1, 5, 25.20, 25.20, 23.30, 0.20, 22.60, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (46, 2, 22, 7280, 1, 1, 2, 3, 2, 1, 3, 1, 1, 1, 24.80, 24.80, 23.40, 0.80, 22.60, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (47, 2, 23, 7280, 1, 1, 2, 3, 2, 1, 3, 1, 1, 1, 24.80, 24.80, 23.40, 0.40, 22.60, 0.00, 0.00, 12.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (48, 2, 24, 7280, 1, 1, 2, 3, 2, 1, 3, 2, 1, 1, 24.60, 24.60, 23.30, 0.10, 22.60, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (49, 3, 1, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 26.20, 26.20, 23.60, 0.30, 25.80, 0.00, 0.00, 50.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (50, 3, 2, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 26.30, 26.30, 23.50, 0.20, 25.80, 0.00, 0.00, 51.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (51, 3, 3, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 26.20, 26.20, 23.40, 0.20, 6.50, 0.00, 0.00, 51.10, 19.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (52, 3, 4, 7280, 1, 1, 2, 3, 2, 1, 1, 2, 1, 1, 26.30, 26.30, 23.40, 0.10, 6.50, 0.00, 0.00, 51.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (53, 3, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 6, 1, 1, 26.30, 26.30, 23.40, 0.00, 6.50, 0.00, 0.00, 53.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (54, 3, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 6, 1, 1, 26.30, 26.30, 23.40, 0.00, 6.50, 0.00, 0.00, 54.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (55, 3, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 6, 1, 1, 26.40, 26.40, 23.30, 0.00, 6.50, 0.00, 0.00, 53.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (56, 3, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 6, 1, 1, 26.70, 26.70, 23.60, 0.00, 6.50, 0.00, 0.00, 51.80, 24.10, 54.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (57, 3, 9, 7280, 1, 1, 3, 3, 1, 1, 1, 6, 2, 4, 27.50, 30.90, 24.00, 0.00, 83.90, 0.00, 0.00, 47.90, 24.10, 257.00, 0.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (58, 3, 10, 7280, 1, 1, 4, 3, 1, 1, 1, 6, 2, 5, 28.10, 31.80, 23.70, 0.00, 83.90, 0.00, 0.00, 45.40, 24.10, 489.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (59, 3, 11, 7280, 1, 1, 3, 3, 1, 1, 1, 6, 3, 2, 28.60, 32.60, 23.70, 0.20, 83.90, 0.00, 0.00, 43.20, 24.10, 676.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (60, 3, 12, 7280, 1, 1, 3, 3, 1, 1, 1, 6, 4, 2, 28.90, 33.10, 23.70, 0.30, 83.90, 0.00, 0.00, 41.40, 24.10, 784.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (61, 3, 13, 7280, 1, 1, 3, 3, 1, 1, 1, 6, 4, 4, 29.00, 33.30, 23.80, 0.20, 83.90, 0.00, 0.00, 40.00, 24.10, 834.00, 3.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (62, 3, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 6, 4, 1, 28.90, 33.20, 23.90, 0.30, 83.90, 0.00, 0.00, 38.90, 24.10, 818.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (63, 3, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 6, 3, 1, 28.60, 32.70, 23.80, 0.10, 87.10, 0.00, 0.00, 38.20, 24.10, 709.00, 2.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (64, 3, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 6, 2, 1, 28.20, 32.00, 23.80, 0.20, 87.10, 0.00, 0.00, 37.40, 24.10, 515.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (65, 3, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 7, 2, 1, 27.60, 31.10, 24.00, 0.30, 87.10, 0.00, 0.00, 37.80, 17.80, 312.00, 1.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (66, 3, 18, 7280, 1, 1, 1, 3, 1, 1, 1, 7, 1, 1, 26.80, 29.50, 23.90, 0.60, 87.10, 0.00, 0.00, 40.30, 15.70, 136.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (67, 3, 19, 7280, 1, 1, 1, 3, 1, 1, 1, 7, 1, 1, 26.40, 26.40, 23.90, 0.00, 87.10, 0.00, 0.00, 40.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (68, 3, 20, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 1, 2, 26.30, 26.30, 24.00, 0.00, 87.10, 0.00, 0.00, 40.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (69, 3, 21, 7280, 1, 2, 6, 3, 4, 1, 1, 7, 1, 6, 26.40, 26.40, 24.00, 0.00, 12.90, 0.00, 0.00, 41.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (70, 3, 22, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 26.40, 26.40, 24.00, 0.00, 12.90, 0.00, 0.00, 42.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (71, 3, 23, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 26.40, 26.40, 24.00, 0.00, 12.90, 0.00, 0.00, 42.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (72, 3, 24, 7280, 1, 2, 6, 3, 4, 1, 1, 7, 1, 6, 26.30, 26.30, 24.20, 0.00, 12.90, 0.00, 0.00, 41.00, 24.10, 0.00, 0.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (73, 4, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 20.50, 20.50, 16.90, 0.00, 0.00, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (74, 4, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.00, 21.00, 16.60, 0.00, 0.00, 0.00, 0.00, 10.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (75, 4, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 21.10, 21.10, 16.40, 0.00, 3.20, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (76, 4, 4, 7280, 1, 2, 6, 3, 4, 1, 1, 3, 1, 1, 21.10, 21.10, 16.20, 0.00, 3.20, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (77, 4, 5, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 1, 1, 20.90, 20.90, 16.10, 0.00, 3.20, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (78, 4, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 20.90, 20.90, 16.00, 0.00, 3.20, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (79, 4, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 20.80, 20.80, 15.90, 0.00, 3.20, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (80, 4, 8, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 20.90, 20.90, 16.10, 0.00, 3.20, 0.00, 0.00, 11.50, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (81, 4, 9, 7280, 1, 1, 6, 3, 5, 1, 1, 1, 1, 6, 20.80, 20.80, 16.50, 0.10, 6.50, 0.00, 0.00, 20.20, 24.10, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (82, 4, 10, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.80, 22.80, 17.10, 0.00, 6.50, 0.00, 0.00, 14.80, 24.10, 215.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (83, 4, 11, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.10, 22.10, 17.30, 0.00, 6.50, 0.00, 0.00, 14.00, 24.10, 40.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (84, 4, 12, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.20, 22.20, 17.50, 0.00, 6.50, 0.00, 0.00, 15.50, 24.10, 59.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (85, 4, 13, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.60, 22.60, 17.50, 0.00, 6.50, 0.00, 0.00, 16.20, 24.10, 52.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (86, 4, 14, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 23.20, 23.20, 17.50, 0.00, 6.50, 0.00, 0.00, 15.50, 24.10, 92.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (87, 4, 15, 7280, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 23.60, 23.60, 17.50, 0.00, 45.20, 0.00, 0.00, 16.90, 24.10, 97.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (88, 4, 16, 7280, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 23.60, 23.60, 17.50, 0.00, 45.20, 0.00, 0.00, 16.20, 24.10, 63.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (89, 4, 17, 7280, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 23.50, 23.50, 17.50, 0.00, 45.20, 0.00, 0.00, 16.60, 24.10, 29.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (90, 4, 18, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 1, 1, 23.20, 23.20, 17.40, 0.00, 45.20, 0.00, 0.00, 19.10, 24.10, 15.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (91, 4, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 1, 22.90, 22.90, 17.30, 0.00, 45.20, 0.00, 0.00, 20.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (92, 4, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.40, 22.40, 17.20, 0.00, 45.20, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (93, 4, 21, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.40, 22.40, 17.00, 0.00, 32.30, 0.00, 0.00, 14.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (94, 4, 22, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 22.30, 22.30, 16.90, 0.00, 32.30, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (95, 4, 23, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 22.10, 22.10, 16.60, 0.00, 32.30, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (96, 4, 24, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 21.70, 21.70, 16.20, 0.00, 32.30, 0.00, 0.00, 11.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (97, 5, 1, 7280, 1, 1, 2, 2, 2, 1, 3, 4, 1, 1, 17.50, 17.50, 16.00, 0.30, 3.20, 0.00, 0.00, 0.70, 18.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (98, 5, 2, 7280, 1, 1, 2, 5, 2, 1, 3, 3, 1, 1, 17.40, 17.40, 15.90, 0.20, 3.20, 0.00, 0.00, 2.50, 23.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (99, 5, 3, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 17.20, 17.20, 15.70, 0.10, 9.70, 0.00, 0.00, 1.40, 23.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (100, 5, 4, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 17.10, 17.10, 15.40, 0.00, 9.70, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (101, 5, 5, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 16.90, 16.90, 15.10, 0.00, 9.70, 0.00, 0.00, 2.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (102, 5, 6, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 16.80, 16.80, 14.80, 0.00, 9.70, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (103, 5, 7, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 16.80, 16.80, 14.60, 0.00, 9.70, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (104, 5, 8, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 16.90, 16.90, 14.70, 0.00, 9.70, 0.00, 0.00, 3.60, 24.10, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (105, 5, 9, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 17.10, 17.10, 15.00, 0.10, 3.20, 0.00, 0.00, 4.00, 24.10, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (106, 5, 10, 7280, 1, 1, 2, 3, 2, 1, 1, 3, 1, 1, 17.30, 17.30, 15.20, 0.00, 3.20, 0.00, 0.00, 4.70, 23.80, 19.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (107, 5, 11, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 16.80, 16.80, 15.40, 0.30, 3.20, 0.00, 0.00, 6.80, 23.90, 15.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (108, 5, 12, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 16.70, 16.70, 15.40, 0.00, 3.20, 0.00, 0.00, 6.10, 24.10, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (109, 5, 13, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 16.70, 16.70, 15.20, 0.10, 3.20, 0.00, 0.00, 6.80, 20.10, 31.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (110, 5, 14, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 16.20, 16.20, 14.90, 0.20, 3.20, 0.00, 0.00, 6.80, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (111, 5, 15, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.90, 15.90, 14.70, 0.20, 67.70, 0.00, 0.00, 6.80, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (112, 5, 16, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.50, 15.50, 14.60, 0.10, 67.70, 0.00, 0.00, 7.20, 24.10, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (113, 5, 17, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.30, 15.30, 14.60, 0.20, 67.70, 0.00, 0.00, 6.50, 19.70, 7.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (114, 5, 18, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.10, 15.10, 14.70, 0.30, 67.70, 0.00, 0.00, 7.60, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (115, 5, 19, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.10, 15.10, 14.70, 0.20, 67.70, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (116, 5, 20, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.00, 15.00, 14.60, 0.10, 67.70, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (117, 5, 21, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 15.00, 15.00, 14.50, 0.00, 71.00, 0.00, 0.00, 9.00, 17.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (118, 5, 22, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 14.80, 14.80, 14.40, 0.30, 71.00, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (119, 5, 23, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 14.70, 14.70, 14.30, 0.10, 71.00, 0.00, 0.00, 7.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (120, 5, 24, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 14.50, 14.50, 14.20, 0.30, 71.00, 0.00, 0.00, 8.60, 18.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (121, 6, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 17.50, 0.00, 0.00, 0.00, 0.00, 26.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (122, 6, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.50, 21.50, 17.20, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (123, 6, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.40, 21.40, 17.00, 0.00, 64.50, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (124, 6, 4, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.40, 21.40, 16.80, 0.00, 64.50, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (125, 6, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 21.40, 21.40, 16.60, 0.00, 64.50, 0.00, 0.00, 15.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (126, 6, 6, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.30, 21.30, 16.50, 0.10, 64.50, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (127, 6, 7, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.20, 21.20, 16.40, 0.00, 64.50, 0.00, 0.00, 14.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (128, 6, 8, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.00, 21.00, 16.30, 0.10, 64.50, 0.00, 0.00, 14.40, 24.10, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (129, 6, 9, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 21.20, 21.20, 16.40, 0.00, 32.30, 0.00, 0.00, 16.60, 24.10, 15.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (130, 6, 10, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 21.90, 21.90, 16.70, 0.10, 32.30, 0.00, 0.00, 14.80, 24.10, 64.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (131, 6, 11, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.30, 22.30, 17.10, 0.00, 32.30, 0.00, 0.00, 16.60, 24.10, 40.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (132, 6, 12, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.50, 22.50, 17.30, 0.00, 32.30, 0.00, 0.00, 19.10, 24.10, 56.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (133, 6, 13, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.50, 22.50, 17.40, 0.00, 32.30, 0.00, 0.00, 19.80, 24.10, 62.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (134, 6, 14, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.80, 22.80, 17.60, 0.00, 32.30, 0.00, 0.00, 16.90, 24.10, 82.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (135, 6, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.90, 22.90, 17.70, 0.00, 51.60, 0.00, 0.00, 18.00, 24.10, 45.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (136, 6, 16, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 23.10, 23.10, 17.90, 0.00, 51.60, 0.00, 0.00, 19.40, 24.10, 36.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (137, 6, 17, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 23.20, 23.20, 17.80, 0.00, 51.60, 0.00, 0.00, 20.50, 24.10, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (138, 6, 18, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.10, 23.10, 17.70, 0.00, 51.60, 0.00, 0.00, 22.70, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (139, 6, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 22.90, 22.90, 17.40, 0.10, 51.60, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (140, 6, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.50, 22.50, 17.50, 0.00, 51.60, 0.00, 0.00, 18.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (141, 6, 21, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.20, 22.20, 17.50, 0.00, 29.00, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (142, 6, 22, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 22.00, 22.00, 17.40, 0.10, 29.00, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (143, 6, 23, 7280, 1, 1, 2, 5, 2, 1, 1, 1, 1, 1, 21.60, 21.60, 17.10, 0.10, 29.00, 0.00, 0.00, 13.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (144, 6, 24, 7280, 1, 1, 2, 4, 2, 1, 1, 5, 1, 1, 20.10, 20.10, 16.60, 0.00, 29.00, 0.00, 0.00, 18.00, 23.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (145, 7, 1, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 23.50, 0.00, 9.70, 0.00, 0.00, 26.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (146, 7, 2, 7280, 1, 2, 2, 2, 2, 1, 3, 2, 1, 1, 24.60, 24.60, 23.50, 0.00, 9.70, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (147, 7, 3, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 23.50, 0.00, 0.00, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (148, 7, 4, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.20, 24.20, 23.40, 0.00, 0.00, 0.00, 0.00, 19.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (149, 7, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 24.00, 24.00, 23.30, 0.00, 0.00, 0.00, 0.00, 14.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (150, 7, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 23.80, 23.80, 23.20, 0.00, 0.00, 0.00, 0.00, 13.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (151, 7, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 23.70, 23.70, 23.00, 0.00, 0.00, 0.00, 0.00, 13.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (152, 7, 8, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 24.40, 24.40, 23.50, 0.00, 0.00, 0.00, 0.00, 12.60, 24.10, 35.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (153, 7, 9, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 1, 1, 25.80, 25.80, 23.80, 0.00, 67.70, 0.00, 0.00, 9.70, 24.10, 165.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (154, 7, 10, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 2, 1, 27.20, 30.30, 23.90, 0.00, 67.70, 0.00, 0.00, 8.30, 24.10, 328.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (155, 7, 11, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 3, 1, 29.30, 33.70, 23.80, 0.10, 67.70, 0.00, 0.00, 10.80, 24.10, 569.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (156, 7, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 4, 1, 29.50, 34.40, 24.20, 0.40, 67.70, 0.00, 0.00, 14.80, 24.10, 784.00, 2.80, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (157, 7, 13, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 4, 1, 30.90, 35.40, 23.20, 0.10, 67.70, 0.00, 0.00, 18.40, 24.10, 850.00, 3.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (158, 7, 14, 7280, 1, 1, 3, 3, 1, 1, 2, 1, 4, 1, 30.80, 35.60, 23.50, 0.40, 67.70, 0.00, 0.00, 20.20, 20.30, 822.00, 3.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (159, 7, 15, 7280, 1, 1, 4, 3, 1, 1, 2, 1, 3, 5, 31.00, 35.40, 23.00, 0.30, 71.00, 0.00, 0.00, 21.20, 24.10, 740.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (160, 7, 16, 7280, 1, 1, 4, 3, 1, 1, 2, 1, 3, 5, 30.30, 34.30, 22.90, 0.20, 71.00, 0.00, 0.00, 17.60, 22.10, 587.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (161, 7, 17, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 2, 5, 28.90, 32.40, 22.90, 0.10, 71.00, 0.00, 0.00, 14.80, 24.10, 393.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (162, 7, 18, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 26.80, 29.20, 23.20, 0.10, 71.00, 0.00, 0.00, 19.10, 24.10, 169.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (163, 7, 19, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 25.20, 25.20, 23.20, 0.00, 71.00, 0.00, 0.00, 20.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (164, 7, 20, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 4, 25.00, 25.00, 23.50, 0.10, 71.00, 0.00, 0.00, 18.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (165, 7, 21, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 4, 25.10, 25.10, 23.60, 0.00, 12.90, 0.00, 0.00, 27.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (166, 7, 22, 7280, 1, 1, 5, 2, 3, 1, 1, 1, 1, 5, 25.40, 25.40, 23.40, 0.10, 12.90, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (167, 7, 23, 7280, 1, 2, 5, 2, 3, 1, 1, 1, 1, 5, 25.30, 25.30, 23.10, 0.00, 12.90, 0.00, 0.00, 29.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (168, 7, 24, 7280, 1, 2, 5, 2, 3, 1, 1, 1, 1, 5, 25.40, 25.40, 23.10, 0.00, 12.90, 0.00, 0.00, 29.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (169, 8, 1, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 24.00, 24.00, 21.40, 0.00, 74.20, 0.00, 0.00, 26.60, 22.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (170, 8, 2, 7280, 1, 1, 3, 4, 1, 1, 1, 5, 1, 1, 23.80, 23.80, 21.20, 0.10, 74.20, 0.00, 0.00, 25.90, 23.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (171, 8, 3, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 23.70, 23.70, 21.00, 0.10, 87.10, 0.00, 0.00, 26.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (172, 8, 4, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 23.70, 23.70, 20.90, 0.00, 87.10, 0.00, 0.00, 26.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (173, 8, 5, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 23.80, 23.80, 21.00, 0.00, 87.10, 0.00, 0.00, 28.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (174, 8, 6, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 23.70, 23.70, 21.10, 0.10, 87.10, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (175, 8, 7, 7280, 1, 1, 1, 4, 1, 1, 1, 7, 1, 1, 23.80, 23.80, 21.30, 0.10, 87.10, 0.00, 0.00, 31.30, 22.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (176, 8, 8, 7280, 1, 1, 1, 4, 1, 1, 1, 7, 1, 1, 23.80, 23.80, 21.50, 0.10, 87.10, 0.00, 0.00, 31.70, 22.10, 6.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (177, 8, 9, 7280, 1, 1, 1, 4, 1, 1, 1, 7, 1, 1, 23.90, 23.90, 21.80, 0.10, 96.80, 0.00, 0.00, 33.50, 21.30, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (178, 8, 10, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 24.10, 24.10, 22.10, 0.20, 96.80, 0.00, 0.00, 32.40, 20.50, 51.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (179, 8, 11, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 24.40, 24.40, 22.40, 0.20, 96.80, 0.00, 0.00, 29.90, 14.30, 77.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (180, 8, 12, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 24.50, 24.50, 22.60, 0.40, 96.80, 0.00, 0.00, 29.50, 13.70, 89.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (181, 8, 13, 7280, 1, 1, 1, 4, 1, 1, 3, 7, 1, 1, 24.40, 24.40, 22.80, 0.40, 96.80, 0.00, 0.00, 30.60, 11.90, 120.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (182, 8, 14, 7280, 1, 1, 1, 4, 1, 1, 3, 7, 1, 1, 24.40, 24.40, 22.90, 0.50, 96.80, 0.00, 0.00, 32.40, 9.10, 133.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (183, 8, 15, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 23.00, 0.60, 93.50, 0.00, 0.00, 32.80, 5.70, 112.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (184, 8, 16, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 23.00, 0.70, 93.50, 0.00, 0.00, 33.10, 4.30, 102.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (185, 8, 17, 7280, 1, 1, 3, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 22.90, 0.80, 93.50, 0.00, 0.00, 32.00, 3.30, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (186, 8, 18, 7280, 1, 1, 3, 5, 1, 1, 3, 7, 1, 1, 24.20, 24.20, 22.90, 0.80, 93.50, 0.00, 0.00, 31.00, 2.80, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (187, 8, 19, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.20, 24.20, 22.90, 0.80, 93.50, 0.00, 0.00, 30.20, 3.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (188, 8, 20, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 22.90, 0.70, 93.50, 0.00, 0.00, 31.70, 3.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (189, 8, 21, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 22.90, 0.70, 83.90, 0.00, 0.00, 32.80, 2.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (190, 8, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 22.90, 0.60, 83.90, 0.00, 0.00, 33.10, 4.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (191, 8, 23, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.30, 24.30, 22.90, 0.50, 83.90, 0.00, 0.00, 33.10, 2.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (192, 8, 24, 7280, 1, 1, 1, 5, 1, 1, 3, 7, 1, 1, 24.20, 24.20, 22.90, 0.60, 83.90, 0.00, 0.00, 32.80, 3.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (193, 9, 1, 7280, 1, 1, 1, 8, 1, 1, 3, 1, 1, 1, 25.00, 25.00, 23.70, 0.00, 71.00, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (194, 9, 2, 7280, 1, 1, 1, 6, 1, 1, 3, 1, 1, 1, 24.80, 24.80, 23.60, 0.00, 71.00, 0.00, 0.00, 10.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (195, 9, 3, 7280, 1, 2, 2, 6, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 23.40, 0.00, 9.70, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (196, 9, 4, 7280, 1, 2, 2, 6, 2, 1, 3, 3, 1, 1, 24.50, 24.50, 23.20, 0.00, 9.70, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (197, 9, 5, 7280, 1, 2, 2, 6, 2, 1, 3, 3, 1, 1, 24.40, 24.40, 22.90, 0.00, 9.70, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (198, 9, 6, 7280, 1, 2, 2, 6, 2, 1, 3, 3, 1, 1, 24.20, 24.20, 22.50, 0.00, 9.70, 0.00, 0.00, 2.50, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (199, 9, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 24.10, 24.10, 22.40, 0.00, 9.70, 0.00, 0.00, 1.80, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (200, 9, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 24.70, 24.70, 22.70, 0.00, 9.70, 0.00, 0.00, 1.40, 24.10, 21.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (201, 9, 9, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 25.50, 25.50, 22.80, 0.00, 25.80, 0.00, 0.00, 2.50, 24.10, 99.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (202, 9, 10, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 26.40, 26.40, 22.90, 0.00, 25.80, 0.00, 0.00, 2.50, 24.10, 205.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (203, 9, 11, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 26.90, 29.40, 23.10, 0.00, 25.80, 0.00, 0.00, 1.80, 24.10, 239.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (204, 9, 12, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 2, 1, 27.40, 30.20, 23.10, 0.00, 25.80, 0.00, 0.00, 1.10, 24.10, 286.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (205, 9, 13, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 2, 1, 28.40, 32.00, 23.30, 0.00, 25.80, 0.00, 0.00, 1.80, 24.10, 431.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (206, 9, 14, 7280, 1, 2, 2, 5, 2, 1, 2, 3, 3, 1, 29.50, 33.70, 23.40, 0.00, 25.80, 0.00, 0.00, 2.50, 24.10, 576.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (207, 9, 15, 7280, 1, 1, 3, 5, 1, 1, 2, 3, 3, 1, 30.40, 35.10, 23.50, 0.10, 71.00, 0.00, 0.00, 4.00, 24.10, 659.00, 2.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (208, 9, 16, 7280, 1, 1, 3, 5, 1, 1, 2, 3, 3, 4, 30.80, 35.40, 23.30, 0.00, 71.00, 0.00, 0.00, 4.30, 24.10, 577.00, 2.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (209, 9, 17, 7280, 1, 1, 3, 7, 1, 1, 2, 3, 2, 4, 30.60, 34.90, 23.10, 0.00, 71.00, 0.00, 0.00, 2.50, 24.10, 381.00, 1.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (210, 9, 18, 7280, 1, 1, 4, 4, 1, 1, 1, 3, 1, 5, 29.00, 33.40, 23.90, 0.40, 71.00, 0.00, 0.00, 1.80, 9.00, 160.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (211, 9, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 3, 1, 4, 26.50, 26.50, 23.20, 1.20, 71.00, 0.00, 0.00, 2.20, 14.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (212, 9, 20, 7280, 1, 1, 4, 1, 1, 1, 1, 1, 1, 5, 25.50, 25.50, 23.20, 1.00, 71.00, 0.00, 0.00, 5.80, 18.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (213, 9, 21, 7280, 1, 1, 4, 1, 1, 1, 1, 1, 1, 5, 25.30, 25.30, 23.50, 0.50, 51.60, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (214, 9, 22, 7280, 1, 1, 3, 8, 1, 1, 3, 3, 1, 6, 25.30, 25.30, 23.60, 0.00, 51.60, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (215, 9, 23, 7280, 1, 1, 3, 6, 1, 1, 3, 3, 1, 3, 25.10, 25.10, 23.50, 0.00, 51.60, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (216, 9, 24, 7280, 1, 1, 3, 4, 1, 1, 3, 2, 1, 6, 24.90, 24.90, 23.40, 0.00, 51.60, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (217, 10, 1, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 23.10, 23.10, 21.70, 0.10, 51.60, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (218, 10, 2, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 23.00, 23.00, 21.90, 0.00, 51.60, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 5, '9999-12-31');
INSERT INTO `weather_fact` VALUES (219, 10, 3, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 23.00, 23.00, 21.90, 0.00, 3.20, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (220, 10, 4, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 22.90, 22.90, 21.80, 0.00, 3.20, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (221, 10, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 22.80, 22.80, 21.60, 0.00, 3.20, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (222, 10, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 22.60, 22.60, 21.20, 0.00, 3.20, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (223, 10, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 22.40, 22.40, 20.80, 0.00, 3.20, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (224, 10, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 22.70, 22.70, 20.70, 0.00, 3.20, 0.00, 0.00, 9.00, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (225, 10, 9, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 23.60, 23.60, 20.90, 0.00, 6.50, 0.00, 0.00, 9.70, 24.10, 67.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (226, 10, 10, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 24.60, 24.60, 21.00, 0.00, 6.50, 0.00, 0.00, 6.50, 24.10, 125.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (227, 10, 11, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 25.50, 25.50, 21.20, 0.00, 6.50, 0.00, 0.00, 4.30, 24.10, 173.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (228, 10, 12, 7280, 1, 2, 2, 1, 2, 1, 1, 3, 1, 1, 26.30, 26.30, 21.40, 0.00, 6.50, 0.00, 0.00, 1.40, 24.10, 233.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (229, 10, 13, 7280, 1, 2, 2, 8, 2, 1, 1, 3, 2, 1, 27.30, 29.40, 21.70, 0.00, 6.50, 0.00, 0.00, 1.40, 24.10, 321.00, 1.20, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (230, 10, 14, 7280, 1, 2, 2, 6, 2, 1, 2, 3, 2, 1, 28.70, 31.40, 21.90, 0.00, 6.50, 0.00, 0.00, 1.40, 24.10, 454.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (231, 10, 15, 7280, 1, 1, 1, 6, 1, 1, 2, 2, 2, 1, 29.20, 32.20, 22.10, 0.00, 80.60, 0.00, 0.00, 3.20, 24.10, 490.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (232, 10, 16, 7280, 1, 1, 1, 6, 1, 1, 2, 2, 2, 1, 29.00, 32.10, 22.30, 0.00, 80.60, 0.00, 0.00, 4.00, 24.10, 384.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (233, 10, 17, 7280, 1, 1, 3, 6, 1, 1, 1, 2, 2, 6, 28.70, 32.10, 22.80, 0.10, 80.60, 0.00, 0.00, 2.90, 24.10, 325.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (234, 10, 18, 7280, 1, 1, 3, 6, 1, 1, 1, 3, 1, 4, 26.10, 26.10, 23.70, 0.30, 80.60, 0.00, 0.00, 2.90, 24.10, 153.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (235, 10, 19, 7280, 1, 1, 1, 4, 1, 1, 1, 3, 1, 1, 24.60, 24.60, 22.80, 0.10, 80.60, 0.00, 0.00, 1.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (236, 10, 20, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 24.20, 24.20, 22.70, 0.00, 80.60, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (237, 10, 21, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 23.80, 23.80, 22.70, 0.00, 54.80, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (238, 10, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 2, 1, 1, 23.30, 23.30, 22.40, 0.30, 54.80, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (239, 10, 23, 7280, 1, 1, 3, 5, 1, 1, 3, 2, 1, 4, 22.90, 22.90, 22.00, 0.00, 54.80, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (240, 10, 24, 7280, 1, 1, 3, 3, 1, 1, 3, 2, 1, 3, 22.40, 22.40, 21.70, 0.00, 54.80, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (241, 11, 1, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.60, 23.60, 22.30, 0.00, 9.70, 0.00, 0.00, 1.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (242, 11, 2, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.40, 23.40, 22.20, 0.00, 9.70, 0.00, 0.00, 1.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (243, 11, 3, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.20, 23.20, 22.10, 0.00, 0.00, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (244, 11, 4, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.10, 23.10, 22.00, 0.00, 0.00, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (245, 11, 5, 7280, 1, 2, 2, 4, 2, 1, 3, 3, 1, 1, 23.00, 23.00, 21.90, 0.00, 0.00, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (246, 11, 6, 7280, 1, 2, 2, 4, 2, 1, 3, 3, 1, 1, 22.90, 22.90, 21.80, 0.00, 0.00, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (247, 11, 7, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 22.80, 22.80, 21.60, 0.00, 0.00, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (248, 11, 8, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.80, 23.80, 22.20, 0.00, 0.00, 0.00, 0.00, 5.00, 24.10, 37.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (249, 11, 9, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 1, 1, 24.90, 24.90, 22.30, 0.00, 12.90, 0.00, 0.00, 5.40, 24.10, 139.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (250, 11, 10, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 2, 1, 26.10, 26.10, 22.20, 0.00, 12.90, 0.00, 0.00, 4.30, 24.10, 310.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (251, 11, 11, 7280, 1, 2, 2, 3, 2, 1, 2, 3, 3, 1, 28.10, 30.60, 21.90, 0.00, 12.90, 0.00, 0.00, 4.30, 24.10, 577.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (252, 11, 12, 7280, 1, 2, 2, 2, 2, 1, 2, 1, 3, 1, 29.30, 32.20, 21.80, 0.00, 12.90, 0.00, 0.00, 8.30, 24.10, 743.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (253, 11, 13, 7280, 1, 2, 2, 2, 2, 1, 2, 1, 3, 1, 29.60, 32.50, 21.80, 0.00, 12.90, 0.00, 0.00, 9.00, 24.10, 683.00, 2.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (254, 11, 14, 7280, 1, 2, 2, 2, 2, 1, 2, 2, 3, 1, 29.10, 32.10, 22.10, 0.00, 12.90, 0.00, 0.00, 9.40, 24.10, 587.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (255, 11, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 2, 1, 27.90, 30.60, 22.40, 0.00, 96.80, 0.00, 0.00, 11.20, 24.10, 449.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (256, 11, 16, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 2, 1, 27.30, 30.00, 23.00, 0.10, 96.80, 0.00, 0.00, 9.70, 24.10, 386.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (257, 11, 17, 7280, 1, 1, 3, 2, 1, 1, 1, 2, 2, 6, 27.20, 30.00, 23.30, 0.00, 96.80, 0.00, 0.00, 7.60, 24.10, 327.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (258, 11, 18, 7280, 1, 1, 3, 1, 1, 1, 1, 3, 1, 3, 26.10, 26.10, 23.60, 0.00, 96.80, 0.00, 0.00, 4.30, 24.10, 129.00, 0.50, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (259, 11, 19, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 24.40, 24.40, 22.90, 0.50, 96.80, 0.00, 0.00, 3.20, 19.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (260, 11, 20, 7280, 1, 1, 3, 4, 1, 1, 3, 3, 1, 4, 24.00, 24.00, 22.70, 0.60, 96.80, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (261, 11, 21, 7280, 1, 1, 2, 4, 2, 1, 3, 3, 1, 1, 23.80, 23.80, 22.60, 0.10, 9.70, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (262, 11, 22, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 23.70, 23.70, 22.30, 0.00, 9.70, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (263, 11, 23, 7280, 1, 2, 6, 5, 4, 1, 3, 3, 1, 1, 23.50, 23.50, 22.20, 0.00, 9.70, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (264, 11, 24, 7280, 1, 2, 6, 4, 4, 1, 3, 3, 1, 6, 23.30, 23.30, 22.00, 0.00, 9.70, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (265, 12, 1, 7280, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 24.40, 24.40, 23.00, 0.00, 58.10, 0.00, 0.00, 43.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (266, 12, 2, 7280, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 24.30, 24.30, 23.00, 0.00, 58.10, 0.00, 0.00, 43.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (267, 12, 3, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.30, 24.30, 23.00, 0.00, 35.50, 0.00, 0.00, 40.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (268, 12, 4, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 24.40, 24.40, 22.90, 0.00, 35.50, 0.00, 0.00, 45.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (269, 12, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 5, 1, 1, 24.40, 24.40, 22.80, 0.00, 35.50, 0.00, 0.00, 46.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (270, 12, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 24.60, 24.60, 22.70, 0.00, 35.50, 0.00, 0.00, 50.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (271, 12, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 24.80, 24.80, 22.80, 0.00, 35.50, 0.00, 0.00, 50.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (272, 12, 8, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 1, 1, 25.50, 25.50, 23.10, 0.00, 35.50, 0.00, 0.00, 48.20, 24.10, 41.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (273, 12, 9, 7280, 1, 1, 4, 3, 1, 1, 1, 7, 1, 5, 27.20, 30.20, 23.60, 0.00, 80.60, 0.00, 0.00, 45.00, 24.10, 244.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (274, 12, 10, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 2, 4, 28.90, 32.80, 23.40, 0.00, 80.60, 0.00, 0.00, 42.50, 24.10, 486.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (275, 12, 11, 7280, 1, 1, 1, 3, 1, 1, 2, 7, 3, 1, 30.10, 34.20, 23.00, 0.10, 80.60, 0.00, 0.00, 38.20, 24.10, 666.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (276, 12, 12, 7280, 1, 1, 1, 3, 1, 1, 2, 7, 3, 1, 30.20, 34.70, 23.40, 0.50, 80.60, 0.00, 0.00, 34.20, 9.70, 735.00, 2.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (277, 12, 13, 7280, 1, 1, 3, 3, 1, 1, 2, 7, 3, 6, 29.90, 34.60, 23.80, 0.80, 80.60, 0.00, 0.00, 33.10, 9.70, 559.00, 2.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (278, 12, 14, 7280, 1, 1, 1, 3, 1, 1, 2, 7, 3, 1, 30.20, 35.10, 23.80, 0.70, 80.60, 0.00, 0.00, 32.80, 8.60, 700.00, 2.50, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (279, 12, 15, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 2, 3, 29.40, 34.10, 24.00, 1.00, 80.60, 0.00, 0.00, 30.60, 9.70, 459.00, 1.70, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (280, 12, 16, 7280, 1, 1, 3, 2, 1, 1, 1, 7, 2, 3, 28.80, 33.50, 24.40, 1.00, 80.60, 0.00, 0.00, 30.20, 8.20, 439.00, 1.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (281, 12, 17, 7280, 1, 1, 3, 2, 1, 1, 1, 2, 2, 1, 28.30, 32.60, 24.30, 0.80, 80.60, 0.00, 0.00, 30.60, 8.90, 356.00, 1.30, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (282, 12, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 26.80, 29.50, 23.90, 0.70, 80.60, 0.00, 0.00, 34.20, 24.10, 181.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (283, 12, 19, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 25.60, 25.60, 23.50, 0.10, 80.60, 0.00, 0.00, 38.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (284, 12, 20, 7280, 1, 1, 1, 3, 1, 1, 3, 5, 1, 1, 25.10, 25.10, 23.50, 0.00, 80.60, 0.00, 0.00, 39.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (285, 12, 21, 7280, 1, 2, 6, 3, 4, 1, 3, 1, 1, 6, 24.90, 24.90, 23.50, 0.00, 19.40, 0.00, 0.00, 38.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (286, 12, 22, 7280, 1, 2, 5, 3, 3, 1, 3, 1, 1, 5, 24.70, 24.70, 23.60, 0.00, 19.40, 0.00, 0.00, 30.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (287, 12, 23, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 23.60, 0.00, 19.40, 0.00, 0.00, 20.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (288, 12, 24, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.50, 24.50, 23.60, 0.00, 19.40, 0.00, 0.00, 28.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (289, 13, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.90, 24.90, 23.10, 0.00, 41.90, 0.00, 0.00, 33.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (290, 13, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.80, 24.80, 23.00, 0.00, 41.90, 0.00, 0.00, 31.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (291, 13, 3, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.70, 24.70, 22.80, 0.00, 0.00, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (292, 13, 4, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.60, 24.60, 22.80, 0.00, 0.00, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (293, 13, 5, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.60, 24.60, 22.80, 0.00, 0.00, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (294, 13, 6, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.20, 24.20, 22.70, 0.00, 0.00, 0.00, 0.00, 22.00, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (295, 13, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.00, 24.00, 22.80, 0.00, 0.00, 0.00, 0.00, 20.20, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (296, 13, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.70, 24.70, 23.40, 0.00, 0.00, 0.00, 0.00, 22.30, 24.10, 32.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (297, 13, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 26.30, 26.30, 23.80, 0.00, 80.60, 0.00, 0.00, 15.80, 24.10, 217.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (298, 13, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 27.80, 31.50, 24.10, 0.30, 80.60, 0.00, 0.00, 13.00, 7.20, 470.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (299, 13, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 3, 1, 28.60, 33.20, 24.40, 1.30, 80.60, 0.00, 0.00, 11.50, 5.70, 643.00, 2.30, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (300, 13, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 4, 1, 29.40, 34.30, 24.20, 1.40, 80.60, 0.00, 0.00, 13.30, 8.60, 772.00, 2.80, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (301, 13, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 4, 1, 29.80, 34.80, 24.10, 1.00, 80.60, 0.00, 0.00, 16.90, 4.80, 805.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (302, 13, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 3, 1, 29.70, 34.80, 24.30, 1.40, 80.60, 0.00, 0.00, 16.90, 12.60, 747.00, 2.70, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (303, 13, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 3, 1, 29.60, 34.70, 24.30, 1.40, 87.10, 0.00, 0.00, 17.60, 7.60, 636.00, 2.30, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (304, 13, 16, 7280, 1, 1, 3, 3, 1, 1, 1, 2, 2, 4, 29.60, 34.70, 24.30, 0.90, 87.10, 0.00, 0.00, 19.40, 15.20, 493.00, 1.80, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (305, 13, 17, 7280, 1, 1, 4, 3, 1, 1, 1, 2, 2, 5, 29.20, 34.10, 24.30, 0.70, 87.10, 0.00, 0.00, 20.50, 11.80, 391.00, 1.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (306, 13, 18, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 4, 27.50, 31.00, 24.20, 0.60, 87.10, 0.00, 0.00, 21.20, 18.00, 179.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (307, 13, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 25.90, 25.90, 23.70, 0.20, 87.10, 0.00, 0.00, 15.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (308, 13, 20, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 3, 25.20, 25.20, 23.50, 0.00, 87.10, 0.00, 0.00, 21.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (309, 13, 21, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 1, 24.80, 24.80, 23.30, 0.00, 6.50, 0.00, 0.00, 24.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (310, 13, 22, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 23.30, 0.00, 6.50, 0.00, 0.00, 35.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (311, 13, 23, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.50, 24.50, 23.30, 0.00, 6.50, 0.00, 0.00, 38.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (312, 13, 24, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.40, 24.40, 23.30, 0.00, 6.50, 0.00, 0.00, 37.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (313, 14, 1, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 17.80, 17.80, 14.30, 0.10, 0.00, 0.00, 0.00, 2.90, 21.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (314, 14, 2, 7280, 1, 1, 2, 5, 2, 1, 1, 3, 1, 1, 17.30, 17.30, 14.40, 0.20, 0.00, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (315, 14, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 16.80, 16.80, 14.10, 0.00, 12.90, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (316, 14, 4, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 16.60, 16.60, 13.70, 0.00, 12.90, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (317, 14, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 16.40, 16.40, 13.40, 0.00, 12.90, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (318, 14, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 16.30, 16.30, 13.30, 0.00, 12.90, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (319, 14, 7, 7280, 1, 2, 6, 3, 4, 1, 1, 3, 1, 6, 16.30, 16.30, 13.20, 0.00, 12.90, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (320, 14, 8, 7280, 1, 2, 6, 3, 5, 1, 1, 3, 1, 6, 16.20, 16.20, 13.30, 0.00, 12.90, 0.00, 0.00, 6.50, 24.10, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (321, 14, 9, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 17.80, 17.80, 13.40, 0.00, 0.00, 0.00, 0.00, 10.80, 24.10, 103.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (322, 14, 10, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 18.00, 18.00, 13.40, 0.00, 0.00, 0.00, 0.00, 10.80, 24.10, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (323, 14, 11, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 17.70, 17.70, 13.30, 0.00, 0.00, 0.00, 0.00, 12.60, 24.10, 39.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (324, 14, 12, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 16.80, 16.80, 13.70, 0.20, 0.00, 0.00, 0.00, 13.70, 23.60, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (325, 14, 13, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 16.30, 16.30, 14.00, 0.20, 0.00, 0.00, 0.00, 9.70, 24.10, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (326, 14, 14, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 16.10, 16.10, 13.90, 0.10, 0.00, 0.00, 0.00, 9.00, 24.10, 29.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (327, 14, 15, 7280, 1, 1, 2, 2, 2, 1, 1, 3, 1, 1, 15.90, 15.90, 14.10, 0.00, 38.70, 0.00, 0.00, 5.80, 24.10, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (328, 14, 16, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 15.70, 15.70, 14.10, 0.10, 38.70, 0.00, 0.00, 7.60, 24.10, 16.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (329, 14, 17, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 15.50, 15.50, 14.20, 0.30, 38.70, 0.00, 0.00, 9.40, 19.50, 10.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (330, 14, 18, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 15.10, 15.10, 14.30, 0.60, 38.70, 0.00, 0.00, 8.60, 12.70, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (331, 14, 19, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 15.00, 15.00, 14.20, 0.40, 38.70, 0.00, 0.00, 8.30, 23.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (332, 14, 20, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 14.90, 14.90, 14.00, 0.10, 38.70, 0.00, 0.00, 5.80, 20.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (333, 14, 21, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 14.70, 14.70, 13.80, 0.20, 58.10, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (334, 14, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 14.70, 14.70, 13.60, 0.10, 58.10, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (335, 14, 23, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 14.60, 14.60, 13.40, 0.10, 58.10, 0.00, 0.00, 3.60, 21.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (336, 14, 24, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 14.40, 14.40, 13.30, 0.30, 58.10, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (337, 15, 1, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.80, 23.80, 21.10, 0.50, 96.80, 0.00, 0.00, 9.40, 18.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (338, 15, 2, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.80, 23.80, 21.10, 0.40, 96.80, 0.00, 0.00, 10.10, 18.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (339, 15, 3, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 1, 1, 23.80, 23.80, 21.10, 0.40, 100.00, 0.00, 0.00, 11.50, 18.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (340, 15, 4, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 1, 1, 23.70, 23.70, 21.10, 0.30, 100.00, 0.00, 0.00, 13.00, 17.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (341, 15, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 23.60, 23.60, 21.30, 0.50, 100.00, 0.00, 0.00, 14.80, 12.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (342, 15, 6, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 1, 1, 23.60, 23.60, 21.30, 0.70, 100.00, 0.00, 0.00, 18.00, 11.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (343, 15, 7, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 1, 1, 23.60, 23.60, 21.30, 0.70, 100.00, 0.00, 0.00, 22.70, 13.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (344, 15, 8, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.80, 23.80, 21.30, 0.40, 100.00, 0.00, 0.00, 25.60, 19.10, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (345, 15, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.90, 23.90, 21.40, 0.40, 100.00, 0.00, 0.00, 24.80, 21.80, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (346, 15, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.30, 24.30, 21.50, 0.10, 100.00, 0.00, 0.00, 23.00, 23.10, 83.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (347, 15, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 24.40, 24.40, 21.50, 0.20, 100.00, 0.00, 0.00, 19.80, 24.10, 126.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (348, 15, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.40, 24.40, 21.50, 0.20, 100.00, 0.00, 0.00, 19.80, 24.10, 171.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (349, 15, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.30, 24.30, 21.40, 0.10, 100.00, 0.00, 0.00, 18.70, 23.20, 196.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (350, 15, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.20, 24.20, 21.20, 0.20, 100.00, 0.00, 0.00, 18.40, 23.80, 215.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (351, 15, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.20, 24.20, 21.20, 0.20, 96.80, 0.00, 0.00, 17.60, 23.40, 151.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (352, 15, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 24.00, 24.00, 21.10, 0.10, 96.80, 0.00, 0.00, 18.00, 21.10, 86.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (353, 15, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.70, 23.70, 21.00, 0.40, 96.80, 0.00, 0.00, 19.80, 14.90, 40.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (354, 15, 18, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.50, 23.50, 21.00, 0.50, 96.80, 0.00, 0.00, 21.60, 15.70, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (355, 15, 19, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.50, 23.50, 20.80, 0.30, 96.80, 0.00, 0.00, 23.40, 17.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (356, 15, 20, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.60, 23.60, 20.80, 0.20, 96.80, 0.00, 0.00, 22.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (357, 15, 21, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 23.80, 23.80, 21.00, 0.10, 71.00, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (358, 15, 22, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.90, 23.90, 21.00, 0.00, 71.00, 0.00, 0.00, 12.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (359, 15, 23, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 23.90, 23.90, 21.00, 0.10, 71.00, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (360, 15, 24, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 23.70, 23.70, 20.90, 0.10, 71.00, 0.00, 0.00, 7.60, 22.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (361, 16, 1, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 21.80, 21.80, 18.70, 0.00, 0.00, 0.00, 0.00, 43.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (362, 16, 2, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 21.70, 21.70, 18.70, 0.00, 0.00, 0.00, 0.00, 42.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (363, 16, 3, 7280, 1, 2, 6, 3, 4, 1, 1, 2, 1, 6, 21.60, 21.60, 18.70, 0.00, 0.00, 0.00, 0.00, 39.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (364, 16, 4, 7280, 1, 2, 6, 3, 4, 1, 1, 1, 1, 3, 21.40, 21.40, 18.80, 0.00, 0.00, 0.00, 0.00, 38.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (365, 16, 5, 7280, 1, 2, 5, 3, 3, 1, 1, 1, 1, 5, 21.30, 21.30, 18.90, 0.00, 0.00, 0.00, 0.00, 37.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (366, 16, 6, 7280, 1, 2, 5, 3, 3, 1, 1, 1, 1, 5, 21.20, 21.20, 18.90, 0.00, 0.00, 0.00, 0.00, 37.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (367, 16, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 19.00, 0.00, 0.00, 0.00, 0.00, 38.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (368, 16, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.70, 22.70, 19.40, 0.00, 0.00, 0.00, 0.00, 42.10, 24.10, 64.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (369, 16, 9, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 1, 1, 24.90, 24.90, 19.70, 0.00, 9.70, 0.00, 0.00, 38.50, 24.10, 244.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (370, 16, 10, 7280, 1, 2, 6, 3, 5, 1, 2, 5, 2, 6, 27.00, 28.40, 19.90, 0.00, 9.70, 0.00, 0.00, 32.80, 24.10, 466.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (371, 16, 11, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 3, 1, 27.40, 29.00, 20.20, 0.00, 9.70, 0.00, 0.00, 32.80, 24.10, 563.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (372, 16, 12, 7280, 1, 2, 6, 3, 5, 1, 2, 5, 3, 6, 27.70, 29.30, 20.10, 0.00, 9.70, 0.00, 0.00, 31.00, 24.10, 649.00, 2.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (373, 16, 13, 7280, 1, 2, 6, 3, 5, 1, 2, 5, 3, 6, 27.40, 29.00, 20.20, 0.00, 9.70, 0.00, 0.00, 30.20, 24.10, 597.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (374, 16, 14, 7280, 1, 1, 2, 3, 2, 1, 2, 5, 2, 1, 26.90, 28.40, 20.30, 0.10, 9.70, 0.00, 0.00, 29.50, 24.10, 491.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (375, 16, 15, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 2, 1, 26.40, 26.40, 20.20, 0.00, 22.60, 0.00, 0.00, 29.50, 24.10, 390.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (376, 16, 16, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 2, 1, 25.90, 25.90, 20.30, 0.00, 22.60, 0.00, 0.00, 31.70, 24.10, 307.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (377, 16, 17, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 25.10, 25.10, 20.40, 0.00, 22.60, 0.00, 0.00, 33.50, 24.10, 226.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (378, 16, 18, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 23.70, 23.70, 20.30, 0.00, 22.60, 0.00, 0.00, 35.30, 24.10, 82.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (379, 16, 19, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.90, 22.90, 20.30, 0.00, 22.60, 0.00, 0.00, 34.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (380, 16, 20, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.80, 22.80, 20.40, 0.00, 22.60, 0.00, 0.00, 34.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (381, 16, 21, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 23.10, 23.10, 20.50, 0.00, 0.00, 0.00, 0.00, 36.40, 19.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (382, 16, 22, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 23.10, 23.10, 20.60, 0.00, 0.00, 0.00, 0.00, 35.30, 15.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (383, 16, 23, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 22.90, 22.90, 20.60, 0.10, 0.00, 0.00, 0.00, 34.90, 17.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (384, 16, 24, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 22.90, 22.90, 20.60, 0.00, 0.00, 0.00, 0.00, 33.50, 17.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (385, 17, 1, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 18.10, 18.10, 17.90, 0.00, 9.70, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (386, 17, 2, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 17.80, 17.80, 17.70, 0.00, 9.70, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (387, 17, 3, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 17.70, 17.70, 17.60, 0.00, 0.00, 0.00, 0.00, 15.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (388, 17, 4, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 17.60, 17.60, 17.50, 0.00, 0.00, 0.00, 0.00, 15.50, 14.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (389, 17, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 17.60, 17.60, 17.50, 0.00, 0.00, 0.00, 0.00, 17.30, 3.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (390, 17, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 17.70, 17.70, 17.60, 0.00, 0.00, 0.00, 0.00, 17.60, 2.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (391, 17, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 17.90, 17.90, 17.70, 0.00, 0.00, 0.00, 0.00, 17.60, 2.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (392, 17, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 19.00, 19.00, 18.20, 0.00, 0.00, 0.00, 0.00, 20.20, 14.00, 42.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (393, 17, 9, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 21.00, 21.00, 18.50, 0.00, 19.40, 0.00, 0.00, 18.40, 24.10, 183.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (394, 17, 10, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 2, 1, 23.70, 23.70, 18.60, 0.00, 19.40, 0.00, 0.00, 17.30, 24.10, 421.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (395, 17, 11, 7280, 1, 2, 6, 5, 5, 1, 2, 1, 3, 6, 25.90, 25.90, 18.70, 0.00, 19.40, 0.00, 0.00, 15.10, 24.10, 608.00, 2.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (396, 17, 12, 7280, 1, 2, 6, 5, 5, 1, 2, 1, 4, 3, 27.90, 29.00, 18.80, 0.00, 19.40, 0.00, 0.00, 12.20, 24.10, 779.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (397, 17, 13, 7280, 1, 2, 2, 5, 2, 1, 2, 1, 4, 1, 28.70, 29.80, 18.80, 0.00, 19.40, 0.00, 0.00, 10.10, 24.10, 773.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (398, 17, 14, 7280, 1, 1, 2, 5, 2, 1, 2, 1, 3, 1, 27.80, 29.00, 19.10, 0.10, 19.40, 0.00, 0.00, 9.70, 24.10, 552.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (399, 17, 15, 7280, 1, 1, 1, 5, 1, 1, 2, 1, 2, 1, 26.10, 26.10, 19.80, 0.00, 87.10, 0.00, 0.00, 12.20, 23.50, 362.00, 1.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (400, 17, 16, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 25.00, 25.00, 19.80, 0.10, 87.10, 0.00, 0.00, 15.80, 23.40, 248.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (401, 17, 17, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 24.10, 24.10, 19.80, 0.00, 87.10, 0.00, 0.00, 19.40, 24.10, 188.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (402, 17, 18, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 22.50, 22.50, 19.70, 0.10, 87.10, 0.00, 0.00, 23.40, 24.10, 85.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (403, 17, 19, 7280, 1, 1, 3, 5, 1, 1, 3, 1, 1, 6, 20.70, 20.70, 19.50, 0.00, 87.10, 0.00, 0.00, 21.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (404, 17, 20, 7280, 1, 1, 3, 3, 1, 1, 3, 2, 1, 6, 19.80, 19.80, 19.40, 0.00, 87.10, 0.00, 0.00, 18.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (405, 17, 21, 7280, 1, 2, 6, 3, 4, 1, 3, 2, 1, 6, 19.50, 19.50, 19.20, 0.00, 19.40, 0.00, 0.00, 20.20, 15.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (406, 17, 22, 7280, 1, 2, 6, 3, 4, 1, 3, 2, 1, 6, 19.60, 19.60, 19.20, 0.00, 19.40, 0.00, 0.00, 19.10, 23.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (407, 17, 23, 7280, 1, 2, 6, 3, 4, 1, 3, 2, 1, 6, 20.00, 20.00, 19.20, 0.00, 19.40, 0.00, 0.00, 18.70, 13.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (408, 17, 24, 7280, 1, 2, 6, 3, 4, 1, 3, 2, 1, 6, 19.90, 19.90, 19.20, 0.00, 19.40, 0.00, 0.00, 19.10, 12.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (409, 18, 1, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.40, 17.40, 17.00, 0.10, 3.20, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (410, 18, 2, 7280, 1, 2, 2, 2, 2, 1, 3, 3, 1, 1, 17.30, 17.30, 16.80, 0.00, 3.20, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (411, 18, 3, 7280, 1, 2, 2, 2, 2, 1, 3, 3, 1, 1, 17.20, 17.20, 16.70, 0.00, 6.50, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (412, 18, 4, 7280, 1, 1, 6, 2, 4, 1, 3, 3, 1, 6, 16.90, 16.90, 16.50, 0.10, 6.50, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (413, 18, 5, 7280, 1, 2, 6, 2, 4, 1, 3, 3, 1, 4, 16.40, 16.40, 16.30, 0.00, 6.50, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (414, 18, 6, 7280, 1, 1, 6, 3, 4, 1, 3, 4, 1, 6, 16.10, 16.10, 16.00, 0.40, 6.50, 0.00, 0.00, 0.70, 12.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (415, 18, 7, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 6, 16.00, 16.00, 15.90, 0.00, 6.50, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (416, 18, 8, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 16.20, 16.20, 16.00, 0.10, 6.50, 0.00, 0.00, 2.20, 24.10, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (417, 18, 9, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.00, 17.00, 16.70, 0.10, 12.90, 0.00, 0.00, 4.30, 23.80, 35.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (418, 18, 10, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.60, 17.60, 17.10, 0.10, 12.90, 0.00, 0.00, 6.50, 24.10, 88.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (419, 18, 11, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.70, 17.70, 17.30, 0.20, 12.90, 0.00, 0.00, 4.70, 24.10, 68.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (420, 18, 12, 7280, 1, 2, 6, 2, 5, 1, 3, 3, 1, 4, 18.10, 18.10, 17.30, 0.00, 12.90, 0.00, 0.00, 5.00, 24.10, 134.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (421, 18, 13, 7280, 1, 2, 6, 2, 5, 1, 1, 3, 3, 6, 21.90, 21.90, 17.30, 0.00, 12.90, 0.00, 0.00, 5.00, 24.10, 608.00, 2.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (422, 18, 14, 7280, 1, 2, 6, 2, 5, 1, 2, 3, 2, 6, 23.30, 23.30, 16.70, 0.00, 12.90, 0.00, 0.00, 5.00, 24.10, 482.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (423, 18, 15, 7280, 1, 1, 2, 1, 2, 1, 2, 3, 2, 1, 23.10, 23.10, 17.10, 0.20, 16.10, 0.00, 0.00, 5.80, 19.10, 430.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (424, 18, 16, 7280, 1, 1, 6, 3, 5, 1, 1, 3, 1, 6, 21.80, 21.80, 18.30, 0.30, 16.10, 0.00, 0.00, 5.00, 23.30, 214.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (425, 18, 17, 7280, 1, 1, 6, 3, 5, 1, 1, 3, 1, 6, 20.80, 20.80, 18.70, 0.30, 16.10, 0.00, 0.00, 7.60, 24.10, 176.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (426, 18, 18, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 19.50, 19.50, 18.20, 0.00, 16.10, 0.00, 0.00, 8.30, 24.10, 75.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (427, 18, 19, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 18.80, 18.80, 17.70, 0.00, 16.10, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (428, 18, 20, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 18.60, 18.60, 17.50, 0.00, 16.10, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (429, 18, 21, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 18.40, 18.40, 17.40, 0.00, 0.00, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (430, 18, 22, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 1, 18.10, 18.10, 17.30, 0.00, 0.00, 0.00, 0.00, 8.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (431, 18, 23, 7280, 1, 1, 2, 3, 2, 1, 3, 3, 1, 1, 17.50, 17.50, 17.10, 0.20, 0.00, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (432, 18, 24, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 17.60, 17.60, 17.20, 0.00, 0.00, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (433, 19, 1, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 25.80, 25.80, 23.70, 0.00, 80.60, 0.00, 0.00, 10.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (434, 19, 2, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 25.70, 25.70, 23.70, 0.00, 80.60, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (435, 19, 3, 7280, 1, 2, 2, 8, 2, 1, 1, 3, 1, 1, 25.60, 25.60, 23.60, 0.00, 16.10, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (436, 19, 4, 7280, 1, 2, 2, 1, 2, 1, 1, 2, 1, 1, 25.50, 25.50, 23.40, 0.00, 16.10, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (437, 19, 5, 7280, 1, 2, 2, 1, 2, 1, 1, 3, 1, 1, 25.30, 25.30, 23.30, 0.00, 16.10, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (438, 19, 6, 7280, 1, 2, 2, 1, 2, 1, 1, 3, 1, 1, 25.10, 25.10, 23.20, 0.00, 16.10, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (439, 19, 7, 7280, 1, 2, 2, 6, 2, 1, 1, 3, 1, 1, 25.00, 25.00, 23.10, 0.00, 16.10, 0.00, 0.00, 1.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (440, 19, 8, 7280, 1, 2, 2, 6, 2, 1, 1, 3, 1, 1, 25.60, 25.60, 23.40, 0.00, 16.10, 0.00, 0.00, 2.50, 24.10, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (441, 19, 9, 7280, 1, 1, 1, 7, 1, 1, 1, 2, 1, 1, 26.40, 26.40, 23.40, 0.00, 64.50, 0.00, 0.00, 8.30, 24.10, 115.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (442, 19, 10, 7280, 1, 1, 1, 7, 1, 1, 1, 1, 2, 1, 27.40, 30.50, 23.50, 0.00, 64.50, 0.00, 0.00, 8.30, 18.20, 267.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (443, 19, 11, 7280, 1, 1, 1, 7, 1, 1, 1, 2, 2, 1, 28.10, 31.60, 23.50, 0.30, 64.50, 0.00, 0.00, 5.00, 8.10, 392.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (444, 19, 12, 7280, 1, 1, 1, 7, 1, 1, 1, 3, 2, 1, 28.40, 32.30, 23.80, 1.50, 64.50, 0.00, 0.00, 2.90, 5.40, 459.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (445, 19, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 2, 1, 29.10, 33.30, 23.60, 1.50, 64.50, 0.00, 0.00, 2.90, 13.50, 479.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (446, 19, 14, 7280, 1, 1, 1, 3, 1, 1, 2, 2, 3, 1, 29.80, 33.80, 23.10, 0.40, 64.50, 0.00, 0.00, 7.20, 23.20, 575.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (447, 19, 15, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 3, 1, 30.30, 34.80, 23.40, 0.10, 83.90, 0.00, 0.00, 9.70, 24.10, 664.00, 2.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (448, 19, 16, 7280, 1, 1, 3, 3, 1, 1, 2, 1, 3, 1, 30.50, 35.20, 23.50, 0.20, 83.90, 0.00, 0.00, 10.80, 17.90, 577.00, 2.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (449, 19, 17, 7280, 1, 1, 3, 2, 1, 1, 2, 1, 2, 6, 30.20, 34.90, 23.60, 0.30, 83.90, 0.00, 0.00, 11.20, 23.30, 379.00, 1.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (450, 19, 18, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 29.00, 33.80, 24.40, 0.30, 83.90, 0.00, 0.00, 9.40, 7.70, 175.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (451, 19, 19, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 26.50, 26.50, 23.70, 1.20, 83.90, 0.00, 0.00, 9.40, 12.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (452, 19, 20, 7280, 1, 1, 3, 1, 1, 1, 1, 1, 1, 6, 26.10, 26.10, 23.70, 1.00, 83.90, 0.00, 0.00, 10.80, 21.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (453, 19, 21, 7280, 1, 1, 6, 1, 4, 1, 1, 1, 1, 4, 25.80, 25.80, 23.70, 0.50, 41.90, 0.00, 0.00, 15.50, 23.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (454, 19, 22, 7280, 1, 1, 6, 2, 4, 1, 1, 1, 1, 4, 25.40, 25.40, 23.60, 0.10, 41.90, 0.00, 0.00, 16.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (455, 19, 23, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 25.00, 25.00, 23.30, 0.00, 41.90, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (456, 19, 24, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.80, 24.80, 23.20, 0.00, 41.90, 0.00, 0.00, 15.10, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (457, 20, 1, 7280, 1, 2, 5, 3, 3, 1, 3, 1, 1, 5, 17.80, 17.80, 17.00, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (458, 20, 2, 7280, 1, 2, 5, 5, 3, 1, 3, 1, 1, 5, 17.60, 17.60, 16.90, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (459, 20, 3, 7280, 1, 2, 5, 5, 3, 1, 3, 1, 1, 5, 17.60, 17.60, 16.80, 0.00, 0.00, 0.00, 0.00, 24.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (460, 20, 4, 7280, 1, 2, 5, 5, 3, 1, 3, 1, 1, 5, 17.60, 17.60, 16.70, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (461, 20, 5, 7280, 1, 2, 5, 5, 3, 1, 3, 1, 1, 5, 17.60, 17.60, 16.70, 0.00, 0.00, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (462, 20, 6, 7280, 1, 2, 5, 5, 3, 1, 3, 1, 1, 5, 17.60, 17.60, 16.70, 0.00, 0.00, 0.00, 0.00, 24.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (463, 20, 7, 7280, 1, 2, 5, 5, 6, 1, 3, 1, 1, 5, 17.60, 17.60, 16.90, 0.00, 0.00, 0.00, 0.00, 25.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (464, 20, 8, 7280, 1, 2, 5, 5, 6, 1, 1, 1, 1, 5, 19.30, 19.30, 17.40, 0.00, 0.00, 0.00, 0.00, 32.40, 24.10, 61.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (465, 20, 9, 7280, 1, 2, 6, 5, 5, 1, 1, 5, 2, 6, 22.50, 22.50, 17.70, 0.00, 3.20, 0.00, 0.00, 35.30, 24.10, 273.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (466, 20, 10, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 2, 1, 24.30, 24.30, 17.90, 0.00, 3.20, 0.00, 0.00, 29.90, 24.10, 462.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (467, 20, 11, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 3, 1, 25.00, 25.00, 18.10, 0.00, 3.20, 0.00, 0.00, 28.80, 24.10, 558.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (468, 20, 12, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 3, 1, 25.20, 25.20, 18.40, 0.00, 3.20, 0.00, 0.00, 28.10, 24.10, 616.00, 2.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (469, 20, 13, 7280, 1, 1, 2, 3, 2, 1, 2, 5, 2, 1, 24.50, 24.50, 18.60, 0.10, 3.20, 0.00, 0.00, 27.70, 24.10, 529.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (470, 20, 14, 7280, 1, 1, 6, 3, 5, 1, 1, 5, 2, 6, 23.90, 23.90, 18.50, 0.00, 3.20, 0.00, 0.00, 28.80, 24.10, 441.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (471, 20, 15, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 2, 6, 23.30, 23.30, 18.40, 0.00, 6.50, 0.00, 0.00, 30.20, 24.10, 339.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (472, 20, 16, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 2, 6, 22.90, 22.90, 18.30, 0.00, 6.50, 0.00, 0.00, 31.70, 24.10, 297.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (473, 20, 17, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 1, 3, 22.20, 22.20, 18.40, 0.00, 6.50, 0.00, 0.00, 34.20, 24.10, 203.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (474, 20, 18, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 1, 3, 21.20, 21.20, 18.30, 0.00, 6.50, 0.00, 0.00, 36.40, 24.10, 81.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (475, 20, 19, 7280, 1, 2, 6, 3, 4, 1, 1, 5, 1, 4, 20.40, 20.40, 18.20, 0.00, 6.50, 0.00, 0.00, 38.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (476, 20, 20, 7280, 1, 2, 6, 3, 4, 1, 1, 5, 1, 4, 20.20, 20.20, 18.10, 0.00, 6.50, 0.00, 0.00, 37.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (477, 20, 21, 7280, 1, 2, 6, 3, 4, 1, 1, 2, 1, 1, 20.20, 20.20, 18.10, 0.00, 0.00, 0.00, 0.00, 34.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (478, 20, 22, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 20.60, 20.60, 18.10, 0.00, 0.00, 0.00, 0.00, 35.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (479, 20, 23, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 20.80, 20.80, 18.10, 0.00, 0.00, 0.00, 0.00, 33.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (480, 20, 24, 7280, 1, 2, 2, 5, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 18.00, 0.00, 0.00, 0.00, 0.00, 32.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (481, 21, 1, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.70, 0.30, 93.50, 0.00, 0.00, 5.00, 23.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (482, 21, 2, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 16.90, 16.90, 16.70, 0.20, 93.50, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (483, 21, 3, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.80, 16.80, 16.70, 0.10, 96.80, 0.00, 0.00, 5.00, 7.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (484, 21, 4, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 16.70, 16.70, 16.60, 0.10, 96.80, 0.00, 0.00, 4.70, 3.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (485, 21, 5, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 16.70, 16.70, 16.60, 0.10, 96.80, 0.00, 0.00, 5.40, 7.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (486, 21, 6, 7280, 1, 1, 1, 7, 1, 1, 3, 4, 1, 1, 16.70, 16.70, 16.50, 0.00, 96.80, 0.00, 0.00, 0.70, 8.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (487, 21, 7, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 16.70, 16.70, 16.40, 0.20, 96.80, 0.00, 0.00, 1.40, 10.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (488, 21, 8, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 16.70, 16.70, 16.30, 0.10, 96.80, 0.00, 0.00, 1.10, 24.10, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (489, 21, 9, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 16.80, 16.80, 16.30, 0.20, 96.80, 0.00, 0.00, 1.40, 18.30, 6.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (490, 21, 10, 7280, 1, 1, 1, 8, 1, 1, 3, 4, 1, 1, 16.80, 16.80, 16.40, 0.70, 96.80, 0.00, 0.00, 1.40, 11.30, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (491, 21, 11, 7280, 1, 1, 1, 1, 1, 1, 3, 4, 1, 1, 16.70, 16.70, 16.50, 0.80, 96.80, 0.00, 0.00, 2.20, 9.10, 14.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (492, 21, 12, 7280, 1, 1, 1, 3, 1, 1, 3, 4, 1, 1, 16.70, 16.70, 16.50, 1.30, 96.80, 0.00, 0.00, 1.80, 8.40, 14.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (493, 21, 13, 7280, 1, 1, 1, 3, 1, 1, 3, 4, 1, 1, 16.70, 16.70, 16.60, 1.10, 96.80, 0.00, 0.00, 1.80, 9.70, 16.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (494, 21, 14, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 16.70, 16.70, 16.50, 1.30, 96.80, 0.00, 0.00, 3.20, 12.00, 16.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (495, 21, 15, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.60, 16.60, 16.50, 1.50, 96.80, 0.00, 0.00, 2.90, 9.30, 13.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (496, 21, 16, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.50, 16.50, 16.40, 1.10, 96.80, 0.00, 0.00, 4.70, 14.10, 10.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (497, 21, 17, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.50, 16.50, 16.40, 0.20, 96.80, 0.00, 0.00, 4.70, 2.30, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (498, 21, 18, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.30, 0.10, 96.80, 0.00, 0.00, 3.20, 1.40, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (499, 21, 19, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.30, 0.20, 96.80, 0.00, 0.00, 2.90, 2.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (500, 21, 20, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.30, 0.50, 96.80, 0.00, 0.00, 3.20, 1.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (501, 21, 21, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.40, 0.70, 100.00, 0.00, 0.00, 3.60, 0.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (502, 21, 22, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.40, 0.80, 100.00, 0.00, 0.00, 3.60, 0.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (503, 21, 23, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 16.40, 16.40, 16.30, 1.50, 100.00, 0.00, 0.00, 4.70, 0.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (504, 21, 24, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 16.30, 16.30, 16.30, 1.40, 100.00, 0.00, 0.00, 4.30, 0.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (505, 22, 1, 7280, 1, 2, 2, 1, 2, 1, 1, 2, 1, 1, 22.40, 22.40, 18.90, 0.00, 0.00, 0.00, 0.00, 22.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (506, 22, 2, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 22.20, 22.20, 18.90, 0.10, 0.00, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (507, 22, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.10, 22.10, 18.90, 0.00, 64.50, 0.00, 0.00, 21.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (508, 22, 4, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.00, 22.00, 18.80, 0.20, 64.50, 0.00, 0.00, 23.40, 23.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (509, 22, 5, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.90, 21.90, 18.60, 0.10, 64.50, 0.00, 0.00, 23.40, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (510, 22, 6, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.70, 21.70, 18.30, 0.20, 64.50, 0.00, 0.00, 25.60, 23.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (511, 22, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.50, 21.50, 18.10, 0.20, 64.50, 0.00, 0.00, 23.80, 20.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (512, 22, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.30, 21.30, 18.00, 0.30, 64.50, 0.00, 0.00, 25.90, 22.00, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (513, 22, 9, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 21.40, 21.40, 18.10, 0.20, 32.30, 0.00, 0.00, 26.30, 16.60, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (514, 22, 10, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 18.30, 0.30, 32.30, 0.00, 0.00, 27.00, 23.60, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (515, 22, 11, 7280, 1, 1, 2, 3, 2, 1, 1, 2, 1, 1, 21.40, 21.40, 18.50, 0.40, 32.30, 0.00, 0.00, 26.60, 21.70, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (516, 22, 12, 7280, 1, 1, 2, 2, 2, 1, 1, 5, 1, 1, 21.60, 21.60, 18.70, 0.10, 32.30, 0.00, 0.00, 28.40, 24.00, 30.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (517, 22, 13, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 22.10, 22.10, 18.80, 0.10, 32.30, 0.00, 0.00, 24.50, 22.30, 61.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (518, 22, 14, 7280, 1, 1, 2, 2, 2, 1, 1, 5, 1, 1, 22.40, 22.40, 18.80, 0.10, 32.30, 0.00, 0.00, 24.50, 24.10, 49.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (519, 22, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.80, 22.80, 18.80, 0.00, 51.60, 0.00, 0.00, 24.50, 24.10, 39.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (520, 22, 16, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.40, 23.40, 18.80, 0.10, 51.60, 0.00, 0.00, 20.90, 23.20, 61.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (521, 22, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.50, 23.50, 18.80, 0.10, 51.60, 0.00, 0.00, 20.90, 24.10, 46.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (522, 22, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 23.20, 23.20, 18.70, 0.10, 51.60, 0.00, 0.00, 20.50, 22.70, 7.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (523, 22, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.80, 22.80, 18.70, 0.30, 51.60, 0.00, 0.00, 21.20, 18.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (524, 22, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.40, 22.40, 18.70, 0.40, 51.60, 0.00, 0.00, 25.20, 21.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (525, 22, 21, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 22.30, 22.30, 18.50, 0.20, 29.00, 0.00, 0.00, 25.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (526, 22, 22, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.20, 22.20, 18.30, 0.00, 29.00, 0.00, 0.00, 27.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (527, 22, 23, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 22.20, 22.20, 18.20, 0.10, 29.00, 0.00, 0.00, 25.60, 22.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (528, 22, 24, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 22.00, 22.00, 18.10, 0.20, 29.00, 0.00, 0.00, 23.80, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (529, 23, 1, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 20.20, 20.20, 19.30, 0.00, 58.10, 0.00, 0.00, 4.00, 23.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (530, 23, 2, 7280, 1, 1, 3, 6, 1, 1, 3, 3, 1, 4, 20.00, 20.00, 19.20, 0.10, 58.10, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (531, 23, 3, 7280, 1, 1, 3, 6, 1, 1, 3, 2, 1, 1, 19.80, 19.80, 19.10, 0.00, 80.60, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (532, 23, 4, 7280, 1, 1, 4, 6, 1, 1, 3, 2, 1, 5, 19.70, 19.70, 19.00, 0.00, 80.60, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (533, 23, 5, 7280, 1, 1, 4, 6, 1, 1, 3, 3, 1, 5, 19.60, 19.60, 18.90, 0.00, 80.60, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (534, 23, 6, 7280, 1, 1, 4, 8, 1, 1, 3, 3, 1, 5, 19.50, 19.50, 18.70, 0.00, 80.60, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (535, 23, 7, 7280, 1, 1, 3, 6, 1, 1, 3, 3, 1, 3, 19.50, 19.50, 18.70, 0.00, 80.60, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (536, 23, 8, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 20.40, 20.40, 19.10, 0.00, 80.60, 0.00, 0.00, 5.00, 24.10, 19.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (537, 23, 9, 7280, 1, 1, 1, 6, 1, 1, 1, 3, 1, 1, 21.10, 21.10, 19.30, 0.00, 80.60, 0.00, 0.00, 3.20, 24.10, 53.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (538, 23, 10, 7280, 1, 1, 1, 7, 1, 1, 1, 3, 1, 1, 21.60, 21.60, 19.40, 0.00, 80.60, 0.00, 0.00, 4.00, 24.10, 77.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (539, 23, 11, 7280, 1, 1, 1, 6, 1, 1, 1, 3, 1, 1, 21.60, 21.60, 19.70, 0.10, 80.60, 0.00, 0.00, 4.70, 24.10, 81.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (540, 23, 12, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 21.50, 21.50, 19.80, 0.10, 80.60, 0.00, 0.00, 2.90, 24.10, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (541, 23, 13, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 21.40, 21.40, 20.00, 0.10, 80.60, 0.00, 0.00, 1.40, 24.10, 58.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (542, 23, 14, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 21.30, 21.30, 20.00, 0.10, 80.60, 0.00, 0.00, 2.20, 24.10, 45.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (543, 23, 15, 7280, 1, 1, 2, 1, 2, 1, 3, 3, 1, 1, 21.30, 21.30, 20.10, 0.10, 22.60, 0.00, 0.00, 2.50, 24.10, 41.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (544, 23, 16, 7280, 1, 2, 6, 1, 5, 1, 3, 3, 1, 1, 21.60, 21.60, 20.10, 0.00, 22.60, 0.00, 0.00, 2.90, 24.10, 70.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (545, 23, 17, 7280, 1, 2, 2, 8, 2, 1, 3, 4, 1, 1, 21.90, 21.90, 20.30, 0.00, 22.60, 0.00, 0.00, 2.20, 24.10, 99.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (546, 23, 18, 7280, 1, 2, 2, 6, 2, 1, 3, 4, 1, 1, 21.70, 21.70, 20.30, 0.00, 22.60, 0.00, 0.00, 1.40, 24.10, 35.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (547, 23, 19, 7280, 1, 2, 2, 8, 2, 1, 3, 3, 1, 1, 21.60, 21.60, 20.20, 0.00, 22.60, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (548, 23, 20, 7280, 1, 1, 6, 1, 4, 1, 3, 3, 1, 6, 21.60, 21.60, 20.20, 0.10, 22.60, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (549, 23, 21, 7280, 1, 1, 3, 1, 1, 1, 3, 2, 1, 3, 21.30, 21.30, 20.10, 0.00, 51.60, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (550, 23, 22, 7280, 1, 1, 3, 8, 1, 1, 3, 3, 1, 4, 21.00, 21.00, 20.00, 0.00, 51.60, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (551, 23, 23, 7280, 1, 1, 3, 8, 1, 1, 3, 3, 1, 4, 20.60, 20.60, 19.80, 0.00, 51.60, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (552, 23, 24, 7280, 1, 1, 3, 8, 1, 1, 3, 3, 1, 4, 20.50, 20.50, 19.70, 0.10, 51.60, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (553, 24, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 21.30, 21.30, 17.80, 0.00, 0.00, 0.00, 0.00, 28.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (554, 24, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 21.50, 21.50, 17.40, 0.00, 0.00, 0.00, 0.00, 29.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (555, 24, 3, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.50, 21.50, 17.20, 0.00, 12.90, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (556, 24, 4, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 17.00, 0.00, 12.90, 0.00, 0.00, 28.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (557, 24, 5, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 17.10, 0.00, 12.90, 0.00, 0.00, 25.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (558, 24, 6, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 17.10, 0.10, 12.90, 0.00, 0.00, 28.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (559, 24, 7, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 17.10, 0.00, 12.90, 0.00, 0.00, 31.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (560, 24, 8, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 21.20, 21.20, 17.10, 0.10, 12.90, 0.00, 0.00, 33.50, 24.10, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (561, 24, 9, 7280, 1, 1, 2, 2, 2, 1, 1, 5, 1, 1, 21.40, 21.40, 17.30, 0.10, 0.00, 0.00, 0.00, 36.00, 24.10, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (562, 24, 10, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 21.70, 21.70, 17.90, 0.00, 0.00, 0.00, 0.00, 33.80, 24.10, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (563, 24, 11, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 21.90, 21.90, 18.30, 0.00, 0.00, 0.00, 0.00, 32.00, 24.10, 29.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (564, 24, 12, 7280, 1, 1, 2, 2, 2, 1, 1, 5, 1, 1, 22.70, 22.70, 18.40, 0.10, 0.00, 0.00, 0.00, 29.90, 24.10, 76.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (565, 24, 13, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.50, 22.50, 18.50, 0.00, 0.00, 0.00, 0.00, 33.50, 24.10, 57.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (566, 24, 14, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 23.20, 23.20, 18.50, 0.00, 0.00, 0.00, 0.00, 32.00, 24.10, 102.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (567, 24, 15, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 23.10, 23.10, 18.40, 0.00, 3.20, 0.00, 0.00, 31.00, 24.10, 132.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (568, 24, 16, 7280, 1, 2, 2, 2, 2, 1, 2, 7, 1, 1, 24.20, 24.20, 18.20, 0.00, 3.20, 0.00, 0.00, 27.00, 24.10, 187.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (569, 24, 17, 7280, 1, 1, 6, 2, 5, 1, 2, 7, 1, 1, 24.20, 24.20, 18.10, 0.10, 3.20, 0.00, 0.00, 26.60, 24.10, 102.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (570, 24, 18, 7280, 1, 2, 6, 2, 5, 1, 1, 7, 1, 6, 23.30, 23.30, 18.10, 0.00, 3.20, 0.00, 0.00, 31.70, 24.10, 39.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (571, 24, 19, 7280, 1, 2, 6, 2, 4, 1, 1, 7, 1, 1, 22.20, 22.20, 18.10, 0.00, 3.20, 0.00, 0.00, 37.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (572, 24, 20, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 22.30, 22.30, 17.90, 0.00, 3.20, 0.00, 0.00, 36.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (573, 24, 21, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.40, 22.40, 17.40, 0.00, 3.20, 0.00, 0.00, 37.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (574, 24, 22, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.40, 22.40, 17.30, 0.00, 3.20, 0.00, 0.00, 39.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (575, 24, 23, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.30, 22.30, 17.10, 0.00, 3.20, 0.00, 0.00, 38.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (576, 24, 24, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.20, 22.20, 16.60, 0.00, 3.20, 0.00, 0.00, 37.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (577, 25, 1, 7280, 1, 2, 6, 3, 4, 1, 1, 5, 1, 4, 21.30, 21.30, 18.40, 0.00, 0.00, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (578, 25, 2, 7280, 1, 2, 6, 3, 4, 1, 1, 5, 1, 1, 21.20, 21.20, 18.20, 0.00, 0.00, 0.00, 0.00, 29.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (579, 25, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 21.70, 21.70, 18.40, 0.00, 12.90, 0.00, 0.00, 31.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (580, 25, 4, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 21.90, 21.90, 18.80, 0.00, 12.90, 0.00, 0.00, 32.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (581, 25, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 22.20, 22.20, 19.20, 0.00, 12.90, 0.00, 0.00, 31.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (582, 25, 6, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.20, 22.20, 19.20, 0.10, 12.90, 0.00, 0.00, 32.80, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (583, 25, 7, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.20, 22.20, 19.20, 0.10, 12.90, 0.00, 0.00, 33.10, 23.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (584, 25, 8, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.30, 22.30, 19.30, 0.20, 12.90, 0.00, 0.00, 33.50, 23.40, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (585, 25, 9, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.50, 22.50, 19.30, 0.20, 0.00, 0.00, 0.00, 32.40, 20.80, 29.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (586, 25, 10, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.60, 22.60, 19.40, 0.20, 0.00, 0.00, 0.00, 34.20, 24.10, 54.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (587, 25, 11, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.90, 22.90, 19.40, 0.10, 0.00, 0.00, 0.00, 33.10, 21.40, 122.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (588, 25, 12, 7280, 1, 1, 2, 2, 2, 1, 1, 7, 1, 1, 23.10, 23.10, 19.30, 0.20, 0.00, 0.00, 0.00, 32.40, 23.00, 122.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (589, 25, 13, 7280, 1, 1, 2, 2, 2, 1, 1, 7, 1, 1, 22.90, 22.90, 19.30, 0.10, 0.00, 0.00, 0.00, 32.40, 24.00, 110.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (590, 25, 14, 7280, 1, 1, 6, 3, 5, 1, 1, 7, 1, 1, 22.80, 22.80, 19.20, 0.10, 0.00, 0.00, 0.00, 32.00, 24.10, 88.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (591, 25, 15, 7280, 1, 2, 6, 2, 5, 1, 1, 7, 2, 4, 23.20, 23.20, 19.00, 0.00, 3.20, 0.00, 0.00, 31.70, 24.10, 258.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (592, 25, 16, 7280, 1, 1, 6, 2, 5, 1, 1, 7, 2, 3, 23.90, 23.90, 18.80, 0.00, 3.20, 0.00, 0.00, 28.80, 24.10, 440.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (593, 25, 17, 7280, 1, 1, 6, 2, 5, 1, 1, 7, 1, 2, 23.40, 23.40, 18.80, 0.00, 3.20, 0.00, 0.00, 28.40, 24.10, 218.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (594, 25, 18, 7280, 1, 2, 6, 3, 5, 1, 1, 7, 1, 3, 22.60, 22.60, 18.80, 0.00, 3.20, 0.00, 0.00, 29.90, 24.10, 59.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (595, 25, 19, 7280, 1, 2, 6, 3, 4, 1, 1, 7, 1, 1, 22.20, 22.20, 18.60, 0.00, 3.20, 0.00, 0.00, 32.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (596, 25, 20, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 22.20, 22.20, 18.70, 0.00, 3.20, 0.00, 0.00, 34.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (597, 25, 21, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 22.30, 22.30, 18.50, 0.00, 3.20, 0.00, 0.00, 36.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (598, 25, 22, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.40, 22.40, 18.10, 0.00, 3.20, 0.00, 0.00, 38.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (599, 25, 23, 7280, 1, 1, 2, 3, 2, 1, 1, 7, 1, 1, 22.30, 22.30, 17.30, 0.10, 3.20, 0.00, 0.00, 39.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (600, 25, 24, 7280, 1, 2, 2, 3, 2, 1, 1, 6, 1, 1, 21.80, 21.80, 17.20, 0.00, 3.20, 0.00, 0.00, 42.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (601, 26, 1, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 24.80, 24.80, 22.90, 0.00, 61.30, 0.00, 0.00, 42.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (602, 26, 2, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 24.70, 24.70, 22.80, 0.00, 61.30, 0.00, 0.00, 40.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (603, 26, 3, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.40, 24.40, 22.60, 0.00, 6.50, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (604, 26, 4, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 24.40, 24.40, 22.60, 0.00, 6.50, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (605, 26, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.30, 24.30, 22.60, 0.00, 6.50, 0.00, 0.00, 29.90, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (606, 26, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.00, 24.00, 22.40, 0.00, 6.50, 0.00, 0.00, 28.80, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (607, 26, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 23.60, 23.60, 22.30, 0.00, 6.50, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (608, 26, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.50, 24.50, 23.00, 0.00, 6.50, 0.00, 0.00, 32.40, 24.10, 48.00, 0.20, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (609, 26, 9, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 1, 1, 26.30, 26.30, 23.60, 0.00, 83.90, 0.00, 0.00, 28.40, 24.10, 248.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (610, 26, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 2, 1, 27.80, 31.50, 24.10, 0.00, 83.90, 0.00, 0.00, 20.50, 23.80, 483.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (611, 26, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 3, 1, 29.00, 33.70, 24.30, 0.60, 83.90, 0.00, 0.00, 19.80, 10.20, 663.00, 2.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (612, 26, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 4, 1, 30.00, 35.10, 24.10, 0.90, 83.90, 0.00, 0.00, 22.30, 24.10, 787.00, 2.80, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (613, 26, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 3, 1, 30.00, 35.10, 24.10, 0.90, 83.90, 0.00, 0.00, 21.60, 12.50, 728.00, 2.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (614, 26, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 3, 1, 29.60, 34.70, 24.30, 1.20, 83.90, 0.00, 0.00, 22.30, 7.90, 590.00, 2.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (615, 26, 15, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 3, 6, 29.60, 34.60, 24.20, 0.90, 90.30, 0.00, 0.00, 23.00, 17.30, 550.00, 2.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (616, 26, 16, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 2, 3, 29.30, 34.20, 24.30, 1.10, 90.30, 0.00, 0.00, 23.80, 8.40, 462.00, 1.70, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (617, 26, 17, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 2, 1, 28.80, 33.60, 24.50, 1.00, 90.30, 0.00, 0.00, 25.20, 9.40, 336.00, 1.20, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (618, 26, 18, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 27.20, 30.40, 24.10, 0.90, 90.30, 0.00, 0.00, 25.60, 12.70, 155.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (619, 26, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 25.90, 25.90, 23.60, 0.20, 90.30, 0.00, 0.00, 22.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (620, 26, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 25.30, 25.30, 23.50, 0.10, 90.30, 0.00, 0.00, 26.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (621, 26, 21, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 25.00, 25.00, 23.40, 0.00, 19.40, 0.00, 0.00, 32.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (622, 26, 22, 7280, 1, 2, 6, 3, 4, 1, 3, 1, 1, 6, 24.60, 24.60, 23.30, 0.00, 19.40, 0.00, 0.00, 43.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (623, 26, 23, 7280, 1, 2, 6, 3, 4, 1, 3, 1, 1, 4, 24.50, 24.50, 23.30, 0.00, 19.40, 0.00, 0.00, 44.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (624, 26, 24, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.30, 24.30, 23.20, 0.00, 19.40, 0.00, 0.00, 22.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (625, 27, 1, 7280, 1, 2, 2, 1, 2, 1, 1, 3, 1, 1, 19.50, 19.50, 17.70, 0.00, 0.00, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (626, 27, 2, 7280, 1, 2, 2, 1, 2, 1, 3, 3, 1, 1, 19.40, 19.40, 17.80, 0.00, 0.00, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (627, 27, 3, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.20, 19.20, 18.00, 0.10, 100.00, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (628, 27, 4, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.30, 19.30, 18.10, 0.00, 100.00, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (629, 27, 5, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.40, 19.40, 18.10, 0.10, 100.00, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (630, 27, 6, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.40, 19.40, 18.00, 0.10, 100.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (631, 27, 7, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.30, 19.30, 17.90, 0.10, 100.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (632, 27, 8, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.30, 19.30, 18.00, 0.10, 100.00, 0.00, 0.00, 3.60, 23.80, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (633, 27, 9, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.80, 19.80, 18.20, 0.10, 100.00, 0.00, 0.00, 4.70, 22.50, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (634, 27, 10, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.20, 20.20, 18.40, 0.30, 100.00, 0.00, 0.00, 5.40, 22.30, 54.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (635, 27, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.80, 20.80, 18.60, 0.10, 100.00, 0.00, 0.00, 6.80, 21.40, 119.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (636, 27, 12, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 20.20, 20.20, 18.80, 0.20, 100.00, 0.00, 0.00, 6.50, 22.40, 53.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (637, 27, 13, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 20.40, 20.40, 18.80, 0.20, 100.00, 0.00, 0.00, 6.10, 22.40, 86.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (638, 27, 14, 7280, 1, 1, 3, 3, 1, 1, 1, 3, 1, 1, 20.60, 20.60, 18.90, 0.20, 100.00, 0.00, 0.00, 6.80, 23.30, 113.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (639, 27, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 21.30, 21.30, 19.00, 0.20, 93.50, 0.00, 0.00, 7.90, 21.10, 234.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (640, 27, 16, 7280, 1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 20.90, 20.90, 19.20, 0.20, 93.50, 0.00, 0.00, 7.60, 21.80, 119.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (641, 27, 17, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 20.80, 20.80, 19.30, 0.10, 93.50, 0.00, 0.00, 7.60, 23.30, 128.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (642, 27, 18, 7280, 1, 1, 1, 5, 1, 1, 3, 2, 1, 1, 20.10, 20.10, 19.20, 0.10, 93.50, 0.00, 0.00, 7.20, 24.10, 40.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (643, 27, 19, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.50, 19.50, 19.00, 0.00, 93.50, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (644, 27, 20, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.50, 19.50, 19.00, 0.00, 93.50, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (645, 27, 21, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.50, 19.50, 19.10, 0.20, 83.90, 0.00, 0.00, 5.80, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (646, 27, 22, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 19.20, 0.60, 83.90, 0.00, 0.00, 8.30, 8.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (647, 27, 23, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.50, 19.50, 19.20, 0.40, 83.90, 0.00, 0.00, 7.20, 10.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (648, 27, 24, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.40, 19.40, 19.20, 0.60, 83.90, 0.00, 0.00, 6.80, 2.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (649, 28, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.00, 22.00, 19.20, 0.00, 0.00, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (650, 28, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.00, 22.00, 19.10, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (651, 28, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.00, 22.00, 19.00, 0.00, 96.80, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (652, 28, 4, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.90, 21.90, 18.90, 0.00, 96.80, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (653, 28, 5, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.80, 21.80, 18.80, 0.20, 96.80, 0.00, 0.00, 26.30, 23.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (654, 28, 6, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.60, 21.60, 18.80, 0.10, 96.80, 0.00, 0.00, 28.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (655, 28, 7, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.60, 21.60, 18.90, 0.20, 96.80, 0.00, 0.00, 30.20, 22.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (656, 28, 8, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.70, 21.70, 19.20, 0.20, 96.80, 0.00, 0.00, 29.90, 17.70, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (657, 28, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 21.90, 21.90, 19.20, 0.30, 77.40, 0.00, 0.00, 31.30, 22.70, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (658, 28, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 19.20, 0.20, 77.40, 0.00, 0.00, 30.60, 24.10, 39.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (659, 28, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.90, 22.90, 19.20, 0.10, 77.40, 0.00, 0.00, 26.60, 22.60, 59.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (660, 28, 12, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.30, 23.30, 19.10, 0.20, 77.40, 0.00, 0.00, 24.50, 19.40, 56.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (661, 28, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.80, 23.80, 19.10, 0.30, 77.40, 0.00, 0.00, 23.40, 19.70, 90.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (662, 28, 14, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.60, 23.60, 19.00, 0.20, 77.40, 0.00, 0.00, 23.80, 22.80, 80.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (663, 28, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 24.40, 24.40, 18.90, 0.20, 45.20, 0.00, 0.00, 22.70, 23.60, 135.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (664, 28, 16, 7280, 1, 1, 1, 2, 1, 1, 2, 5, 1, 1, 24.80, 24.80, 18.70, 0.10, 45.20, 0.00, 0.00, 22.30, 24.10, 142.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (665, 28, 17, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 24.30, 24.30, 18.60, 0.00, 45.20, 0.00, 0.00, 25.20, 24.10, 70.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (666, 28, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.60, 23.60, 18.60, 0.00, 45.20, 0.00, 0.00, 29.20, 24.10, 26.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (667, 28, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 6, 22.80, 22.80, 18.60, 0.00, 45.20, 0.00, 0.00, 31.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (668, 28, 20, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 3, 22.40, 22.40, 18.60, 0.00, 45.20, 0.00, 0.00, 32.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (669, 28, 21, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 1, 22.20, 22.20, 18.50, 0.00, 51.60, 0.00, 0.00, 34.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (670, 28, 22, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 18.30, 0.00, 51.60, 0.00, 0.00, 34.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (671, 28, 23, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 18.40, 0.00, 51.60, 0.00, 0.00, 34.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (672, 28, 24, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.30, 22.30, 18.30, 0.00, 51.60, 0.00, 0.00, 35.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (673, 29, 1, 7280, 1, 2, 2, 4, 2, 1, 1, 5, 1, 1, 23.80, 23.80, 21.60, 0.00, 0.00, 0.00, 0.00, 19.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (674, 29, 2, 7280, 1, 2, 2, 4, 2, 1, 1, 5, 1, 1, 23.60, 23.60, 21.40, 0.00, 0.00, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (675, 29, 3, 7280, 1, 2, 2, 4, 2, 1, 1, 5, 1, 1, 23.30, 23.30, 21.20, 0.00, 9.70, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (676, 29, 4, 7280, 1, 2, 2, 7, 2, 1, 1, 5, 1, 1, 23.10, 23.10, 21.10, 0.00, 9.70, 0.00, 0.00, 17.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (677, 29, 5, 7280, 1, 2, 2, 7, 2, 1, 1, 5, 1, 1, 22.90, 22.90, 21.00, 0.00, 9.70, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (678, 29, 6, 7280, 1, 2, 6, 4, 4, 1, 1, 5, 1, 1, 22.80, 22.80, 20.90, 0.00, 9.70, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (679, 29, 7, 7280, 1, 2, 6, 4, 5, 1, 1, 5, 1, 1, 22.80, 22.80, 20.90, 0.00, 9.70, 0.00, 0.00, 18.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (680, 29, 8, 7280, 1, 2, 6, 4, 5, 1, 1, 5, 1, 3, 23.50, 23.50, 21.20, 0.00, 9.70, 0.00, 0.00, 17.30, 24.10, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (681, 29, 9, 7280, 1, 1, 3, 4, 1, 1, 1, 5, 1, 6, 24.80, 24.80, 21.50, 0.00, 80.60, 0.00, 0.00, 19.40, 24.10, 248.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (682, 29, 10, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 2, 1, 25.60, 25.60, 22.00, 0.00, 80.60, 0.00, 0.00, 24.50, 24.10, 313.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (683, 29, 11, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 25.70, 25.70, 22.40, 0.00, 80.60, 0.00, 0.00, 23.00, 24.10, 231.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (684, 29, 12, 7280, 1, 1, 3, 4, 1, 1, 1, 5, 1, 1, 25.70, 25.70, 22.40, 0.00, 80.60, 0.00, 0.00, 24.50, 24.10, 245.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (685, 29, 13, 7280, 1, 1, 3, 4, 1, 1, 1, 5, 2, 1, 25.70, 25.70, 22.50, 0.00, 80.60, 0.00, 0.00, 26.60, 24.10, 280.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (686, 29, 14, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 2, 1, 26.00, 26.00, 22.50, 0.00, 80.60, 0.00, 0.00, 29.50, 24.10, 323.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (687, 29, 15, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 25.90, 25.90, 22.70, 0.00, 80.60, 0.00, 0.00, 27.70, 24.10, 173.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (688, 29, 16, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 25.60, 25.60, 22.90, 0.00, 80.60, 0.00, 0.00, 24.10, 24.10, 73.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (689, 29, 17, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 25.20, 25.20, 22.80, 0.20, 80.60, 0.00, 0.00, 22.00, 19.10, 29.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (690, 29, 18, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 24.80, 24.80, 22.70, 0.30, 80.60, 0.00, 0.00, 19.10, 24.10, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (691, 29, 19, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 24.90, 24.90, 22.70, 0.00, 80.60, 0.00, 0.00, 20.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (692, 29, 20, 7280, 1, 1, 1, 4, 1, 1, 1, 5, 1, 1, 24.70, 24.70, 22.70, 0.20, 80.60, 0.00, 0.00, 20.90, 21.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (693, 29, 21, 7280, 1, 1, 2, 4, 2, 1, 1, 5, 1, 1, 24.60, 24.60, 22.70, 0.10, 19.40, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (694, 29, 22, 7280, 1, 1, 2, 4, 2, 1, 1, 2, 1, 1, 24.50, 24.50, 22.70, 0.20, 19.40, 0.00, 0.00, 20.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (695, 29, 23, 7280, 1, 2, 2, 4, 2, 1, 1, 5, 1, 1, 24.60, 24.60, 22.70, 0.00, 19.40, 0.00, 0.00, 23.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (696, 29, 24, 7280, 1, 1, 2, 4, 2, 1, 1, 5, 1, 1, 24.50, 24.50, 22.70, 0.10, 19.40, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (697, 30, 1, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 26.30, 26.30, 23.70, 0.40, 90.30, 0.00, 0.00, 23.00, 21.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (698, 30, 2, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 26.00, 26.00, 23.40, 0.50, 90.30, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (699, 30, 3, 7280, 1, 1, 2, 3, 2, 1, 1, 5, 1, 1, 25.90, 25.90, 23.10, 0.40, 38.70, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (700, 30, 4, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 26.20, 26.20, 22.90, 0.00, 38.70, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (701, 30, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 26.00, 26.00, 22.80, 0.00, 38.70, 0.00, 0.00, 21.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (702, 30, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 25.80, 25.80, 22.80, 0.00, 38.70, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (703, 30, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 25.80, 25.80, 22.80, 0.00, 38.70, 0.00, 0.00, 18.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (704, 30, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 25.90, 25.90, 23.00, 0.00, 38.70, 0.00, 0.00, 16.60, 24.10, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (705, 30, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 26.40, 26.40, 23.20, 0.00, 64.50, 0.00, 0.00, 13.00, 24.10, 176.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (706, 30, 10, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 2, 1, 27.00, 29.60, 23.30, 0.00, 64.50, 0.00, 0.00, 10.80, 24.10, 381.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (707, 30, 11, 7280, 1, 1, 3, 5, 1, 1, 1, 1, 3, 6, 27.60, 30.70, 23.30, 0.00, 64.50, 0.00, 0.00, 9.00, 24.10, 586.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (708, 30, 12, 7280, 1, 1, 3, 4, 1, 1, 1, 2, 4, 1, 27.90, 31.20, 23.40, 0.40, 64.50, 0.00, 0.00, 7.60, 22.50, 761.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (709, 30, 13, 7280, 1, 1, 1, 4, 1, 1, 1, 3, 4, 1, 28.10, 31.60, 23.40, 1.00, 64.50, 0.00, 0.00, 5.40, 8.30, 824.00, 3.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (710, 30, 14, 7280, 1, 1, 3, 5, 1, 1, 1, 3, 4, 1, 28.40, 32.00, 23.30, 1.40, 64.50, 0.00, 0.00, 6.50, 24.10, 792.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (711, 30, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 3, 1, 28.30, 31.70, 23.20, 1.60, 87.10, 0.00, 0.00, 7.20, 7.70, 741.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (712, 30, 16, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 3, 4, 28.50, 32.30, 23.50, 1.90, 87.10, 0.00, 0.00, 9.00, 4.90, 599.00, 2.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (713, 30, 17, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 2, 5, 28.50, 32.50, 23.80, 1.90, 87.10, 0.00, 0.00, 11.90, 4.90, 406.00, 1.50, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (714, 30, 18, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 1, 27.90, 31.80, 24.30, 2.20, 87.10, 0.00, 0.00, 15.50, 5.00, 189.00, 0.70, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (715, 30, 19, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 1, 27.40, 30.70, 23.90, 2.30, 87.10, 0.00, 0.00, 19.10, 7.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (716, 30, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 27.20, 30.20, 23.60, 1.20, 87.10, 0.00, 0.00, 21.20, 9.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (717, 30, 21, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 6, 27.10, 30.10, 23.80, 0.00, 48.40, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (718, 30, 22, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 26.60, 26.60, 23.70, 0.10, 48.40, 0.00, 0.00, 26.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (719, 30, 23, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 26.30, 26.30, 23.60, 0.00, 48.40, 0.00, 0.00, 32.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (720, 30, 24, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 4, 26.00, 26.00, 23.60, 0.00, 48.40, 0.00, 0.00, 38.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (721, 31, 1, 7280, 1, 2, 5, 3, 3, 1, 3, 2, 1, 5, 17.70, 17.70, 17.00, 0.00, 0.00, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (722, 31, 2, 7280, 1, 2, 5, 5, 3, 1, 3, 2, 1, 5, 17.60, 17.60, 16.90, 0.00, 0.00, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (723, 31, 3, 7280, 1, 2, 5, 5, 3, 1, 3, 3, 1, 5, 17.50, 17.50, 16.70, 0.00, 0.00, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (724, 31, 4, 7280, 1, 2, 5, 5, 3, 1, 3, 2, 1, 5, 17.40, 17.40, 16.70, 0.00, 0.00, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (725, 31, 5, 7280, 1, 2, 5, 5, 3, 1, 3, 2, 1, 5, 17.20, 17.20, 16.70, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (726, 31, 6, 7280, 1, 2, 5, 5, 3, 1, 3, 3, 1, 5, 17.10, 17.10, 16.70, 0.00, 0.00, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (727, 31, 7, 7280, 1, 2, 5, 5, 6, 1, 3, 2, 1, 5, 17.20, 17.20, 16.70, 0.00, 0.00, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (728, 31, 8, 7280, 1, 2, 5, 5, 6, 1, 1, 2, 1, 5, 19.20, 19.20, 17.40, 0.00, 0.00, 0.00, 0.00, 12.20, 24.10, 59.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (729, 31, 9, 7280, 1, 2, 6, 5, 5, 1, 1, 1, 2, 3, 22.20, 22.20, 17.70, 0.00, 0.00, 0.00, 0.00, 27.40, 24.10, 264.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (730, 31, 10, 7280, 1, 2, 2, 5, 2, 1, 2, 2, 2, 1, 23.90, 23.90, 17.90, 0.00, 0.00, 0.00, 0.00, 26.60, 24.10, 411.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (731, 31, 11, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 2, 1, 24.70, 24.70, 18.40, 0.00, 0.00, 0.00, 0.00, 25.60, 24.10, 497.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (732, 31, 12, 7280, 1, 2, 2, 3, 2, 1, 2, 5, 2, 1, 24.60, 24.60, 18.60, 0.00, 0.00, 0.00, 0.00, 24.80, 24.10, 522.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (733, 31, 13, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 2, 1, 24.40, 24.40, 18.60, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 525.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (734, 31, 14, 7280, 1, 1, 6, 3, 5, 1, 1, 2, 2, 1, 24.40, 24.40, 18.60, 0.10, 0.00, 0.00, 0.00, 22.70, 24.10, 518.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (735, 31, 15, 7280, 1, 2, 6, 3, 5, 1, 1, 2, 2, 3, 24.00, 24.00, 18.60, 0.00, 6.50, 0.00, 0.00, 23.00, 24.10, 460.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (736, 31, 16, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 2, 4, 23.30, 23.30, 18.50, 0.00, 6.50, 0.00, 0.00, 25.60, 24.10, 419.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (737, 31, 17, 7280, 1, 2, 6, 3, 5, 1, 1, 1, 2, 4, 22.60, 22.60, 18.40, 0.00, 6.50, 0.00, 0.00, 28.10, 24.10, 280.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (738, 31, 18, 7280, 1, 2, 5, 3, 6, 1, 1, 1, 1, 5, 21.30, 21.30, 18.40, 0.00, 6.50, 0.00, 0.00, 27.40, 24.10, 102.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (739, 31, 19, 7280, 1, 2, 5, 3, 3, 1, 1, 1, 1, 5, 19.80, 19.80, 18.10, 0.00, 6.50, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (740, 31, 20, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 4, 19.00, 19.00, 18.00, 0.00, 6.50, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (741, 31, 21, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 3, 18.80, 18.80, 18.00, 0.00, 0.00, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (742, 31, 22, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 3, 19.00, 19.00, 18.00, 0.00, 0.00, 0.00, 0.00, 11.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (743, 31, 23, 7280, 1, 2, 2, 5, 2, 1, 3, 3, 1, 1, 19.00, 19.00, 18.00, 0.00, 0.00, 0.00, 0.00, 12.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (744, 31, 24, 7280, 1, 2, 2, 5, 2, 1, 1, 3, 1, 1, 19.90, 19.90, 18.20, 0.00, 0.00, 0.00, 0.00, 7.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (745, 32, 1, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 14.90, 14.90, 14.00, 0.00, 77.40, 0.00, 0.00, 4.70, 8.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (746, 32, 2, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 14.70, 14.70, 14.00, 0.00, 77.40, 0.00, 0.00, 2.20, 8.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (747, 32, 3, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 14.60, 14.60, 14.00, 0.10, 90.30, 0.00, 0.00, 5.80, 8.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (748, 32, 4, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 6, 14.50, 14.50, 14.10, 0.10, 90.30, 0.00, 0.00, 4.30, 8.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (749, 32, 5, 7280, 1, 1, 3, 8, 1, 1, 3, 3, 1, 1, 14.10, 14.10, 13.80, 0.10, 90.30, 0.00, 0.00, 2.50, 8.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (750, 32, 6, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 3, 14.20, 14.20, 13.90, 0.10, 90.30, 0.00, 0.00, 5.40, 8.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (751, 32, 7, 7280, 1, 1, 3, 2, 1, 1, 3, 3, 1, 3, 13.50, 13.50, 13.30, 0.10, 90.30, 0.00, 0.00, 4.00, 8.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (752, 32, 8, 7280, 1, 1, 3, 2, 1, 1, 3, 3, 1, 6, 13.60, 13.60, 13.40, 0.00, 90.30, 0.00, 0.00, 4.00, 8.60, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (753, 32, 9, 7280, 1, 2, 6, 1, 5, 1, 3, 3, 1, 1, 15.00, 15.00, 14.10, 0.00, 16.10, 0.00, 0.00, 5.40, 8.50, 65.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (754, 32, 10, 7280, 1, 1, 2, 1, 2, 1, 3, 3, 1, 1, 15.70, 15.70, 14.40, 0.10, 16.10, 0.00, 0.00, 7.60, 8.50, 105.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (755, 32, 11, 7280, 1, 2, 2, 8, 2, 1, 3, 3, 1, 1, 16.20, 16.20, 14.60, 0.00, 16.10, 0.00, 0.00, 7.60, 8.60, 109.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (756, 32, 12, 7280, 1, 1, 2, 8, 2, 1, 3, 3, 1, 1, 15.90, 15.90, 14.70, 0.10, 16.10, 0.00, 0.00, 6.80, 8.60, 90.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (757, 32, 13, 7280, 1, 1, 2, 8, 2, 1, 3, 3, 1, 1, 15.80, 15.80, 14.70, 0.00, 16.10, 0.00, 0.00, 7.60, 8.70, 82.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (758, 32, 14, 7280, 1, 1, 2, 8, 7, 1, 3, 2, 1, 1, 15.90, 15.90, 14.70, 0.10, 16.10, 0.00, 0.00, 8.60, 0.60, 91.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (759, 32, 15, 7280, 1, 2, 2, 8, 7, 1, 3, 3, 1, 1, 15.80, 15.80, 14.60, 0.00, 25.80, 0.00, 0.00, 7.60, 0.50, 56.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (760, 32, 16, 7280, 1, 1, 6, 8, 5, 1, 3, 3, 1, 1, 16.20, 16.20, 14.70, 0.10, 25.80, 0.00, 0.00, 6.50, 10.70, 84.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (761, 32, 17, 7280, 1, 2, 2, 8, 2, 1, 1, 3, 1, 1, 16.70, 16.70, 14.20, 0.00, 25.80, 0.00, 0.00, 7.20, 21.40, 123.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (762, 32, 18, 7280, 1, 1, 6, 8, 5, 1, 3, 3, 1, 1, 15.80, 15.80, 14.50, 0.10, 25.80, 0.00, 0.00, 4.70, 21.40, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (763, 32, 19, 7280, 1, 2, 6, 1, 4, 1, 3, 3, 1, 6, 15.30, 15.30, 14.40, 0.00, 25.80, 0.00, 0.00, 4.00, 21.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (764, 32, 20, 7280, 1, 2, 6, 1, 4, 1, 3, 3, 1, 6, 14.80, 14.80, 14.30, 0.00, 25.80, 0.00, 0.00, 3.60, 9.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (765, 32, 21, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 14.80, 14.80, 14.30, 0.00, 51.60, 0.00, 0.00, 4.70, 11.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (766, 32, 22, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 15.10, 15.10, 14.30, 0.00, 51.60, 0.00, 0.00, 5.00, 9.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (767, 32, 23, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 15.00, 15.00, 14.30, 0.20, 51.60, 0.00, 0.00, 3.20, 8.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (768, 32, 24, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 14.90, 14.90, 14.30, 0.10, 51.60, 0.00, 0.00, 3.60, 8.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (769, 33, 1, 7280, 1, 2, 2, 5, 7, 1, 3, 2, 1, 1, 16.30, 16.30, 15.90, 0.00, 0.00, 0.00, 0.00, 13.70, 0.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (770, 33, 2, 7280, 1, 2, 2, 5, 7, 1, 3, 2, 1, 1, 16.20, 16.20, 15.90, 0.00, 0.00, 0.00, 0.00, 12.60, 0.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (771, 33, 3, 7280, 1, 2, 2, 5, 2, 1, 3, 2, 1, 1, 16.00, 16.00, 15.60, 0.00, 0.00, 0.00, 0.00, 11.50, 1.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (772, 33, 4, 7280, 1, 2, 2, 5, 2, 1, 3, 2, 1, 1, 16.00, 16.00, 15.60, 0.00, 0.00, 0.00, 0.00, 10.40, 2.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (773, 33, 5, 7280, 1, 2, 2, 5, 2, 1, 3, 2, 1, 1, 16.00, 16.00, 15.60, 0.00, 0.00, 0.00, 0.00, 11.20, 5.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (774, 33, 6, 7280, 1, 2, 2, 5, 2, 1, 3, 2, 1, 1, 15.90, 15.90, 15.50, 0.00, 0.00, 0.00, 0.00, 11.90, 5.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (775, 33, 7, 7280, 1, 2, 2, 5, 2, 1, 3, 1, 1, 1, 16.00, 16.00, 15.60, 0.00, 0.00, 0.00, 0.00, 14.80, 1.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (776, 33, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 16.70, 16.70, 15.80, 0.00, 0.00, 0.00, 0.00, 13.70, 6.10, 44.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (777, 33, 9, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 1, 6, 18.70, 18.70, 16.40, 0.00, 87.10, 0.00, 0.00, 16.60, 24.10, 184.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (778, 33, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 20.80, 20.80, 16.70, 0.00, 87.10, 0.00, 0.00, 17.60, 24.10, 405.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (779, 33, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 21.80, 21.80, 16.60, 0.00, 87.10, 0.00, 0.00, 15.80, 24.10, 501.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (780, 33, 12, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 3, 1, 22.50, 22.50, 16.50, 0.10, 87.10, 0.00, 0.00, 13.30, 24.10, 581.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (781, 33, 13, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 3, 1, 22.70, 22.70, 16.40, 0.10, 87.10, 0.00, 0.00, 12.20, 23.90, 575.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (782, 33, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 22.40, 22.40, 16.80, 0.20, 87.10, 0.00, 0.00, 10.40, 21.10, 515.00, 1.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (783, 33, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 21.40, 21.40, 17.50, 0.40, 100.00, 0.00, 0.00, 11.20, 19.70, 401.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (784, 33, 16, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 2, 1, 20.70, 20.70, 18.30, 0.70, 100.00, 0.00, 0.00, 11.20, 7.50, 487.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (785, 33, 17, 7280, 1, 1, 3, 3, 1, 1, 3, 2, 2, 4, 19.80, 19.80, 18.30, 0.40, 100.00, 0.00, 0.00, 11.90, 12.50, 331.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (786, 33, 18, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 18.00, 18.00, 17.60, 0.30, 100.00, 0.00, 0.00, 10.80, 8.00, 109.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (787, 33, 19, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 17.10, 17.10, 17.00, 0.10, 100.00, 0.00, 0.00, 10.80, 4.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (788, 33, 20, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 17.10, 17.10, 17.00, 0.00, 100.00, 0.00, 0.00, 13.00, 2.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (789, 33, 21, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 17.10, 17.10, 17.00, 0.00, 3.20, 0.00, 0.00, 13.70, 1.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (790, 33, 22, 7280, 1, 2, 2, 3, 7, 1, 3, 3, 1, 1, 17.00, 17.00, 16.90, 0.00, 3.20, 0.00, 0.00, 14.80, 0.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (791, 33, 23, 7280, 1, 2, 2, 3, 7, 1, 3, 3, 1, 1, 17.30, 17.30, 17.10, 0.00, 3.20, 0.00, 0.00, 15.80, 0.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (792, 33, 24, 7280, 1, 1, 2, 5, 7, 1, 3, 3, 1, 1, 17.30, 17.30, 17.20, 0.00, 3.20, 0.00, 0.00, 18.40, 0.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (793, 34, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 18.90, 18.90, 14.00, 0.00, 0.00, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (794, 34, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 18.80, 18.80, 13.90, 0.00, 0.00, 0.00, 0.00, 2.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (795, 34, 3, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 18.60, 18.60, 14.00, 0.00, 0.00, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (796, 34, 4, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 18.50, 18.50, 14.10, 0.00, 0.00, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (797, 34, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 18.50, 18.50, 14.20, 0.00, 0.00, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (798, 34, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 18.30, 18.30, 14.20, 0.00, 0.00, 0.00, 0.00, 3.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (799, 34, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 18.10, 18.10, 14.20, 0.00, 0.00, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (800, 34, 8, 7280, 1, 2, 6, 3, 5, 1, 1, 3, 1, 4, 18.50, 18.50, 14.10, 0.00, 0.00, 0.00, 0.00, 5.80, 24.10, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (801, 34, 9, 7280, 1, 2, 6, 3, 5, 1, 2, 3, 1, 6, 20.10, 20.10, 14.20, 0.00, 0.00, 0.00, 0.00, 6.80, 24.10, 141.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (802, 34, 10, 7280, 1, 2, 6, 3, 5, 1, 2, 1, 1, 2, 21.10, 21.10, 14.30, 0.00, 0.00, 0.00, 0.00, 14.00, 24.10, 188.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (803, 34, 11, 7280, 1, 2, 2, 2, 2, 1, 2, 1, 2, 1, 22.20, 22.20, 14.30, 0.00, 0.00, 0.00, 0.00, 16.20, 24.10, 312.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (804, 34, 12, 7280, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 21.90, 21.90, 14.10, 0.00, 0.00, 0.00, 0.00, 16.60, 24.10, 166.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (805, 34, 13, 7280, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 21.60, 21.60, 14.10, 0.00, 0.00, 0.00, 0.00, 18.00, 24.10, 109.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (806, 34, 14, 7280, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 21.60, 21.60, 14.20, 0.00, 0.00, 0.00, 0.00, 16.60, 24.10, 156.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (807, 34, 15, 7280, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 20.90, 20.90, 14.20, 0.00, 3.20, 0.00, 0.00, 17.30, 24.10, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (808, 34, 16, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 20.10, 20.10, 14.50, 0.10, 3.20, 0.00, 0.00, 13.30, 24.10, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (809, 34, 17, 7280, 1, 1, 2, 3, 2, 1, 1, 3, 1, 1, 19.40, 19.40, 14.70, 0.00, 3.20, 0.00, 0.00, 3.20, 24.10, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (810, 34, 18, 7280, 1, 2, 2, 5, 2, 1, 1, 2, 1, 1, 18.90, 18.90, 14.50, 0.00, 3.20, 0.00, 0.00, 6.80, 24.10, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (811, 34, 19, 7280, 1, 2, 2, 5, 2, 1, 1, 1, 1, 1, 18.40, 18.40, 14.10, 0.00, 3.20, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (812, 34, 20, 7280, 1, 2, 6, 5, 4, 1, 1, 1, 1, 6, 18.00, 18.00, 13.40, 0.00, 3.20, 0.00, 0.00, 11.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (813, 34, 21, 7280, 1, 2, 6, 5, 4, 1, 1, 1, 1, 2, 17.30, 17.30, 12.50, 0.00, 6.50, 0.00, 0.00, 14.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (814, 34, 22, 7280, 1, 2, 2, 5, 2, 1, 2, 1, 1, 1, 17.10, 17.10, 11.50, 0.00, 6.50, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (815, 34, 23, 7280, 1, 2, 2, 5, 2, 1, 2, 1, 1, 1, 17.10, 17.10, 10.70, 0.00, 6.50, 0.00, 0.00, 14.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (816, 34, 24, 7280, 1, 2, 2, 5, 2, 1, 2, 1, 1, 1, 16.90, 16.90, 10.30, 0.00, 6.50, 0.00, 0.00, 14.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (817, 35, 1, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.10, 17.10, 16.20, 0.10, 90.30, 0.00, 0.00, 1.40, 18.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (818, 35, 2, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.30, 0.00, 90.30, 0.00, 0.00, 2.20, 18.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (819, 35, 3, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.30, 0.00, 100.00, 0.00, 0.00, 3.20, 18.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (820, 35, 4, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.40, 0.00, 100.00, 0.00, 0.00, 5.40, 6.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (821, 35, 5, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.50, 0.10, 100.00, 0.00, 0.00, 6.80, 1.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (822, 35, 6, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.70, 0.10, 100.00, 0.00, 0.00, 7.60, 1.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (823, 35, 7, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.80, 0.10, 100.00, 0.00, 0.00, 6.80, 3.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (824, 35, 8, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 17.00, 17.00, 16.80, 0.20, 100.00, 0.00, 0.00, 7.60, 1.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (825, 35, 9, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.10, 17.10, 16.80, 0.20, 48.40, 0.00, 0.00, 6.50, 11.50, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (826, 35, 10, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.20, 17.20, 16.90, 0.10, 48.40, 0.00, 0.00, 6.80, 11.60, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (827, 35, 11, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 17.30, 17.30, 16.90, 0.30, 48.40, 0.00, 0.00, 6.10, 16.80, 19.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (828, 35, 12, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 17.40, 17.40, 16.90, 0.20, 48.40, 0.00, 0.00, 6.10, 18.60, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (829, 35, 13, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 17.30, 17.30, 16.90, 0.10, 48.40, 0.00, 0.00, 7.20, 18.50, 25.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (830, 35, 14, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 17.30, 17.30, 16.90, 0.10, 48.40, 0.00, 0.00, 7.20, 11.50, 25.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (831, 35, 15, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.20, 17.20, 16.80, 0.20, 6.50, 0.00, 0.00, 7.60, 7.10, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (832, 35, 16, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.10, 17.10, 16.80, 0.00, 6.50, 0.00, 0.00, 7.60, 6.70, 17.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (833, 35, 17, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 17.10, 17.10, 16.80, 0.00, 6.50, 0.00, 0.00, 5.40, 6.60, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (834, 35, 18, 7280, 1, 1, 2, 1, 2, 1, 3, 3, 1, 1, 17.00, 17.00, 16.70, 0.10, 6.50, 0.00, 0.00, 4.70, 6.60, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (835, 35, 19, 7280, 1, 1, 2, 1, 2, 1, 3, 3, 1, 1, 16.90, 16.90, 16.70, 0.00, 6.50, 0.00, 0.00, 5.40, 6.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (836, 35, 20, 7280, 1, 1, 2, 2, 2, 1, 3, 3, 1, 1, 16.90, 16.90, 16.70, 0.10, 6.50, 0.00, 0.00, 4.30, 1.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (837, 35, 21, 7280, 1, 1, 2, 1, 7, 1, 3, 3, 1, 1, 16.90, 16.90, 16.80, 0.30, 35.50, 0.00, 0.00, 4.70, 0.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (838, 35, 22, 7280, 1, 1, 2, 2, 7, 1, 3, 3, 1, 1, 16.90, 16.90, 16.80, 0.40, 35.50, 0.00, 0.00, 5.00, 0.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (839, 35, 23, 7280, 1, 1, 2, 2, 7, 1, 3, 3, 1, 1, 17.00, 17.00, 16.80, 0.10, 35.50, 0.00, 0.00, 5.40, 0.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (840, 35, 24, 7280, 1, 1, 2, 2, 7, 1, 3, 3, 1, 1, 16.90, 16.90, 16.80, 0.30, 35.50, 0.00, 0.00, 4.70, 0.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (841, 36, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.20, 22.20, 19.40, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (842, 36, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.40, 22.40, 19.40, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (843, 36, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.50, 22.50, 19.40, 0.00, 96.80, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (844, 36, 4, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 3, 22.40, 22.40, 19.50, 0.00, 96.80, 0.00, 0.00, 28.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (845, 36, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.30, 22.30, 19.40, 0.10, 96.80, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (846, 36, 6, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 19.60, 0.20, 96.80, 0.00, 0.00, 29.20, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (847, 36, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.50, 22.50, 19.60, 0.30, 96.80, 0.00, 0.00, 30.60, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (848, 36, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.70, 22.70, 19.40, 0.30, 96.80, 0.00, 0.00, 30.60, 21.80, 7.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (849, 36, 9, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.00, 23.00, 19.40, 0.10, 77.40, 0.00, 0.00, 31.00, 24.10, 25.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (850, 36, 10, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.30, 23.30, 19.40, 0.10, 77.40, 0.00, 0.00, 29.90, 24.10, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (851, 36, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.50, 23.50, 19.40, 0.10, 77.40, 0.00, 0.00, 28.40, 24.10, 72.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (852, 36, 12, 7280, 1, 1, 3, 2, 1, 1, 1, 7, 2, 6, 24.70, 24.70, 19.20, 0.10, 77.40, 0.00, 0.00, 24.50, 20.40, 316.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (853, 36, 13, 7280, 1, 1, 3, 2, 1, 1, 2, 7, 2, 1, 25.20, 25.20, 19.20, 0.30, 77.40, 0.00, 0.00, 23.80, 21.60, 408.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (854, 36, 14, 7280, 1, 1, 3, 2, 1, 1, 2, 7, 2, 1, 25.50, 25.50, 19.00, 0.10, 77.40, 0.00, 0.00, 22.70, 24.10, 345.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (855, 36, 15, 7280, 1, 1, 1, 2, 1, 1, 2, 7, 2, 1, 25.50, 25.50, 18.70, 0.10, 45.20, 0.00, 0.00, 22.70, 24.10, 338.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (856, 36, 16, 7280, 1, 1, 3, 2, 1, 1, 2, 7, 1, 6, 24.80, 24.80, 18.90, 0.10, 45.20, 0.00, 0.00, 24.50, 24.10, 202.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (857, 36, 17, 7280, 1, 1, 3, 2, 1, 1, 1, 7, 1, 6, 24.20, 24.20, 18.90, 0.00, 45.20, 0.00, 0.00, 26.30, 24.10, 171.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (858, 36, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 7, 1, 1, 23.50, 23.50, 18.80, 0.00, 45.20, 0.00, 0.00, 27.00, 24.10, 49.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (859, 36, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 7, 1, 1, 23.10, 23.10, 18.70, 0.00, 45.20, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (860, 36, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.00, 23.00, 18.80, 0.00, 45.20, 0.00, 0.00, 30.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (861, 36, 21, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.00, 23.00, 18.50, 0.00, 51.60, 0.00, 0.00, 30.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (862, 36, 22, 7280, 1, 1, 1, 2, 1, 1, 1, 7, 1, 1, 22.90, 22.90, 18.60, 0.00, 51.60, 0.00, 0.00, 32.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (863, 36, 23, 7280, 1, 1, 1, 2, 1, 1, 1, 7, 1, 1, 22.80, 22.80, 18.70, 0.00, 51.60, 0.00, 0.00, 33.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (864, 36, 24, 7280, 1, 1, 1, 2, 1, 1, 1, 7, 1, 1, 22.60, 22.60, 18.50, 0.00, 51.60, 0.00, 0.00, 33.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (865, 37, 1, 7280, 1, 1, 6, 3, 4, 1, 1, 1, 1, 1, 22.80, 22.80, 20.20, 0.10, 25.80, 0.00, 0.00, 8.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (866, 37, 2, 7280, 1, 1, 2, 3, 2, 1, 1, 2, 1, 1, 22.80, 22.80, 20.20, 0.20, 25.80, 0.00, 0.00, 6.80, 22.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (867, 37, 3, 7280, 1, 1, 6, 3, 4, 1, 1, 3, 1, 4, 22.70, 22.70, 20.10, 0.20, 35.50, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (868, 37, 4, 7280, 1, 1, 6, 4, 4, 1, 1, 4, 1, 4, 22.40, 22.40, 19.90, 0.10, 35.50, 0.00, 0.00, 3.20, 22.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (869, 37, 5, 7280, 1, 1, 6, 6, 4, 1, 1, 3, 1, 3, 22.20, 22.20, 19.90, 0.10, 35.50, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (870, 37, 6, 7280, 1, 2, 5, 7, 3, 1, 1, 2, 1, 5, 21.80, 21.80, 19.90, 0.00, 35.50, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (871, 37, 7, 7280, 1, 1, 5, 7, 3, 1, 3, 1, 1, 5, 21.40, 21.40, 19.80, 0.10, 35.50, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (872, 37, 8, 7280, 1, 2, 5, 7, 6, 1, 3, 1, 1, 5, 21.40, 21.40, 20.00, 0.00, 35.50, 0.00, 0.00, 8.30, 24.10, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (873, 37, 9, 7280, 1, 2, 6, 7, 5, 1, 1, 1, 1, 3, 22.10, 22.10, 20.20, 0.00, 32.30, 0.00, 0.00, 10.10, 24.10, 190.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (874, 37, 10, 7280, 1, 2, 2, 7, 2, 1, 1, 1, 2, 1, 22.90, 22.90, 20.20, 0.00, 32.30, 0.00, 0.00, 7.20, 24.10, 336.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (875, 37, 11, 7280, 1, 2, 2, 7, 2, 1, 1, 3, 2, 1, 23.20, 23.20, 20.00, 0.00, 32.30, 0.00, 0.00, 4.30, 24.10, 259.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (876, 37, 12, 7280, 1, 2, 2, 4, 2, 1, 1, 3, 2, 1, 23.90, 23.90, 20.00, 0.00, 32.30, 0.00, 0.00, 2.90, 24.10, 420.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (877, 37, 13, 7280, 1, 1, 2, 3, 2, 1, 1, 3, 2, 1, 23.90, 23.90, 20.10, 0.00, 32.30, 0.00, 0.00, 3.20, 24.10, 407.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (878, 37, 14, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 2, 1, 23.70, 23.70, 20.30, 0.00, 32.30, 0.00, 0.00, 7.60, 24.10, 283.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (879, 37, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.00, 23.00, 20.50, 0.10, 90.30, 0.00, 0.00, 10.80, 24.10, 127.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (880, 37, 16, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.60, 22.60, 20.50, 0.00, 90.30, 0.00, 0.00, 10.80, 24.10, 67.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (881, 37, 17, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.60, 22.60, 20.50, 0.10, 90.30, 0.00, 0.00, 10.10, 24.10, 46.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (882, 37, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.70, 22.70, 20.50, 0.00, 90.30, 0.00, 0.00, 11.20, 24.10, 34.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (883, 37, 19, 7280, 1, 1, 3, 1, 1, 1, 1, 1, 1, 6, 22.70, 22.70, 20.50, 0.00, 90.30, 0.00, 0.00, 17.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (884, 37, 20, 7280, 1, 1, 3, 1, 1, 1, 1, 1, 1, 6, 22.70, 22.70, 20.50, 0.00, 90.30, 0.00, 0.00, 19.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (885, 37, 21, 7280, 1, 2, 6, 1, 4, 1, 1, 1, 1, 6, 22.80, 22.80, 20.60, 0.00, 12.90, 0.00, 0.00, 20.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (886, 37, 22, 7280, 1, 1, 6, 1, 4, 1, 1, 1, 1, 3, 22.90, 22.90, 20.80, 0.10, 12.90, 0.00, 0.00, 17.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (887, 37, 23, 7280, 1, 1, 6, 1, 4, 1, 1, 2, 1, 3, 22.90, 22.90, 20.80, 0.10, 12.90, 0.00, 0.00, 18.70, 23.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (888, 37, 24, 7280, 1, 1, 6, 1, 4, 1, 1, 1, 1, 3, 22.70, 22.70, 20.70, 0.10, 12.90, 0.00, 0.00, 16.90, 23.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (889, 38, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 22.00, 22.00, 19.70, 0.00, 0.00, 0.00, 0.00, 15.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (890, 38, 2, 7280, 1, 2, 6, 2, 4, 1, 1, 1, 1, 3, 22.20, 22.20, 19.80, 0.00, 0.00, 0.00, 0.00, 17.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (891, 38, 3, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 21.90, 21.90, 19.70, 0.10, 96.80, 0.00, 0.00, 15.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (892, 38, 4, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 3, 21.50, 21.50, 19.70, 0.00, 96.80, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (893, 38, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.80, 21.80, 19.90, 0.20, 96.80, 0.00, 0.00, 21.20, 22.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (894, 38, 6, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 22.10, 22.10, 20.00, 0.30, 96.80, 0.00, 0.00, 23.00, 13.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (895, 38, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 22.40, 22.40, 20.00, 0.60, 96.80, 0.00, 0.00, 24.10, 12.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (896, 38, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.50, 22.50, 19.90, 0.40, 96.80, 0.00, 0.00, 24.80, 15.20, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (897, 38, 9, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.70, 22.70, 19.90, 0.40, 77.40, 0.00, 0.00, 24.80, 15.40, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (898, 38, 10, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.00, 23.00, 19.90, 0.40, 77.40, 0.00, 0.00, 22.70, 17.60, 41.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (899, 38, 11, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 6, 23.30, 23.30, 19.90, 0.20, 77.40, 0.00, 0.00, 20.90, 23.10, 55.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (900, 38, 12, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 2, 3, 24.90, 24.90, 19.60, 0.10, 77.40, 0.00, 0.00, 15.10, 23.00, 363.00, 1.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (901, 38, 13, 7280, 1, 1, 3, 3, 1, 1, 2, 5, 3, 3, 26.20, 26.20, 19.30, 0.30, 77.40, 0.00, 0.00, 13.30, 21.60, 589.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (902, 38, 14, 7280, 1, 1, 3, 3, 1, 1, 2, 5, 3, 3, 26.70, 26.70, 19.00, 0.10, 77.40, 0.00, 0.00, 12.60, 24.10, 581.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (903, 38, 15, 7280, 1, 1, 3, 2, 1, 1, 2, 5, 2, 6, 26.60, 26.60, 19.00, 0.10, 45.20, 0.00, 0.00, 13.70, 24.00, 451.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (904, 38, 16, 7280, 1, 1, 3, 2, 1, 1, 2, 5, 2, 1, 25.70, 25.70, 19.10, 0.20, 45.20, 0.00, 0.00, 17.30, 23.10, 268.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (905, 38, 17, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 1, 24.80, 24.80, 19.40, 0.00, 45.20, 0.00, 0.00, 19.40, 24.10, 95.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (906, 38, 18, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 24.10, 24.10, 19.60, 0.00, 45.20, 0.00, 0.00, 23.00, 24.10, 48.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (907, 38, 19, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.40, 23.40, 19.70, 0.00, 45.20, 0.00, 0.00, 24.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (908, 38, 20, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.20, 23.20, 19.60, 0.00, 45.20, 0.00, 0.00, 24.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (909, 38, 21, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.00, 23.00, 19.40, 0.10, 51.60, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (910, 38, 22, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.00, 23.00, 19.30, 0.00, 51.60, 0.00, 0.00, 27.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (911, 38, 23, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.90, 22.90, 19.10, 0.00, 51.60, 0.00, 0.00, 29.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (912, 38, 24, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.60, 22.60, 19.20, 0.00, 51.60, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (913, 39, 1, 7280, 1, 2, 2, 4, 2, 1, 1, 2, 1, 1, 24.30, 24.30, 20.70, 0.00, 0.00, 0.00, 0.00, 19.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (914, 39, 2, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 24.10, 24.10, 20.60, 0.00, 0.00, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (915, 39, 3, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 23.90, 23.90, 20.60, 0.00, 3.20, 0.00, 0.00, 14.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (916, 39, 4, 7280, 1, 2, 2, 4, 2, 1, 1, 2, 1, 1, 23.80, 23.80, 20.50, 0.00, 3.20, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (917, 39, 5, 7280, 1, 2, 2, 4, 2, 1, 1, 2, 1, 1, 23.90, 23.90, 20.40, 0.00, 3.20, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (918, 39, 6, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 23.90, 23.90, 20.30, 0.00, 3.20, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (919, 39, 7, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 23.80, 23.80, 20.20, 0.00, 3.20, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (920, 39, 8, 7280, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1, 24.60, 24.60, 20.80, 0.00, 3.20, 0.00, 0.00, 17.60, 24.10, 61.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (921, 39, 9, 7280, 1, 2, 6, 4, 5, 1, 1, 2, 1, 6, 26.10, 26.10, 21.30, 0.00, 9.70, 0.00, 0.00, 20.20, 24.10, 224.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (922, 39, 10, 7280, 1, 2, 6, 5, 5, 1, 1, 5, 2, 4, 27.90, 30.40, 22.00, 0.00, 9.70, 0.00, 0.00, 24.80, 24.10, 477.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (923, 39, 11, 7280, 1, 2, 5, 5, 6, 1, 2, 2, 3, 5, 29.20, 32.40, 22.30, 0.00, 9.70, 0.00, 0.00, 29.20, 24.10, 677.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (924, 39, 12, 7280, 1, 2, 6, 5, 5, 1, 2, 7, 4, 1, 29.80, 33.30, 22.50, 0.00, 9.70, 0.00, 0.00, 29.50, 24.10, 796.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (925, 39, 13, 7280, 1, 2, 2, 5, 2, 1, 2, 7, 4, 1, 30.00, 33.60, 22.50, 0.00, 9.70, 0.00, 0.00, 30.20, 24.10, 824.00, 3.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (926, 39, 14, 7280, 1, 2, 6, 5, 5, 1, 2, 7, 4, 3, 29.70, 33.30, 22.60, 0.00, 9.70, 0.00, 0.00, 31.00, 24.10, 771.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (927, 39, 15, 7280, 1, 2, 6, 5, 5, 1, 2, 7, 2, 6, 28.80, 32.10, 22.60, 0.00, 16.10, 0.00, 0.00, 29.20, 24.10, 542.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (928, 39, 16, 7280, 1, 2, 6, 5, 5, 1, 1, 7, 2, 2, 27.60, 30.30, 22.60, 0.00, 16.10, 0.00, 0.00, 28.10, 24.10, 317.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (929, 39, 17, 7280, 1, 1, 2, 5, 2, 1, 1, 2, 1, 1, 26.70, 26.70, 22.60, 0.10, 16.10, 0.00, 0.00, 27.70, 24.10, 199.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (930, 39, 18, 7280, 1, 2, 2, 5, 2, 1, 1, 5, 1, 1, 25.90, 25.90, 22.60, 0.00, 16.10, 0.00, 0.00, 27.00, 24.10, 77.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (931, 39, 19, 7280, 1, 2, 2, 5, 2, 1, 1, 5, 1, 1, 25.40, 25.40, 22.30, 0.00, 16.10, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (932, 39, 20, 7280, 1, 1, 6, 5, 4, 1, 1, 5, 1, 1, 25.30, 25.30, 22.10, 0.10, 16.10, 0.00, 0.00, 25.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (933, 39, 21, 7280, 1, 1, 2, 5, 2, 1, 1, 5, 1, 1, 24.70, 24.70, 22.20, 0.10, 0.00, 0.00, 0.00, 22.30, 18.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (934, 39, 22, 7280, 1, 2, 2, 5, 2, 1, 1, 5, 1, 1, 25.00, 25.00, 22.20, 0.00, 0.00, 0.00, 0.00, 23.80, 20.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (935, 39, 23, 7280, 1, 1, 2, 5, 2, 1, 1, 5, 1, 1, 24.90, 24.90, 22.20, 0.10, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (936, 39, 24, 7280, 1, 2, 2, 5, 2, 1, 1, 5, 1, 1, 24.80, 24.80, 22.20, 0.00, 0.00, 0.00, 0.00, 22.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (937, 40, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.30, 22.30, 17.80, 0.00, 6.50, 0.00, 0.00, 33.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (938, 40, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.20, 22.20, 17.80, 0.00, 6.50, 0.00, 0.00, 31.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (939, 40, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.00, 22.00, 17.80, 0.10, 100.00, 0.00, 0.00, 30.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (940, 40, 4, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.80, 21.80, 17.80, 0.00, 100.00, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (941, 40, 5, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.60, 21.60, 17.80, 0.10, 100.00, 0.00, 0.00, 22.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (942, 40, 6, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.50, 21.50, 17.80, 0.10, 100.00, 0.00, 0.00, 20.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (943, 40, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.30, 21.30, 17.90, 0.10, 100.00, 0.00, 0.00, 22.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (944, 40, 8, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 21.00, 21.00, 17.90, 0.10, 100.00, 0.00, 0.00, 26.60, 24.10, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (945, 40, 9, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 20.80, 20.80, 17.90, 0.10, 96.80, 0.00, 0.00, 26.30, 24.10, 7.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (946, 40, 10, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 21.50, 21.50, 17.90, 0.10, 96.80, 0.00, 0.00, 18.00, 24.10, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (947, 40, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.40, 21.40, 18.00, 0.10, 96.80, 0.00, 0.00, 15.50, 24.00, 13.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (948, 40, 12, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 20.50, 20.50, 18.20, 1.00, 96.80, 0.00, 0.00, 11.90, 8.90, 14.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (949, 40, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.20, 20.20, 18.30, 0.80, 96.80, 0.00, 0.00, 9.40, 19.10, 17.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (950, 40, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 20.30, 20.30, 18.40, 0.30, 96.80, 0.00, 0.00, 5.80, 24.10, 17.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (951, 40, 15, 7280, 1, 1, 1, 4, 1, 1, 1, 3, 1, 1, 20.20, 20.20, 18.50, 0.40, 87.10, 0.00, 0.00, 3.60, 19.80, 19.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (952, 40, 16, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 19.90, 19.90, 18.60, 0.50, 87.10, 0.00, 0.00, 5.00, 12.50, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (953, 40, 17, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 19.70, 19.70, 18.70, 0.90, 87.10, 0.00, 0.00, 7.20, 12.00, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (954, 40, 18, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 19.80, 19.80, 18.70, 0.40, 87.10, 0.00, 0.00, 7.20, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (955, 40, 19, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 19.90, 19.90, 18.80, 0.10, 87.10, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (956, 40, 20, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 19.80, 19.80, 18.90, 0.60, 87.10, 0.00, 0.00, 4.30, 8.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (957, 40, 21, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.70, 19.70, 18.90, 1.20, 93.50, 0.00, 0.00, 6.10, 9.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (958, 40, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 18.80, 1.30, 93.50, 0.00, 0.00, 4.70, 9.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (959, 40, 23, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.40, 19.40, 18.80, 1.80, 93.50, 0.00, 0.00, 5.40, 9.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (960, 40, 24, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 19.20, 19.20, 18.60, 1.50, 93.50, 0.00, 0.00, 7.20, 5.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (961, 41, 1, 7280, 1, 1, 3, 7, 1, 1, 3, 3, 1, 6, 22.20, 22.20, 21.10, 0.10, 48.40, 0.00, 0.00, 7.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (962, 41, 2, 7280, 1, 1, 3, 7, 1, 1, 3, 3, 1, 3, 22.10, 22.10, 20.90, 0.00, 48.40, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (963, 41, 3, 7280, 1, 1, 3, 7, 1, 1, 3, 3, 1, 6, 21.90, 21.90, 20.80, 0.00, 58.10, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (964, 41, 4, 7280, 1, 1, 3, 7, 1, 1, 3, 3, 1, 1, 22.00, 22.00, 20.90, 0.00, 58.10, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (965, 41, 5, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.10, 22.10, 20.90, 0.00, 58.10, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (966, 41, 6, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.20, 22.20, 21.00, 0.00, 58.10, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (967, 41, 7, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.20, 22.20, 21.10, 0.10, 58.10, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (968, 41, 8, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.30, 22.30, 21.30, 0.10, 58.10, 0.00, 0.00, 7.90, 24.10, 6.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (969, 41, 9, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 22.50, 22.50, 21.50, 0.00, 93.50, 0.00, 0.00, 18.00, 20.80, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (970, 41, 10, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.50, 22.50, 21.60, 0.20, 93.50, 0.00, 0.00, 16.90, 23.40, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (971, 41, 11, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.60, 22.60, 21.80, 0.10, 93.50, 0.00, 0.00, 15.80, 15.80, 38.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (972, 41, 12, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.90, 22.90, 21.90, 0.10, 93.50, 0.00, 0.00, 16.20, 11.30, 54.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (973, 41, 13, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 23.20, 23.20, 22.10, 0.10, 93.50, 0.00, 0.00, 18.70, 10.80, 64.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (974, 41, 14, 7280, 1, 1, 1, 4, 1, 1, 3, 1, 1, 1, 23.50, 23.50, 22.40, 0.10, 93.50, 0.00, 0.00, 21.20, 10.50, 67.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (975, 41, 15, 7280, 1, 1, 1, 4, 1, 1, 3, 1, 1, 1, 23.60, 23.60, 22.50, 0.20, 96.80, 0.00, 0.00, 22.70, 9.90, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (976, 41, 16, 7280, 1, 1, 3, 4, 1, 1, 3, 1, 1, 1, 23.80, 23.80, 22.70, 0.30, 96.80, 0.00, 0.00, 25.20, 11.30, 85.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (977, 41, 17, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.70, 23.70, 22.60, 0.40, 96.80, 0.00, 0.00, 27.00, 15.40, 64.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (978, 41, 18, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.40, 23.40, 22.50, 0.40, 96.80, 0.00, 0.00, 26.30, 18.20, 33.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (979, 41, 19, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.10, 23.10, 22.40, 0.40, 96.80, 0.00, 0.00, 27.40, 22.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (980, 41, 20, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.20, 23.20, 22.40, 0.40, 96.80, 0.00, 0.00, 28.10, 13.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (981, 41, 21, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.20, 23.20, 22.40, 0.50, 71.00, 0.00, 0.00, 28.10, 13.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (982, 41, 22, 7280, 1, 1, 3, 5, 1, 1, 3, 1, 1, 1, 23.20, 23.20, 22.30, 0.30, 71.00, 0.00, 0.00, 28.80, 13.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (983, 41, 23, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.10, 23.10, 22.30, 0.30, 71.00, 0.00, 0.00, 28.40, 12.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (984, 41, 24, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 23.00, 23.00, 22.20, 0.40, 71.00, 0.00, 0.00, 25.60, 12.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (985, 42, 1, 7280, 1, 2, 6, 4, 4, 1, 3, 3, 1, 6, 20.50, 20.50, 18.90, 0.00, 41.90, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (986, 42, 2, 7280, 1, 2, 2, 4, 2, 1, 3, 2, 1, 1, 20.60, 20.60, 19.10, 0.00, 41.90, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (987, 42, 3, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 20.60, 20.60, 19.30, 0.00, 93.50, 0.00, 0.00, 8.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (988, 42, 4, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 20.40, 20.40, 19.20, 0.00, 93.50, 0.00, 0.00, 9.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (989, 42, 5, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 20.40, 20.40, 19.20, 0.10, 93.50, 0.00, 0.00, 7.90, 23.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (990, 42, 6, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 20.40, 20.40, 19.10, 0.00, 93.50, 0.00, 0.00, 5.80, 23.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (991, 42, 7, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 20.40, 20.40, 19.10, 0.00, 93.50, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (992, 42, 8, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 20.50, 20.50, 19.20, 0.00, 93.50, 0.00, 0.00, 1.80, 24.10, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (993, 42, 9, 7280, 1, 1, 1, 8, 1, 1, 3, 4, 1, 1, 20.90, 20.90, 19.50, 0.10, 100.00, 0.00, 0.00, 3.20, 23.70, 24.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (994, 42, 10, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 21.70, 21.70, 20.10, 0.20, 100.00, 0.00, 0.00, 10.40, 23.60, 55.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (995, 42, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 22.40, 22.40, 20.50, 0.20, 100.00, 0.00, 0.00, 18.00, 17.20, 83.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (996, 42, 12, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 1, 23.00, 23.00, 20.60, 0.20, 100.00, 0.00, 0.00, 20.90, 23.30, 163.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (997, 42, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 2, 1, 23.30, 23.30, 20.60, 0.40, 100.00, 0.00, 0.00, 22.00, 21.10, 281.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (998, 42, 14, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.10, 23.10, 20.60, 0.20, 100.00, 0.00, 0.00, 22.00, 20.10, 219.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (999, 42, 15, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 2, 3, 23.30, 23.30, 20.60, 0.20, 61.30, 0.00, 0.00, 21.60, 23.80, 250.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1000, 42, 16, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 2, 6, 23.60, 23.60, 20.60, 0.20, 61.30, 0.00, 0.00, 21.60, 23.20, 349.00, 1.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1001, 42, 17, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 1, 23.10, 23.10, 20.70, 0.30, 61.30, 0.00, 0.00, 22.70, 22.50, 175.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1002, 42, 18, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 6, 22.50, 22.50, 20.60, 0.10, 61.30, 0.00, 0.00, 22.00, 22.70, 58.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1003, 42, 19, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 6, 22.00, 22.00, 20.50, 0.20, 61.30, 0.00, 0.00, 20.90, 21.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1004, 42, 20, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 4, 22.00, 22.00, 20.50, 0.30, 61.30, 0.00, 0.00, 21.60, 18.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1005, 42, 21, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 2, 21.50, 21.50, 20.20, 0.20, 67.70, 0.00, 0.00, 21.20, 18.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1006, 42, 22, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 21.40, 21.40, 20.10, 0.20, 67.70, 0.00, 0.00, 20.50, 19.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1007, 42, 23, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 2, 21.80, 21.80, 20.30, 0.30, 67.70, 0.00, 0.00, 21.60, 22.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1008, 42, 24, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 1, 21.70, 21.70, 20.30, 0.20, 67.70, 0.00, 0.00, 20.20, 18.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1009, 43, 1, 7280, 1, 1, 3, 6, 1, 1, 3, 3, 1, 6, 22.40, 22.40, 20.80, 0.20, 100.00, 0.00, 0.00, 2.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1010, 43, 2, 7280, 1, 1, 3, 7, 1, 1, 3, 3, 1, 1, 22.30, 22.30, 20.70, 0.30, 100.00, 0.00, 0.00, 2.90, 21.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1011, 43, 3, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.40, 22.40, 20.80, 0.20, 100.00, 0.00, 0.00, 2.90, 22.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1012, 43, 4, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.40, 22.40, 20.90, 0.30, 100.00, 0.00, 0.00, 2.90, 21.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1013, 43, 5, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.40, 22.40, 21.00, 0.30, 100.00, 0.00, 0.00, 2.90, 20.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1014, 43, 6, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.40, 22.40, 21.10, 0.30, 100.00, 0.00, 0.00, 4.00, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1015, 43, 7, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 22.40, 22.40, 21.20, 0.70, 100.00, 0.00, 0.00, 6.80, 13.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1016, 43, 8, 7280, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 22.50, 22.50, 21.40, 0.80, 100.00, 0.00, 0.00, 13.00, 9.90, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1017, 43, 9, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 22.80, 22.80, 21.40, 0.70, 100.00, 0.00, 0.00, 18.00, 12.20, 14.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1018, 43, 10, 7280, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 23.20, 23.20, 21.60, 0.50, 100.00, 0.00, 0.00, 18.70, 12.90, 39.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1019, 43, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.50, 23.50, 21.60, 0.50, 100.00, 0.00, 0.00, 16.90, 13.50, 63.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1020, 43, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 23.60, 23.60, 21.60, 0.30, 100.00, 0.00, 0.00, 14.00, 17.60, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1021, 43, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 23.50, 23.50, 21.60, 0.40, 100.00, 0.00, 0.00, 12.60, 16.50, 73.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1022, 43, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 23.40, 23.40, 21.50, 0.30, 100.00, 0.00, 0.00, 12.20, 17.00, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1023, 43, 15, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.30, 23.30, 21.40, 0.30, 100.00, 0.00, 0.00, 13.00, 17.90, 64.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1024, 43, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 23.20, 23.20, 21.30, 0.30, 100.00, 0.00, 0.00, 12.60, 19.30, 52.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1025, 43, 17, 7280, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 22.90, 22.90, 21.20, 0.30, 100.00, 0.00, 0.00, 12.60, 15.60, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1026, 43, 18, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 22.60, 22.60, 21.20, 0.40, 100.00, 0.00, 0.00, 13.00, 15.30, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1027, 43, 19, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 22.50, 22.50, 21.10, 0.30, 100.00, 0.00, 0.00, 15.80, 12.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1028, 43, 20, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 22.40, 22.40, 21.10, 0.60, 100.00, 0.00, 0.00, 17.60, 12.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1029, 43, 21, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 22.30, 22.30, 21.10, 0.50, 96.80, 0.00, 0.00, 13.70, 11.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1030, 43, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 22.30, 22.30, 21.10, 0.50, 96.80, 0.00, 0.00, 7.20, 12.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1031, 43, 23, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 22.20, 22.20, 21.00, 0.30, 96.80, 0.00, 0.00, 2.20, 15.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1032, 43, 24, 7280, 1, 1, 1, 6, 1, 1, 3, 2, 1, 1, 21.90, 21.90, 21.00, 0.30, 96.80, 0.00, 0.00, 5.40, 21.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1033, 44, 1, 7280, 1, 1, 3, 7, 1, 1, 3, 1, 1, 1, 21.50, 21.50, 20.30, 0.00, 100.00, 0.00, 0.00, 6.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1034, 44, 2, 7280, 1, 1, 1, 7, 1, 1, 3, 1, 1, 1, 21.40, 21.40, 20.30, 0.00, 100.00, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1035, 44, 3, 7280, 1, 1, 1, 7, 1, 1, 3, 1, 1, 1, 21.30, 21.30, 20.30, 0.00, 100.00, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1036, 44, 4, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.40, 21.40, 20.30, 0.00, 100.00, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1037, 44, 5, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.40, 21.40, 20.30, 0.10, 100.00, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1038, 44, 6, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.40, 21.40, 20.40, 0.10, 100.00, 0.00, 0.00, 5.40, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1039, 44, 7, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.30, 21.30, 20.60, 0.40, 100.00, 0.00, 0.00, 6.50, 15.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1040, 44, 8, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.20, 21.20, 20.80, 0.80, 100.00, 0.00, 0.00, 7.60, 12.70, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1041, 44, 9, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 21.40, 21.40, 21.00, 0.80, 100.00, 0.00, 0.00, 7.60, 15.90, 6.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1042, 44, 10, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.60, 21.60, 21.20, 0.50, 100.00, 0.00, 0.00, 9.00, 16.40, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1043, 44, 11, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.80, 21.80, 21.30, 0.40, 100.00, 0.00, 0.00, 10.10, 21.40, 21.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1044, 44, 12, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.00, 22.00, 21.40, 0.40, 100.00, 0.00, 0.00, 9.40, 17.60, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1045, 44, 13, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 22.10, 22.10, 21.50, 0.50, 100.00, 0.00, 0.00, 9.00, 15.90, 26.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1046, 44, 14, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.20, 22.20, 21.50, 0.30, 100.00, 0.00, 0.00, 8.60, 13.30, 32.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1047, 44, 15, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.30, 22.30, 21.40, 0.30, 100.00, 0.00, 0.00, 8.60, 18.40, 31.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1048, 44, 16, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.10, 22.10, 21.30, 0.20, 100.00, 0.00, 0.00, 7.20, 24.10, 21.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1049, 44, 17, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 22.00, 22.00, 21.20, 0.10, 100.00, 0.00, 0.00, 5.40, 24.10, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1050, 44, 18, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 21.80, 21.80, 21.10, 0.20, 100.00, 0.00, 0.00, 4.70, 24.00, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1051, 44, 19, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 21.70, 21.70, 21.10, 0.30, 100.00, 0.00, 0.00, 6.10, 16.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1052, 44, 20, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.60, 21.60, 21.10, 0.60, 100.00, 0.00, 0.00, 7.20, 11.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1053, 44, 21, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.50, 21.50, 21.20, 0.80, 93.50, 0.00, 0.00, 9.70, 10.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1054, 44, 22, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.50, 21.50, 21.30, 0.80, 93.50, 0.00, 0.00, 9.40, 4.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1055, 44, 23, 7280, 1, 1, 1, 4, 1, 1, 3, 2, 1, 1, 21.50, 21.50, 21.30, 0.70, 93.50, 0.00, 0.00, 9.40, 4.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1056, 44, 24, 7280, 1, 1, 1, 7, 1, 1, 3, 2, 1, 1, 21.60, 21.60, 21.20, 0.70, 93.50, 0.00, 0.00, 7.90, 9.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1057, 45, 1, 7280, 1, 2, 5, 3, 3, 1, 1, 1, 1, 5, 18.40, 18.40, 16.20, 0.00, 0.00, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1058, 45, 2, 7280, 1, 2, 6, 3, 4, 1, 1, 1, 1, 6, 18.40, 18.40, 16.20, 0.00, 0.00, 0.00, 0.00, 13.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1059, 45, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 19.20, 19.20, 16.50, 0.00, 25.80, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1060, 45, 4, 7280, 1, 2, 6, 3, 4, 1, 1, 1, 1, 4, 19.50, 19.50, 16.90, 0.00, 25.80, 0.00, 0.00, 18.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1061, 45, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 18.30, 18.30, 17.20, 0.00, 25.80, 0.00, 0.00, 14.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1062, 45, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 19.10, 19.10, 17.50, 0.00, 25.80, 0.00, 0.00, 20.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1063, 45, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 19.40, 19.40, 17.90, 0.00, 25.80, 0.00, 0.00, 23.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1064, 45, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 19.70, 19.70, 18.20, 0.00, 25.80, 0.00, 0.00, 20.20, 24.10, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1065, 45, 9, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 20.20, 20.20, 18.50, 0.10, 32.30, 0.00, 0.00, 19.80, 22.80, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1066, 45, 10, 7280, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 20.70, 20.70, 18.50, 0.10, 32.30, 0.00, 0.00, 25.90, 23.40, 44.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1067, 45, 11, 7280, 1, 1, 6, 3, 5, 1, 1, 2, 1, 6, 21.10, 21.10, 18.50, 0.10, 32.30, 0.00, 0.00, 26.60, 22.70, 53.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1068, 45, 12, 7280, 1, 1, 2, 3, 2, 1, 1, 5, 2, 1, 23.20, 23.20, 18.40, 0.20, 32.30, 0.00, 0.00, 25.60, 24.00, 449.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1069, 45, 13, 7280, 1, 1, 2, 3, 2, 1, 1, 5, 1, 1, 21.50, 21.50, 18.40, 0.10, 32.30, 0.00, 0.00, 25.20, 24.10, 78.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1070, 45, 14, 7280, 1, 1, 2, 3, 2, 1, 1, 5, 1, 1, 22.00, 22.00, 18.20, 0.10, 32.30, 0.00, 0.00, 25.90, 24.10, 129.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1071, 45, 15, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 1, 6, 21.90, 21.90, 18.10, 0.00, 0.00, 0.00, 0.00, 27.70, 24.10, 115.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1072, 45, 16, 7280, 1, 2, 6, 3, 5, 1, 1, 5, 2, 4, 23.00, 23.00, 17.70, 0.00, 0.00, 0.00, 0.00, 24.80, 24.10, 342.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1073, 45, 17, 7280, 1, 1, 6, 3, 5, 1, 1, 5, 1, 4, 22.70, 22.70, 17.70, 0.10, 0.00, 0.00, 0.00, 23.40, 24.10, 249.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1074, 45, 18, 7280, 1, 2, 5, 3, 6, 1, 1, 5, 1, 5, 21.20, 21.20, 17.80, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 77.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1075, 45, 19, 7280, 1, 2, 5, 3, 3, 1, 1, 1, 1, 5, 19.60, 19.60, 17.60, 0.00, 0.00, 0.00, 0.00, 16.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1076, 45, 20, 7280, 1, 2, 6, 3, 4, 1, 3, 1, 1, 1, 19.00, 19.00, 17.40, 0.00, 0.00, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1077, 45, 21, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 19.70, 19.70, 17.10, 0.00, 0.00, 0.00, 0.00, 22.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1078, 45, 22, 7280, 1, 2, 2, 3, 2, 1, 1, 2, 1, 1, 20.40, 20.40, 16.70, 0.00, 0.00, 0.00, 0.00, 28.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1079, 45, 23, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 20.60, 20.60, 16.10, 0.00, 0.00, 0.00, 0.00, 31.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1080, 45, 24, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 20.50, 20.50, 15.60, 0.00, 0.00, 0.00, 0.00, 31.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1081, 46, 1, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 21.00, 21.00, 20.10, 0.10, 83.90, 0.00, 0.00, 2.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1082, 46, 2, 7280, 1, 1, 3, 4, 1, 1, 3, 3, 1, 4, 20.50, 20.50, 19.80, 0.00, 83.90, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1083, 46, 3, 7280, 1, 1, 3, 4, 1, 1, 3, 3, 1, 3, 20.40, 20.40, 19.80, 0.00, 100.00, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1084, 46, 4, 7280, 1, 1, 3, 4, 1, 1, 3, 3, 1, 3, 20.30, 20.30, 19.80, 0.00, 100.00, 0.00, 0.00, 2.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1085, 46, 5, 7280, 1, 1, 3, 4, 1, 1, 3, 3, 1, 3, 20.30, 20.30, 19.80, 0.00, 100.00, 0.00, 0.00, 2.20, 19.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1086, 46, 6, 7280, 1, 1, 3, 4, 1, 1, 3, 4, 1, 1, 20.40, 20.40, 19.80, 0.10, 100.00, 0.00, 0.00, 1.40, 13.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1087, 46, 7, 7280, 1, 1, 1, 3, 1, 1, 3, 4, 1, 1, 20.70, 20.70, 20.00, 0.00, 100.00, 0.00, 0.00, 1.40, 16.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1088, 46, 8, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 21.20, 21.20, 20.30, 0.10, 100.00, 0.00, 0.00, 3.60, 24.10, 15.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1089, 46, 9, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 21.80, 21.80, 20.40, 0.00, 96.80, 0.00, 0.00, 11.90, 24.10, 51.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1090, 46, 10, 7280, 1, 1, 3, 2, 1, 1, 3, 2, 1, 6, 22.40, 22.40, 20.70, 0.00, 96.80, 0.00, 0.00, 18.40, 24.10, 111.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1091, 46, 11, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 2, 6, 24.10, 24.10, 21.00, 0.30, 96.80, 0.00, 0.00, 21.20, 22.70, 375.00, 1.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1092, 46, 12, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 2, 1, 25.10, 25.10, 21.10, 0.20, 96.80, 0.00, 0.00, 20.90, 20.00, 484.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1093, 46, 13, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 2, 6, 24.80, 24.80, 21.20, 0.20, 96.80, 0.00, 0.00, 21.60, 24.00, 345.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1094, 46, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 2, 1, 25.00, 25.00, 21.10, 0.30, 96.80, 0.00, 0.00, 22.00, 17.40, 462.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1095, 46, 15, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 2, 6, 24.00, 24.00, 21.20, 0.20, 64.50, 0.00, 0.00, 23.00, 23.40, 265.00, 1.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1096, 46, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.40, 23.40, 21.10, 0.30, 64.50, 0.00, 0.00, 23.40, 19.00, 216.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1097, 46, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 22.70, 22.70, 20.90, 0.10, 64.50, 0.00, 0.00, 25.60, 21.90, 94.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1098, 46, 18, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 22.10, 22.10, 20.60, 0.20, 64.50, 0.00, 0.00, 26.30, 24.10, 23.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1099, 46, 19, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 21.80, 21.80, 20.60, 0.10, 64.50, 0.00, 0.00, 23.00, 23.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1100, 46, 20, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 21.80, 21.80, 20.60, 0.10, 64.50, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1101, 46, 21, 7280, 1, 1, 1, 2, 1, 1, 3, 2, 1, 1, 21.70, 21.70, 20.60, 0.00, 48.40, 0.00, 0.00, 21.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1102, 46, 22, 7280, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 21.60, 21.60, 20.60, 0.10, 48.40, 0.00, 0.00, 10.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1103, 46, 23, 7280, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 21.60, 21.60, 20.60, 0.00, 48.40, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1104, 46, 24, 7280, 1, 1, 3, 5, 1, 1, 3, 4, 1, 1, 21.40, 21.40, 20.50, 0.00, 48.40, 0.00, 0.00, 1.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1105, 47, 1, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.50, 0.00, 6.50, 0.00, 0.00, 47.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1106, 47, 2, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 26.00, 26.00, 22.30, 0.00, 6.50, 0.00, 0.00, 47.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1107, 47, 3, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.20, 0.00, 6.50, 0.00, 0.00, 48.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1108, 47, 4, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.20, 0.00, 6.50, 0.00, 0.00, 49.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1109, 47, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.30, 0.00, 6.50, 0.00, 0.00, 52.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1110, 47, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.30, 0.00, 6.50, 0.00, 0.00, 52.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1111, 47, 7, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 22.40, 0.00, 6.50, 0.00, 0.00, 50.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1112, 47, 8, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 26.20, 26.20, 23.00, 0.00, 6.50, 0.00, 0.00, 48.60, 24.10, 55.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1113, 47, 9, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 1, 6, 27.50, 30.70, 23.60, 0.00, 77.40, 0.00, 0.00, 43.90, 24.10, 246.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1114, 47, 10, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 2, 4, 28.70, 32.40, 23.20, 0.00, 77.40, 0.00, 0.00, 42.50, 24.10, 478.00, 1.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1115, 47, 11, 7280, 1, 1, 3, 3, 1, 1, 2, 2, 3, 6, 29.60, 33.50, 23.00, 0.00, 77.40, 0.00, 0.00, 39.60, 24.10, 675.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1116, 47, 12, 7280, 1, 1, 1, 3, 1, 1, 2, 6, 4, 1, 30.10, 34.20, 23.00, 0.00, 77.40, 0.00, 0.00, 38.20, 24.10, 789.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1117, 47, 13, 7280, 1, 1, 3, 3, 1, 1, 2, 6, 4, 4, 30.30, 34.60, 23.20, 0.00, 77.40, 0.00, 0.00, 37.10, 24.10, 808.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1118, 47, 14, 7280, 1, 1, 1, 3, 1, 1, 2, 6, 4, 1, 30.20, 34.60, 23.30, 0.10, 77.40, 0.00, 0.00, 35.60, 24.10, 826.00, 3.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1119, 47, 15, 7280, 1, 1, 3, 3, 1, 1, 2, 2, 3, 4, 29.90, 34.20, 23.30, 0.00, 67.70, 0.00, 0.00, 35.30, 24.10, 744.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1120, 47, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 7, 3, 1, 29.40, 33.50, 23.40, 0.00, 67.70, 0.00, 0.00, 34.90, 24.10, 596.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1121, 47, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 7, 2, 1, 28.10, 31.80, 23.70, 0.40, 67.70, 0.00, 0.00, 35.60, 13.90, 335.00, 1.20, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1122, 47, 18, 7280, 1, 1, 3, 3, 1, 1, 1, 7, 1, 6, 26.90, 29.60, 23.60, 0.30, 67.70, 0.00, 0.00, 38.50, 24.10, 137.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1123, 47, 19, 7280, 1, 1, 3, 3, 1, 1, 1, 5, 1, 3, 26.00, 26.00, 23.40, 0.20, 67.70, 0.00, 0.00, 38.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1124, 47, 20, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 25.70, 25.70, 23.40, 0.00, 67.70, 0.00, 0.00, 39.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1125, 47, 21, 7280, 1, 2, 2, 3, 2, 1, 1, 5, 1, 1, 25.70, 25.70, 23.40, 0.00, 19.40, 0.00, 0.00, 41.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1126, 47, 22, 7280, 1, 2, 6, 3, 4, 1, 1, 5, 1, 1, 25.80, 25.80, 23.40, 0.00, 19.40, 0.00, 0.00, 44.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1127, 47, 23, 7280, 1, 2, 2, 3, 2, 1, 1, 7, 1, 1, 25.90, 25.90, 23.50, 0.00, 19.40, 0.00, 0.00, 46.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1128, 47, 24, 7280, 1, 2, 5, 3, 3, 1, 1, 7, 1, 5, 25.90, 25.90, 23.70, 0.00, 19.40, 0.00, 0.00, 47.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1129, 48, 1, 7280, 1, 2, 6, 1, 4, 1, 1, 1, 1, 1, 17.40, 17.40, 15.60, 0.00, 9.70, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1130, 48, 2, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 17.00, 17.00, 15.70, 0.00, 9.70, 0.00, 0.00, 16.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1131, 48, 3, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 17.10, 17.10, 15.70, 0.00, 38.70, 0.00, 0.00, 15.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1132, 48, 4, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 17.00, 17.00, 15.70, 0.00, 38.70, 0.00, 0.00, 14.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1133, 48, 5, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 16.90, 16.90, 15.70, 0.00, 38.70, 0.00, 0.00, 15.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1134, 48, 6, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 16.70, 16.70, 15.80, 0.00, 38.70, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1135, 48, 7, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 16.50, 16.50, 15.80, 0.00, 38.70, 0.00, 0.00, 19.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1136, 48, 8, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 16.70, 16.70, 15.90, 0.00, 38.70, 0.00, 0.00, 19.80, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1137, 48, 9, 7280, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 17.40, 17.40, 16.10, 0.00, 45.20, 0.00, 0.00, 16.60, 24.10, 33.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1138, 48, 10, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 17.70, 17.70, 16.30, 0.10, 45.20, 0.00, 0.00, 16.60, 24.10, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1139, 48, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 18.20, 18.20, 16.30, 0.00, 45.20, 0.00, 0.00, 14.80, 24.10, 69.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1140, 48, 12, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 18.70, 18.70, 16.10, 0.00, 45.20, 0.00, 0.00, 13.30, 24.10, 93.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1141, 48, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 19.20, 19.20, 16.00, 0.10, 45.20, 0.00, 0.00, 12.60, 24.10, 133.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1142, 48, 14, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 19.00, 19.00, 15.90, 0.00, 45.20, 0.00, 0.00, 12.20, 24.10, 78.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1143, 48, 15, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 19.60, 19.60, 15.90, 0.00, 19.40, 0.00, 0.00, 11.20, 24.10, 168.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1144, 48, 16, 7280, 1, 2, 6, 2, 5, 1, 1, 1, 1, 3, 19.60, 19.60, 15.80, 0.00, 19.40, 0.00, 0.00, 11.90, 24.10, 146.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1145, 48, 17, 7280, 1, 2, 6, 2, 5, 1, 1, 1, 1, 3, 20.20, 20.20, 16.00, 0.00, 19.40, 0.00, 0.00, 13.30, 24.10, 241.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1146, 48, 18, 7280, 1, 2, 6, 2, 5, 1, 1, 1, 1, 3, 19.10, 19.10, 16.10, 0.00, 19.40, 0.00, 0.00, 13.30, 24.10, 90.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1147, 48, 19, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 6, 17.30, 17.30, 15.80, 0.00, 19.40, 0.00, 0.00, 11.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1148, 48, 20, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 17.10, 17.10, 15.60, 0.00, 19.40, 0.00, 0.00, 15.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1149, 48, 21, 7280, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 17.60, 17.60, 15.40, 0.00, 0.00, 0.00, 0.00, 14.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1150, 48, 22, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 17.20, 17.20, 15.60, 0.00, 0.00, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1151, 48, 23, 7280, 1, 1, 2, 1, 2, 1, 3, 1, 1, 1, 17.00, 17.00, 15.70, 0.00, 0.00, 0.00, 0.00, 16.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1152, 48, 24, 7280, 1, 2, 2, 1, 2, 1, 3, 1, 1, 1, 16.90, 16.90, 15.80, 0.00, 0.00, 0.00, 0.00, 15.10, 22.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1153, 49, 1, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 25.60, 25.60, 21.60, 0.10, 74.20, 0.00, 0.00, 6.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1154, 49, 2, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 25.70, 25.70, 21.50, 0.00, 74.20, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1155, 49, 3, 7280, 1, 2, 2, 5, 2, 1, 1, 2, 1, 1, 25.50, 25.50, 21.30, 0.00, 29.00, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1156, 49, 4, 7280, 1, 2, 2, 5, 2, 1, 1, 2, 1, 1, 24.80, 24.80, 21.10, 0.00, 29.00, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1157, 49, 5, 7280, 1, 2, 2, 5, 2, 1, 1, 1, 1, 1, 24.10, 24.10, 20.90, 0.00, 29.00, 0.00, 0.00, 8.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1158, 49, 6, 7280, 1, 2, 6, 5, 4, 1, 1, 1, 1, 6, 23.60, 23.60, 20.80, 0.00, 29.00, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1159, 49, 7, 7280, 1, 2, 6, 5, 4, 1, 1, 1, 1, 6, 23.20, 23.20, 20.90, 0.00, 29.00, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1160, 49, 8, 7280, 1, 2, 6, 5, 5, 1, 1, 1, 1, 1, 24.00, 24.00, 21.40, 0.00, 29.00, 0.00, 0.00, 10.40, 24.10, 46.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1161, 49, 9, 7280, 1, 2, 6, 3, 5, 1, 1, 1, 1, 2, 25.70, 25.70, 21.90, 0.00, 9.70, 0.00, 0.00, 9.40, 24.10, 203.00, 0.70, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1162, 49, 10, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 2, 1, 27.60, 30.20, 22.50, 0.00, 9.70, 0.00, 0.00, 7.90, 24.10, 452.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1163, 49, 11, 7280, 1, 2, 2, 3, 2, 1, 2, 1, 3, 1, 29.20, 32.80, 22.80, 0.00, 9.70, 0.00, 0.00, 8.30, 24.10, 618.00, 2.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1164, 49, 12, 7280, 1, 2, 2, 3, 2, 1, 2, 1, 4, 1, 30.40, 34.50, 22.90, 0.00, 9.70, 0.00, 0.00, 8.30, 24.10, 751.00, 2.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1165, 49, 13, 7280, 1, 1, 2, 3, 2, 1, 2, 1, 4, 1, 31.40, 35.80, 22.90, 0.10, 9.70, 0.00, 0.00, 8.30, 24.10, 799.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1166, 49, 14, 7280, 1, 1, 2, 3, 2, 1, 2, 1, 3, 1, 31.60, 36.10, 22.90, 0.10, 9.70, 0.00, 0.00, 8.60, 24.10, 644.00, 2.30, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1167, 49, 15, 7280, 1, 1, 1, 2, 1, 1, 2, 2, 2, 1, 30.80, 35.00, 22.90, 0.10, 48.40, 0.00, 0.00, 9.40, 24.10, 353.00, 1.30, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1168, 49, 16, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 29.50, 33.90, 23.60, 0.00, 48.40, 0.00, 0.00, 11.20, 24.10, 183.00, 0.70, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1169, 49, 17, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 28.50, 32.50, 23.80, 0.00, 48.40, 0.00, 0.00, 14.00, 24.10, 122.00, 0.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1170, 49, 18, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 27.70, 31.20, 23.80, 0.10, 48.40, 0.00, 0.00, 10.40, 24.10, 65.00, 0.20, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1171, 49, 19, 7280, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 26.70, 26.70, 23.20, 0.10, 48.40, 0.00, 0.00, 6.80, 23.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1172, 49, 20, 7280, 1, 1, 3, 1, 1, 1, 1, 1, 1, 3, 26.60, 26.60, 23.00, 0.30, 48.40, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1173, 49, 21, 7280, 1, 1, 3, 2, 1, 1, 1, 2, 1, 3, 26.50, 26.50, 22.90, 0.00, 64.50, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1174, 49, 22, 7280, 1, 1, 3, 2, 1, 1, 1, 2, 1, 6, 26.30, 26.30, 22.80, 0.00, 64.50, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1175, 49, 23, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 25.70, 25.70, 22.80, 0.00, 64.50, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1176, 49, 24, 7280, 1, 1, 4, 2, 1, 1, 1, 2, 1, 5, 25.10, 25.10, 22.90, 0.00, 64.50, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1177, 50, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 22.20, 22.20, 19.40, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1178, 50, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.40, 22.40, 19.40, 0.00, 0.00, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1179, 50, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.50, 22.50, 19.40, 0.00, 61.30, 0.00, 0.00, 25.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1180, 50, 4, 7280, 1, 1, 3, 2, 1, 1, 1, 5, 1, 3, 22.40, 22.40, 19.50, 0.00, 61.30, 0.00, 0.00, 28.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1181, 50, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.30, 22.30, 19.40, 0.10, 61.30, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1182, 50, 6, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 19.60, 0.20, 61.30, 0.00, 0.00, 29.20, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1183, 50, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.50, 22.50, 19.60, 0.30, 61.30, 0.00, 0.00, 30.60, 17.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1184, 50, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.70, 22.70, 19.40, 0.30, 61.30, 0.00, 0.00, 30.60, 21.80, 7.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1185, 50, 9, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.00, 23.00, 19.40, 0.10, 51.60, 0.00, 0.00, 31.00, 24.10, 25.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1186, 50, 10, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.30, 23.30, 19.40, 0.10, 51.60, 0.00, 0.00, 29.90, 24.10, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1187, 50, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 23.50, 23.50, 19.40, 0.10, 51.60, 0.00, 0.00, 28.40, 24.10, 72.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1188, 50, 12, 7280, 1, 1, 3, 2, 1, 1, 1, 7, 2, 6, 24.70, 24.70, 19.20, 0.10, 51.60, 0.00, 0.00, 24.50, 20.40, 316.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1189, 50, 13, 7280, 1, 1, 3, 2, 1, 1, 2, 7, 2, 1, 25.20, 25.20, 19.20, 0.30, 51.60, 0.00, 0.00, 23.80, 21.60, 408.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1190, 50, 14, 7280, 1, 1, 3, 2, 1, 1, 2, 7, 2, 1, 25.50, 25.50, 19.00, 0.10, 51.60, 0.00, 0.00, 22.70, 24.10, 345.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1191, 50, 15, 7280, 1, 1, 2, 2, 2, 1, 2, 7, 2, 1, 25.50, 25.50, 18.70, 0.10, 6.50, 0.00, 0.00, 22.70, 24.10, 338.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1192, 50, 16, 7280, 1, 1, 6, 2, 5, 1, 2, 7, 1, 6, 24.80, 24.80, 18.90, 0.10, 6.50, 0.00, 0.00, 24.50, 24.10, 202.00, 0.70, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1193, 50, 17, 7280, 1, 2, 6, 2, 5, 1, 1, 7, 1, 6, 24.20, 24.20, 18.90, 0.00, 6.50, 0.00, 0.00, 26.30, 24.10, 171.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1194, 50, 18, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 23.50, 23.50, 18.80, 0.00, 6.50, 0.00, 0.00, 27.00, 24.10, 49.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1195, 50, 19, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 23.10, 23.10, 18.70, 0.00, 6.50, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1196, 50, 20, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 23.00, 23.00, 18.80, 0.00, 6.50, 0.00, 0.00, 30.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1197, 50, 21, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 23.00, 23.00, 18.50, 0.00, 0.00, 0.00, 0.00, 30.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1198, 50, 22, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 22.90, 22.90, 18.60, 0.00, 0.00, 0.00, 0.00, 32.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1199, 50, 23, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 22.80, 22.80, 18.70, 0.00, 0.00, 0.00, 0.00, 33.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1200, 50, 24, 7280, 1, 2, 2, 2, 2, 1, 1, 7, 1, 1, 22.60, 22.60, 18.50, 0.00, 0.00, 0.00, 0.00, 33.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1201, 51, 1, 7280, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 17.40, 0.00, 0.00, 0.00, 0.00, 22.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1202, 51, 2, 7280, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 17.20, 0.00, 0.00, 0.00, 0.00, 23.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1203, 51, 3, 7280, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 20.90, 20.90, 17.00, 0.00, 3.20, 0.00, 0.00, 19.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1204, 51, 4, 7280, 1, 1, 2, 1, 2, 1, 1, 2, 1, 1, 20.70, 20.70, 16.90, 0.00, 3.20, 0.00, 0.00, 14.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1205, 51, 5, 7280, 1, 1, 6, 2, 4, 1, 1, 2, 1, 1, 20.70, 20.70, 16.80, 0.10, 3.20, 0.00, 0.00, 12.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1206, 51, 6, 7280, 1, 2, 2, 3, 2, 1, 1, 3, 1, 1, 20.50, 20.50, 16.70, 0.00, 3.20, 0.00, 0.00, 7.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1207, 51, 7, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 20.40, 20.40, 16.60, 0.00, 3.20, 0.00, 0.00, 10.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1208, 51, 8, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 20.40, 20.40, 16.40, 0.10, 3.20, 0.00, 0.00, 12.60, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1209, 51, 9, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 16.20, 0.00, 6.50, 0.00, 0.00, 12.20, 24.10, 71.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1210, 51, 10, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.10, 21.10, 16.50, 0.00, 6.50, 0.00, 0.00, 14.80, 24.10, 34.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1211, 51, 11, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 21.40, 21.40, 16.80, 0.00, 6.50, 0.00, 0.00, 13.70, 24.10, 76.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1212, 51, 12, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 17.00, 0.10, 6.50, 0.00, 0.00, 14.00, 24.10, 41.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1213, 51, 13, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 21.30, 21.30, 17.20, 0.00, 6.50, 0.00, 0.00, 13.00, 24.00, 37.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1214, 51, 14, 7280, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 20.80, 20.80, 17.30, 0.10, 6.50, 0.00, 0.00, 14.80, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1215, 51, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 20.60, 20.60, 17.50, 0.20, 45.20, 0.00, 0.00, 14.80, 24.10, 16.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1216, 51, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 20.60, 20.60, 17.40, 0.20, 45.20, 0.00, 0.00, 14.80, 24.10, 16.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1217, 51, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 20.50, 20.50, 17.30, 0.00, 45.20, 0.00, 0.00, 10.40, 24.10, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1218, 51, 18, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 20.20, 20.20, 17.30, 0.10, 45.20, 0.00, 0.00, 10.10, 24.10, 3.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1219, 51, 19, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 19.80, 19.80, 17.30, 0.20, 45.20, 0.00, 0.00, 11.50, 22.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1220, 51, 20, 7280, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 19.40, 19.40, 17.40, 0.50, 45.20, 0.00, 0.00, 7.60, 22.80, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1221, 51, 21, 7280, 1, 1, 2, 4, 2, 1, 1, 2, 1, 1, 19.10, 19.10, 17.30, 0.30, 32.30, 0.00, 0.00, 6.80, 21.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1222, 51, 22, 7280, 1, 1, 2, 4, 2, 1, 1, 3, 1, 1, 18.90, 18.90, 17.20, 0.50, 32.30, 0.00, 0.00, 7.20, 18.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1223, 51, 23, 7280, 1, 1, 2, 5, 2, 1, 1, 1, 1, 1, 18.70, 18.70, 16.80, 0.30, 32.30, 0.00, 0.00, 11.20, 22.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1224, 51, 24, 7280, 1, 1, 2, 5, 2, 1, 1, 1, 1, 1, 18.10, 18.10, 16.10, 0.60, 32.30, 0.00, 0.00, 11.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1225, 52, 1, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 20.90, 20.90, 20.30, 0.00, 90.30, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1226, 52, 2, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 6, 20.70, 20.70, 20.10, 0.00, 90.30, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1227, 52, 3, 7280, 1, 1, 4, 1, 1, 1, 3, 3, 1, 5, 20.60, 20.60, 20.00, 0.00, 100.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1228, 52, 4, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 4, 20.50, 20.50, 19.90, 0.10, 100.00, 0.00, 0.00, 4.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1229, 52, 5, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 3, 20.50, 20.50, 19.80, 0.00, 100.00, 0.00, 0.00, 5.80, 23.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1230, 52, 6, 7280, 1, 1, 3, 1, 1, 1, 3, 3, 1, 6, 20.60, 20.60, 19.90, 0.10, 100.00, 0.00, 0.00, 7.20, 23.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1231, 52, 7, 7280, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 21.00, 21.00, 20.20, 0.10, 100.00, 0.00, 0.00, 8.30, 11.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1232, 52, 8, 7280, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 21.50, 21.50, 20.60, 0.10, 100.00, 0.00, 0.00, 9.70, 22.80, 13.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1233, 52, 9, 7280, 1, 1, 3, 1, 1, 1, 3, 1, 1, 1, 22.20, 22.20, 20.90, 0.20, 90.30, 0.00, 0.00, 12.20, 24.10, 68.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1234, 52, 10, 7280, 1, 1, 3, 2, 1, 1, 1, 1, 1, 1, 23.10, 23.10, 21.20, 0.00, 90.30, 0.00, 0.00, 16.20, 23.30, 166.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1235, 52, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 23.90, 23.90, 21.30, 0.10, 90.30, 0.00, 0.00, 22.30, 24.10, 247.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1236, 52, 12, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 2, 1, 24.30, 24.30, 21.20, 0.00, 90.30, 0.00, 0.00, 23.80, 24.10, 315.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1237, 52, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 24.20, 24.20, 21.30, 0.20, 90.30, 0.00, 0.00, 22.30, 23.60, 229.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1238, 52, 14, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 24.20, 24.20, 21.40, 0.10, 90.30, 0.00, 0.00, 22.00, 23.20, 235.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1239, 52, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 23.80, 23.80, 21.30, 0.10, 77.40, 0.00, 0.00, 23.40, 21.90, 167.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1240, 52, 16, 7280, 1, 1, 1, 3, 1, 1, 1, 5, 1, 1, 23.20, 23.20, 21.20, 0.20, 77.40, 0.00, 0.00, 27.00, 24.10, 104.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1241, 52, 17, 7280, 1, 1, 1, 3, 1, 1, 3, 5, 1, 1, 22.70, 22.70, 21.00, 0.10, 77.40, 0.00, 0.00, 29.50, 24.10, 37.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1242, 52, 18, 7280, 1, 1, 1, 2, 1, 1, 3, 5, 1, 1, 22.50, 22.50, 20.80, 0.20, 77.40, 0.00, 0.00, 30.60, 24.10, 14.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1243, 52, 19, 7280, 1, 1, 1, 2, 1, 1, 3, 5, 1, 1, 22.30, 22.30, 20.80, 0.00, 77.40, 0.00, 0.00, 30.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1244, 52, 20, 7280, 1, 1, 1, 2, 1, 1, 3, 2, 1, 1, 22.30, 22.30, 20.80, 0.00, 77.40, 0.00, 0.00, 29.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1245, 52, 21, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 22.20, 22.20, 20.80, 0.00, 22.60, 0.00, 0.00, 24.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1246, 52, 22, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 1, 22.00, 22.00, 20.80, 0.00, 22.60, 0.00, 0.00, 13.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1247, 52, 23, 7280, 1, 2, 6, 1, 4, 1, 3, 1, 1, 1, 21.90, 21.90, 20.70, 0.00, 22.60, 0.00, 0.00, 10.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1248, 52, 24, 7280, 1, 1, 6, 2, 4, 1, 3, 1, 1, 1, 21.90, 21.90, 20.80, 0.10, 22.60, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1249, 53, 1, 7280, 1, 1, 1, 2, 1, 1, 3, 2, 1, 1, 24.50, 24.50, 23.50, 0.00, 67.70, 0.00, 0.00, 25.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1250, 53, 2, 7280, 1, 1, 1, 2, 1, 1, 3, 2, 1, 1, 24.40, 24.40, 23.40, 0.00, 67.70, 0.00, 0.00, 19.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1251, 53, 3, 7280, 1, 2, 2, 2, 2, 1, 3, 2, 1, 1, 24.30, 24.30, 23.40, 0.00, 0.00, 0.00, 0.00, 20.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1252, 53, 4, 7280, 1, 2, 2, 2, 2, 1, 3, 3, 1, 1, 24.30, 24.30, 23.50, 0.00, 0.00, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1253, 53, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 24.00, 24.00, 23.40, 0.00, 0.00, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1254, 53, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 23.90, 23.90, 23.40, 0.00, 0.00, 0.00, 0.00, 12.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1255, 53, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 23.70, 23.70, 23.20, 0.00, 0.00, 0.00, 0.00, 11.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1256, 53, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 3, 1, 1, 24.20, 24.20, 23.50, 0.00, 0.00, 0.00, 0.00, 10.10, 24.10, 27.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1257, 53, 9, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 25.20, 25.20, 23.80, 0.00, 67.70, 0.00, 0.00, 9.40, 24.10, 123.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1258, 53, 10, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 2, 1, 26.80, 29.60, 24.00, 0.10, 67.70, 0.00, 0.00, 8.30, 24.10, 302.00, 1.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1259, 53, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 2, 1, 27.80, 31.70, 24.30, 0.60, 67.70, 0.00, 0.00, 7.60, 18.10, 435.00, 1.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1260, 53, 12, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 3, 1, 29.00, 33.80, 24.40, 0.90, 67.70, 0.00, 0.00, 11.90, 18.30, 690.00, 2.50, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1261, 53, 13, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 4, 1, 30.10, 35.20, 24.10, 0.70, 67.70, 0.00, 0.00, 14.80, 4.30, 823.00, 3.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1262, 53, 14, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 4, 1, 30.30, 35.70, 24.30, 0.60, 67.70, 0.00, 0.00, 16.20, 8.70, 805.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1263, 53, 15, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 3, 5, 29.60, 35.20, 24.80, 0.70, 77.40, 0.00, 0.00, 15.10, 10.60, 591.00, 2.10, 60, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1264, 53, 16, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 3, 5, 29.40, 35.10, 25.00, 0.60, 77.40, 0.00, 0.00, 15.10, 10.50, 575.00, 2.10, 60, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1265, 53, 17, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 2, 5, 28.60, 33.80, 25.10, 0.50, 77.40, 0.00, 0.00, 14.80, 10.70, 394.00, 1.40, 60, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1266, 53, 18, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 1, 5, 27.00, 30.40, 24.80, 0.30, 77.40, 0.00, 0.00, 13.30, 24.10, 172.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1267, 53, 19, 7280, 1, 1, 4, 2, 1, 1, 3, 1, 1, 5, 25.00, 25.00, 23.60, 0.10, 77.40, 0.00, 0.00, 16.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1268, 53, 20, 7280, 1, 1, 3, 2, 1, 1, 3, 1, 1, 4, 24.30, 24.30, 23.30, 0.10, 77.40, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1269, 53, 21, 7280, 1, 2, 5, 2, 3, 1, 3, 2, 1, 5, 24.20, 24.20, 23.40, 0.00, 16.10, 0.00, 0.00, 20.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1270, 53, 22, 7280, 1, 2, 5, 2, 3, 1, 3, 1, 1, 5, 24.30, 24.30, 23.50, 0.00, 16.10, 0.00, 0.00, 23.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1271, 53, 23, 7280, 1, 2, 5, 2, 3, 1, 3, 1, 1, 5, 24.30, 24.30, 23.50, 0.00, 16.10, 0.00, 0.00, 26.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1272, 53, 24, 7280, 1, 2, 5, 2, 3, 1, 3, 1, 1, 5, 24.20, 24.20, 23.40, 0.00, 16.10, 0.00, 0.00, 29.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1273, 54, 1, 7280, 1, 1, 1, 6, 1, 1, 3, 3, 1, 1, 25.10, 25.10, 23.80, 0.00, 51.60, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1274, 54, 2, 7280, 1, 1, 1, 7, 1, 1, 3, 3, 1, 1, 25.00, 25.00, 23.70, 0.00, 51.60, 0.00, 0.00, 5.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1275, 54, 3, 7280, 1, 2, 2, 7, 2, 1, 3, 3, 1, 1, 24.90, 24.90, 23.70, 0.00, 0.00, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1276, 54, 4, 7280, 1, 2, 2, 7, 2, 1, 3, 3, 1, 1, 24.90, 24.90, 23.60, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1277, 54, 5, 7280, 1, 2, 2, 4, 2, 1, 3, 3, 1, 1, 24.80, 24.80, 23.60, 0.00, 0.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1278, 54, 6, 7280, 1, 2, 2, 4, 2, 1, 3, 3, 1, 1, 24.70, 24.70, 23.50, 0.00, 0.00, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1279, 54, 7, 7280, 1, 2, 2, 4, 2, 1, 3, 3, 1, 1, 24.60, 24.60, 23.30, 0.00, 0.00, 0.00, 0.00, 3.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1280, 54, 8, 7280, 1, 2, 2, 7, 2, 1, 3, 3, 1, 1, 25.00, 25.00, 23.30, 0.00, 0.00, 0.00, 0.00, 3.20, 24.10, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1281, 54, 9, 7280, 1, 2, 2, 4, 2, 1, 1, 3, 1, 1, 25.80, 25.80, 23.10, 0.00, 41.90, 0.00, 0.00, 4.00, 24.10, 113.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1282, 54, 10, 7280, 1, 2, 2, 7, 2, 1, 1, 3, 1, 1, 26.80, 29.20, 23.00, 0.00, 41.90, 0.00, 0.00, 3.20, 24.10, 238.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1283, 54, 11, 7280, 1, 2, 2, 7, 2, 1, 1, 3, 2, 1, 27.60, 30.50, 23.00, 0.00, 41.90, 0.00, 0.00, 3.20, 24.10, 323.00, 1.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1284, 54, 12, 7280, 1, 1, 2, 7, 2, 1, 1, 3, 2, 1, 28.90, 32.60, 23.20, 0.20, 41.90, 0.00, 0.00, 1.40, 24.10, 487.00, 1.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1285, 54, 13, 7280, 1, 1, 2, 4, 2, 1, 2, 3, 3, 1, 30.90, 35.60, 23.40, 0.20, 41.90, 0.00, 0.00, 3.60, 24.10, 734.00, 2.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1286, 54, 14, 7280, 1, 1, 6, 3, 5, 1, 2, 3, 4, 6, 31.80, 36.70, 23.30, 0.30, 41.90, 0.00, 0.00, 5.40, 24.10, 802.00, 2.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1287, 54, 15, 7280, 1, 1, 3, 2, 1, 1, 2, 3, 3, 4, 31.30, 36.20, 23.40, 0.60, 74.20, 0.00, 0.00, 7.20, 12.60, 719.00, 2.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1288, 54, 16, 7280, 1, 1, 4, 2, 1, 1, 2, 1, 3, 5, 30.70, 35.50, 23.50, 0.40, 74.20, 0.00, 0.00, 7.60, 19.20, 567.00, 2.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1289, 54, 17, 7280, 1, 1, 4, 1, 1, 1, 2, 2, 2, 5, 30.30, 35.10, 23.70, 0.00, 74.20, 0.00, 0.00, 6.10, 24.10, 382.00, 1.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1290, 54, 18, 7280, 1, 1, 4, 1, 1, 1, 1, 1, 1, 5, 28.90, 33.40, 24.10, 0.10, 74.20, 0.00, 0.00, 9.70, 24.10, 160.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1291, 54, 19, 7280, 1, 1, 4, 1, 1, 1, 1, 1, 1, 5, 26.70, 26.70, 23.80, 0.50, 74.20, 0.00, 0.00, 14.40, 10.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1292, 54, 20, 7280, 1, 1, 4, 1, 1, 1, 1, 1, 1, 5, 25.30, 25.30, 23.30, 1.00, 74.20, 0.00, 0.00, 11.20, 19.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1293, 54, 21, 7280, 1, 1, 5, 8, 3, 1, 3, 2, 1, 5, 25.20, 25.20, 23.50, 0.40, 41.90, 0.00, 0.00, 7.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1294, 54, 22, 7280, 1, 1, 2, 8, 2, 1, 3, 3, 1, 1, 25.20, 25.20, 23.50, 0.10, 41.90, 0.00, 0.00, 5.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1295, 54, 23, 7280, 1, 1, 2, 8, 2, 1, 3, 3, 1, 1, 25.10, 25.10, 23.40, 0.50, 41.90, 0.00, 0.00, 2.20, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1296, 54, 24, 7280, 1, 2, 6, 3, 4, 1, 3, 3, 1, 3, 25.10, 25.10, 23.50, 0.00, 41.90, 0.00, 0.00, 1.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1297, 55, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 25.00, 25.00, 22.50, 0.00, 9.70, 0.00, 0.00, 30.60, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1298, 55, 2, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 25.00, 25.00, 22.60, 0.00, 9.70, 0.00, 0.00, 26.60, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1299, 55, 3, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 25.00, 25.00, 22.60, 0.00, 0.00, 0.00, 0.00, 29.20, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1300, 55, 4, 7280, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 25.10, 25.10, 22.70, 0.00, 0.00, 0.00, 0.00, 30.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1301, 55, 5, 7280, 1, 2, 2, 3, 2, 1, 1, 1, 1, 1, 25.00, 25.00, 22.80, 0.00, 0.00, 0.00, 0.00, 29.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1302, 55, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.60, 24.60, 22.90, 0.00, 0.00, 0.00, 0.00, 27.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1303, 55, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.20, 24.20, 23.00, 0.00, 0.00, 0.00, 0.00, 24.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1304, 55, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 25.10, 25.10, 23.60, 0.00, 0.00, 0.00, 0.00, 23.40, 24.10, 47.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1305, 55, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 26.70, 26.70, 23.70, 0.00, 67.70, 0.00, 0.00, 19.10, 24.10, 209.00, 0.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1306, 55, 10, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 2, 1, 28.30, 32.10, 23.70, 0.10, 67.70, 0.00, 0.00, 15.80, 23.30, 424.00, 1.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1307, 55, 11, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 3, 1, 29.40, 33.90, 23.80, 0.70, 67.70, 0.00, 0.00, 21.20, 10.40, 659.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1308, 55, 12, 7280, 1, 1, 1, 3, 1, 1, 2, 5, 4, 1, 30.70, 35.30, 23.30, 0.40, 67.70, 0.00, 0.00, 24.80, 24.10, 789.00, 2.80, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1309, 55, 13, 7280, 1, 1, 3, 3, 1, 1, 2, 5, 3, 6, 31.40, 35.60, 22.70, 0.40, 67.70, 0.00, 0.00, 24.80, 24.10, 725.00, 2.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1310, 55, 14, 7280, 1, 1, 3, 3, 1, 1, 2, 5, 3, 6, 31.30, 35.30, 22.50, 0.10, 67.70, 0.00, 0.00, 25.90, 24.10, 679.00, 2.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1311, 55, 15, 7280, 1, 1, 3, 2, 1, 1, 2, 5, 3, 3, 30.90, 34.80, 22.50, 0.00, 71.00, 0.00, 0.00, 26.60, 24.10, 596.00, 2.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1312, 55, 16, 7280, 1, 1, 4, 2, 1, 1, 2, 5, 2, 5, 30.40, 34.20, 22.60, 0.20, 71.00, 0.00, 0.00, 27.40, 24.10, 543.00, 2.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1313, 55, 17, 7280, 1, 1, 4, 2, 1, 1, 2, 5, 2, 5, 29.50, 33.30, 23.00, 0.10, 71.00, 0.00, 0.00, 26.60, 24.10, 399.00, 1.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1314, 55, 18, 7280, 1, 1, 4, 2, 1, 1, 1, 5, 1, 5, 27.50, 30.40, 23.10, 0.00, 71.00, 0.00, 0.00, 25.90, 24.10, 174.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1315, 55, 19, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 25.90, 25.90, 23.00, 0.00, 71.00, 0.00, 0.00, 27.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1316, 55, 20, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 25.40, 25.40, 23.20, 0.00, 71.00, 0.00, 0.00, 33.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1317, 55, 21, 7280, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 25.60, 25.60, 23.10, 0.00, 12.90, 0.00, 0.00, 39.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1318, 55, 22, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 25.90, 25.90, 23.10, 0.00, 12.90, 0.00, 0.00, 42.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1319, 55, 23, 7280, 1, 2, 6, 2, 4, 1, 1, 5, 1, 4, 25.80, 25.80, 23.10, 0.00, 12.90, 0.00, 0.00, 42.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1320, 55, 24, 7280, 1, 2, 5, 2, 3, 1, 1, 5, 1, 5, 25.60, 25.60, 23.20, 0.00, 12.90, 0.00, 0.00, 42.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1321, 56, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 3, 1, 1, 21.90, 21.90, 16.90, 0.00, 29.00, 0.00, 0.00, 7.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1322, 56, 2, 7280, 1, 1, 2, 3, 2, 1, 1, 3, 1, 1, 21.60, 21.60, 17.00, 0.10, 29.00, 0.00, 0.00, 5.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1323, 56, 3, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 21.30, 21.30, 17.10, 0.00, 93.50, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1324, 56, 4, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 21.00, 21.00, 17.20, 0.00, 93.50, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1325, 56, 5, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 20.80, 20.80, 17.30, 0.00, 93.50, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1326, 56, 6, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 20.60, 20.60, 17.30, 0.00, 93.50, 0.00, 0.00, 4.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1327, 56, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.60, 20.60, 17.30, 0.10, 93.50, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1328, 56, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.60, 20.60, 17.30, 0.00, 93.50, 0.00, 0.00, 3.20, 24.10, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1329, 56, 9, 7280, 1, 1, 1, 5, 1, 1, 1, 3, 1, 1, 20.60, 20.60, 17.60, 0.10, 90.30, 0.00, 0.00, 2.50, 23.60, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1330, 56, 10, 7280, 1, 1, 1, 5, 1, 1, 1, 3, 1, 1, 20.30, 20.30, 17.80, 0.10, 90.30, 0.00, 0.00, 2.20, 24.10, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1331, 56, 11, 7280, 1, 1, 1, 6, 1, 1, 1, 4, 1, 1, 20.30, 20.30, 18.00, 0.10, 90.30, 0.00, 0.00, 2.90, 24.10, 18.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1332, 56, 12, 7280, 1, 1, 1, 8, 1, 1, 1, 4, 1, 1, 20.40, 20.40, 17.90, 0.20, 90.30, 0.00, 0.00, 2.50, 24.10, 37.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1333, 56, 13, 7280, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 20.80, 20.80, 17.90, 0.10, 90.30, 0.00, 0.00, 5.40, 24.10, 98.00, 0.40, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1334, 56, 14, 7280, 1, 1, 1, 4, 1, 1, 1, 3, 1, 1, 20.50, 20.50, 17.90, 0.30, 90.30, 0.00, 0.00, 3.60, 24.10, 46.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1335, 56, 15, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.90, 19.90, 18.30, 0.40, 80.60, 0.00, 0.00, 4.00, 17.00, 17.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1336, 56, 16, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 18.40, 0.40, 80.60, 0.00, 0.00, 6.10, 23.10, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1337, 56, 17, 7280, 1, 1, 1, 4, 1, 1, 3, 3, 1, 1, 19.50, 19.50, 18.50, 0.50, 80.60, 0.00, 0.00, 5.40, 14.50, 8.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1338, 56, 18, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.40, 19.40, 18.40, 0.40, 80.60, 0.00, 0.00, 8.60, 24.10, 2.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1339, 56, 19, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.30, 19.30, 18.20, 0.10, 80.60, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1340, 56, 20, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.10, 19.10, 18.00, 0.20, 80.60, 0.00, 0.00, 11.20, 13.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1341, 56, 21, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 18.80, 18.80, 17.70, 0.60, 93.50, 0.00, 0.00, 15.10, 23.90, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1342, 56, 22, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 18.60, 18.60, 17.40, 0.20, 93.50, 0.00, 0.00, 10.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1343, 56, 23, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 18.40, 18.40, 17.20, 0.20, 93.50, 0.00, 0.00, 7.20, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1344, 56, 24, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 18.20, 18.20, 17.10, 0.30, 93.50, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1345, 57, 1, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 24.90, 24.90, 23.50, 0.00, 67.70, 0.00, 0.00, 23.00, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1346, 57, 2, 7280, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 24.70, 24.70, 23.30, 0.00, 67.70, 0.00, 0.00, 20.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1347, 57, 3, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.70, 24.70, 23.20, 0.00, 9.70, 0.00, 0.00, 17.30, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1348, 57, 4, 7280, 1, 2, 2, 2, 2, 1, 3, 2, 1, 1, 24.60, 24.60, 23.20, 0.00, 9.70, 0.00, 0.00, 15.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1349, 57, 5, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 24.40, 24.40, 23.20, 0.00, 9.70, 0.00, 0.00, 9.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1350, 57, 6, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.20, 24.20, 23.20, 0.00, 9.70, 0.00, 0.00, 11.50, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1351, 57, 7, 7280, 1, 2, 2, 3, 2, 1, 3, 1, 1, 1, 24.10, 24.10, 23.30, 0.00, 9.70, 0.00, 0.00, 10.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1352, 57, 8, 7280, 1, 2, 2, 3, 2, 1, 3, 2, 1, 1, 24.70, 24.70, 23.60, 0.00, 9.70, 0.00, 0.00, 10.10, 24.10, 32.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1353, 57, 9, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 25.70, 25.70, 23.80, 0.00, 67.70, 0.00, 0.00, 8.60, 24.10, 131.00, 0.50, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1354, 57, 10, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 2, 1, 26.70, 26.70, 23.90, 0.00, 67.70, 0.00, 0.00, 7.90, 24.10, 261.00, 0.90, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1355, 57, 11, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 2, 1, 27.80, 31.50, 24.00, 0.60, 67.70, 0.00, 0.00, 6.50, 24.10, 432.00, 1.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1356, 57, 12, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 3, 1, 29.00, 33.50, 24.00, 1.00, 67.70, 0.00, 0.00, 7.90, 24.00, 595.00, 2.10, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1357, 57, 13, 7280, 1, 1, 1, 3, 1, 1, 2, 1, 4, 1, 30.20, 35.10, 23.80, 1.00, 67.70, 0.00, 0.00, 12.20, 15.90, 801.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1358, 57, 14, 7280, 1, 1, 3, 3, 1, 1, 2, 1, 4, 1, 30.50, 35.60, 23.90, 0.70, 67.70, 0.00, 0.00, 14.40, 7.10, 819.00, 2.90, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1359, 57, 15, 7280, 1, 1, 3, 3, 1, 1, 1, 1, 3, 6, 30.00, 35.20, 24.20, 1.20, 80.60, 0.00, 0.00, 14.00, 7.70, 710.00, 2.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1360, 57, 16, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 3, 5, 29.80, 34.90, 24.20, 0.60, 80.60, 0.00, 0.00, 14.80, 24.10, 566.00, 2.00, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1361, 57, 17, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 2, 5, 28.90, 33.80, 24.50, 0.60, 80.60, 0.00, 0.00, 13.70, 7.60, 397.00, 1.40, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1362, 57, 18, 7280, 1, 1, 4, 3, 1, 1, 1, 1, 1, 5, 27.20, 30.70, 24.60, 0.80, 80.60, 0.00, 0.00, 12.60, 10.10, 175.00, 0.60, 30, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1363, 57, 19, 7280, 1, 1, 4, 2, 1, 1, 1, 1, 1, 5, 25.80, 25.80, 23.90, 0.20, 80.60, 0.00, 0.00, 9.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1364, 57, 20, 7280, 1, 1, 4, 2, 1, 1, 3, 1, 1, 5, 25.20, 25.20, 23.60, 0.10, 80.60, 0.00, 0.00, 16.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1365, 57, 21, 7280, 1, 2, 5, 2, 3, 1, 3, 1, 1, 5, 24.60, 24.60, 23.30, 0.00, 19.40, 0.00, 0.00, 19.80, 24.10, 0.00, 0.00, 3, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1366, 57, 22, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 3, 24.40, 24.40, 23.30, 0.00, 19.40, 0.00, 0.00, 25.90, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1367, 57, 23, 7280, 1, 2, 2, 2, 2, 1, 3, 1, 1, 1, 24.30, 24.30, 23.40, 0.00, 19.40, 0.00, 0.00, 24.80, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1368, 57, 24, 7280, 1, 2, 6, 2, 4, 1, 3, 1, 1, 3, 24.20, 24.20, 23.30, 0.00, 19.40, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1369, 58, 1, 7280, 1, 2, 2, 2, 2, 1, 1, 5, 1, 1, 22.40, 22.40, 18.60, 0.00, 0.00, 0.00, 0.00, 27.40, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1370, 58, 2, 7280, 1, 1, 2, 2, 2, 1, 1, 5, 1, 1, 22.20, 22.20, 18.70, 0.10, 0.00, 0.00, 0.00, 27.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1371, 58, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 21.90, 21.90, 18.60, 0.00, 71.00, 0.00, 0.00, 26.60, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1372, 58, 4, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 21.60, 21.60, 18.60, 0.10, 71.00, 0.00, 0.00, 27.70, 24.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1373, 58, 5, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 21.50, 21.50, 18.40, 0.20, 71.00, 0.00, 0.00, 27.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1374, 58, 6, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 21.20, 21.20, 18.10, 0.30, 71.00, 0.00, 0.00, 26.60, 11.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1375, 58, 7, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 20.60, 20.60, 18.00, 0.60, 71.00, 0.00, 0.00, 30.20, 21.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1376, 58, 8, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 20.60, 20.60, 17.70, 0.10, 71.00, 0.00, 0.00, 31.30, 24.10, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1377, 58, 9, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 20.70, 20.70, 17.70, 0.40, 45.20, 0.00, 0.00, 29.20, 21.80, 13.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1378, 58, 10, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 20.90, 20.90, 17.60, 0.10, 45.20, 0.00, 0.00, 32.00, 24.10, 31.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1379, 58, 11, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.40, 22.40, 17.70, 0.00, 45.20, 0.00, 0.00, 30.60, 24.10, 153.00, 0.60, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1380, 58, 12, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 22.00, 22.00, 17.60, 0.10, 45.20, 0.00, 0.00, 29.90, 24.10, 90.00, 0.30, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1381, 58, 13, 7280, 1, 1, 1, 2, 1, 1, 1, 5, 1, 1, 21.60, 21.60, 17.70, 0.10, 45.20, 0.00, 0.00, 27.00, 24.10, 31.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1382, 58, 14, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 21.80, 21.80, 17.80, 0.10, 45.20, 0.00, 0.00, 27.00, 24.10, 28.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1383, 58, 15, 7280, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 22.10, 22.10, 17.90, 0.00, 71.00, 0.00, 0.00, 25.60, 24.10, 45.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1384, 58, 16, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.80, 21.80, 18.20, 0.10, 71.00, 0.00, 0.00, 22.70, 24.10, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1385, 58, 17, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 21.80, 21.80, 18.40, 0.10, 71.00, 0.00, 0.00, 23.40, 24.10, 12.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1386, 58, 18, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 21.60, 21.60, 18.30, 0.00, 71.00, 0.00, 0.00, 20.50, 23.90, 5.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1387, 58, 19, 7280, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 20.80, 20.80, 18.60, 0.50, 71.00, 0.00, 0.00, 14.40, 14.60, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1388, 58, 20, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 20.40, 20.40, 18.60, 0.70, 71.00, 0.00, 0.00, 20.20, 13.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1389, 58, 21, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 20.30, 20.30, 18.30, 0.50, 74.20, 0.00, 0.00, 24.80, 22.00, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1390, 58, 22, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 20.10, 20.10, 18.20, 0.40, 74.20, 0.00, 0.00, 27.40, 23.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1391, 58, 23, 7280, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 20.10, 20.10, 18.20, 0.80, 74.20, 0.00, 0.00, 24.50, 12.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1392, 58, 24, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 20.10, 20.10, 18.00, 0.50, 74.20, 0.00, 0.00, 26.30, 22.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1393, 59, 1, 7280, 1, 1, 2, 1, 2, 1, 1, 5, 1, 1, 22.60, 22.60, 17.90, 0.10, 6.50, 0.00, 0.00, 27.00, 22.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1394, 59, 2, 7280, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 22.00, 22.00, 18.00, 0.20, 6.50, 0.00, 0.00, 25.20, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1395, 59, 3, 7280, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 21.80, 21.80, 17.80, 0.30, 100.00, 0.00, 0.00, 19.40, 15.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1396, 59, 4, 7280, 1, 1, 1, 3, 1, 1, 1, 2, 1, 1, 21.40, 21.40, 17.70, 0.30, 100.00, 0.00, 0.00, 14.00, 19.30, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1397, 59, 5, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 1, 1, 20.90, 20.90, 17.90, 0.40, 100.00, 0.00, 0.00, 7.20, 19.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1398, 59, 6, 7280, 1, 1, 1, 5, 1, 1, 1, 2, 1, 1, 20.50, 20.50, 18.10, 0.20, 100.00, 0.00, 0.00, 6.10, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1399, 59, 7, 7280, 1, 1, 1, 3, 1, 1, 1, 3, 1, 1, 20.50, 20.50, 18.00, 0.10, 100.00, 0.00, 0.00, 4.70, 24.10, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1400, 59, 8, 7280, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 20.60, 20.60, 18.10, 0.10, 100.00, 0.00, 0.00, 2.50, 18.70, 1.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1401, 59, 9, 7280, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 20.30, 20.30, 18.40, 0.50, 96.80, 0.00, 0.00, 7.90, 14.80, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1402, 59, 10, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 20.20, 20.20, 18.60, 0.40, 96.80, 0.00, 0.00, 12.60, 15.60, 11.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1403, 59, 11, 7280, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 20.20, 20.20, 18.60, 0.50, 96.80, 0.00, 0.00, 11.90, 18.30, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1404, 59, 12, 7280, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 20.10, 20.10, 18.60, 0.50, 96.80, 0.00, 0.00, 13.00, 22.50, 22.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1405, 59, 13, 7280, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 20.30, 20.30, 18.60, 0.50, 96.80, 0.00, 0.00, 12.20, 10.40, 61.00, 0.20, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1406, 59, 14, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.90, 19.90, 18.70, 1.20, 96.80, 0.00, 0.00, 5.40, 6.40, 20.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1407, 59, 15, 7280, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 18.70, 1.20, 87.10, 0.00, 0.00, 5.40, 9.60, 13.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1408, 59, 16, 7280, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 18.70, 0.70, 87.10, 0.00, 0.00, 2.20, 9.70, 15.00, 0.10, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1409, 59, 17, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.60, 19.60, 18.70, 0.90, 87.10, 0.00, 0.00, 3.20, 13.20, 9.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1410, 59, 18, 7280, 1, 1, 1, 5, 1, 1, 3, 3, 1, 1, 19.70, 19.70, 18.70, 0.60, 87.10, 0.00, 0.00, 5.00, 8.30, 4.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1411, 59, 19, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.70, 19.70, 18.60, 0.80, 87.10, 0.00, 0.00, 6.80, 10.70, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1412, 59, 20, 7280, 1, 1, 1, 3, 1, 1, 3, 3, 1, 1, 19.70, 19.70, 18.50, 0.70, 87.10, 0.00, 0.00, 6.80, 12.20, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1413, 59, 21, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 19.60, 19.60, 18.30, 0.70, 93.50, 0.00, 0.00, 6.80, 10.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1414, 59, 22, 7280, 1, 1, 1, 3, 1, 1, 3, 2, 1, 1, 19.40, 19.40, 18.10, 0.70, 93.50, 0.00, 0.00, 7.90, 13.50, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1415, 59, 23, 7280, 1, 1, 1, 5, 1, 1, 3, 1, 1, 1, 19.20, 19.20, 17.90, 0.80, 93.50, 0.00, 0.00, 7.90, 17.40, 0.00, 0.00, 10, '9999-12-31');
INSERT INTO `weather_fact` VALUES (1416, 59, 24, 7280, 1, 1, 1, 5, 1, 1, 3, 2, 1, 1, 19.10, 19.10, 17.60, 0.40, 93.50, 0.00, 0.00, 7.60, 19.30, 0.00, 0.00, 10, '9999-12-31');

-- ----------------------------
-- Procedure structure for transform_aggregate
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_aggregate`;
delimiter ;;
CREATE PROCEDURE `transform_aggregate`()
BEGIN
insert into weather_aggregate 
(
location_id,date_id,time_id,humidity,precip,precipprob,windspeed,cloudcover,conditions,icon,aggregate_type
)
SELECT
    s.location_id,
		s.date_id,
		s.time_id,
		s.humidity,
		s.precip,
		s.precip_prob,
		s.wind_speed,
		s.cloud_cover,
		s.conditions,
		s.icon,
		'Day'
FROM warehouse.weather_fact s;



END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_datamart
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_datamart`;
delimiter ;;
CREATE PROCEDURE `transform_datamart`()
BEGIN
    -- Khai báo biến để xử lý lỗi
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Nếu có lỗi xảy ra, rollback toàn bộ transaction
        ROLLBACK;
        -- In thông báo lỗi
        SELECT 'Đã xảy ra lỗi trong quá trình thực thi transform_datamart' AS error_message;
    END;
    
    -- Bắt đầu một transaction để đảm bảo tính nhất quán của dữ liệu
    START TRANSACTION;

    -- Truncate bảng forecast_temp trước khi chèn dữ liệu mới
    TRUNCATE TABLE datamart.agg_weather_daily_temp;

    -- Chèn dữ liệu từ warehouse.weather_aggregate vào datamart.forecast_temp
    INSERT INTO datamart.agg_weather_daily_temp
    (date_id, location_id, avg_temp_daily, avg_humidity_daily, avg_precip_daily)
    SELECT 
        wa.date_id,
        wa.location_id,
        wa.avg_temp_daily,
        wa.avg_humidity_daily,
        wa.avg_precip_daily
    FROM warehouse.agg_weather_daily wa;

    -- Gọi procedure SwapForecastTables để đổi tên các bảng trong datamart
    CALL datamart.SwapForecastTables();

    -- Commit transaction sau khi thực hiện thành công
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for type2
-- ----------------------------
DROP PROCEDURE IF EXISTS `type2`;
delimiter ;;
CREATE PROCEDURE `type2`()
BEGIN
	update dim_location d
	join staging.staging s
	on d.province_id  = s.province_id
	and d.province <> TRIM(SUBSTRING_INDEX(s.name, ',', 1))
	set d.dtChanged = CURRENT_TIMESTAMP,
	d.dtExpired = CURRENT_TIMESTAMP,
	d.isCurrent = 0;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
