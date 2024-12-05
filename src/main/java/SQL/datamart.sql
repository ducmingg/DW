/*
 Navicat Premium Data Transfer

 Source Server         : DataWarehouse
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : datamart

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 05/12/2024 18:49:30
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
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE
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
-- Table structure for agg_weather_daily_temp
-- ----------------------------
DROP TABLE IF EXISTS `agg_weather_daily_temp`;
CREATE TABLE `agg_weather_daily_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_id` bigint NOT NULL DEFAULT 0,
  `location_id` int NOT NULL DEFAULT 0,
  `avg_temp_daily` decimal(10, 2) NULL DEFAULT NULL,
  `avg_humidity_daily` decimal(10, 2) NULL DEFAULT NULL,
  `avg_precip_daily` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_date1_idx`(`date_id` ASC) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agg_weather_daily_temp
-- ----------------------------
INSERT INTO `agg_weather_daily_temp` VALUES (1, 7280, 1, 27.31, 1.25, 0.31);
INSERT INTO `agg_weather_daily_temp` VALUES (2, 7280, 2, 26.20, 1.58, 0.02);
INSERT INTO `agg_weather_daily_temp` VALUES (3, 7280, 3, 27.03, 1.00, 0.18);
INSERT INTO `agg_weather_daily_temp` VALUES (4, 7280, 4, 21.93, 1.25, 0.01);
INSERT INTO `agg_weather_daily_temp` VALUES (5, 7280, 5, 16.01, 2.08, 0.22);
INSERT INTO `agg_weather_daily_temp` VALUES (6, 7280, 6, 21.71, 1.04, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (7, 7280, 7, 27.01, 1.54, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (8, 7280, 8, 23.95, 1.92, 0.37);
INSERT INTO `agg_weather_daily_temp` VALUES (9, 7280, 9, 26.10, 1.67, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (10, 7280, 10, 25.30, 2.50, 0.06);
INSERT INTO `agg_weather_daily_temp` VALUES (11, 7280, 11, 24.93, 1.83, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (12, 7280, 12, 26.46, 1.92, 0.36);
INSERT INTO `agg_weather_daily_temp` VALUES (13, 7280, 13, 26.43, 1.54, 0.22);
INSERT INTO `agg_weather_daily_temp` VALUES (14, 7280, 14, 16.42, 1.75, 0.12);
INSERT INTO `agg_weather_daily_temp` VALUES (15, 7280, 15, 23.88, 1.00, 0.24);
INSERT INTO `agg_weather_daily_temp` VALUES (16, 7280, 16, 24.20, 1.33, 0.01);
INSERT INTO `agg_weather_daily_temp` VALUES (17, 7280, 17, 21.68, 2.42, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (18, 7280, 18, 17.89, 2.42, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (19, 7280, 19, 26.89, 1.63, 0.32);
INSERT INTO `agg_weather_daily_temp` VALUES (20, 7280, 20, 20.89, 1.79, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (21, 7280, 21, 16.12, 3.00, 0.61);
INSERT INTO `agg_weather_daily_temp` VALUES (22, 7280, 22, 21.85, 1.00, 0.28);
INSERT INTO `agg_weather_daily_temp` VALUES (23, 7280, 23, 20.83, 3.00, 0.03);
INSERT INTO `agg_weather_daily_temp` VALUES (24, 7280, 24, 22.13, 1.13, 0.04);
INSERT INTO `agg_weather_daily_temp` VALUES (25, 7280, 25, 22.67, 1.00, 0.04);
INSERT INTO `agg_weather_daily_temp` VALUES (26, 7280, 26, 26.42, 2.00, 0.15);
INSERT INTO `agg_weather_daily_temp` VALUES (27, 7280, 27, 19.56, 2.75, 0.25);
INSERT INTO `agg_weather_daily_temp` VALUES (28, 7280, 28, 22.59, 1.04, 0.12);
INSERT INTO `agg_weather_daily_temp` VALUES (29, 7280, 29, 24.61, 1.00, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (30, 7280, 30, 27.14, 1.00, 0.35);
INSERT INTO `agg_weather_daily_temp` VALUES (31, 7280, 31, 20.53, 1.92, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (32, 7280, 32, 15.07, 2.42, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (33, 7280, 33, 17.93, 2.38, 0.07);
INSERT INTO `agg_weather_daily_temp` VALUES (34, 7280, 34, 18.39, 1.42, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (35, 7280, 35, 16.76, 3.00, 0.09);
INSERT INTO `agg_weather_daily_temp` VALUES (36, 7280, 36, 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_daily_temp` VALUES (37, 7280, 37, 22.53, 1.08, 0.03);
INSERT INTO `agg_weather_daily_temp` VALUES (38, 7280, 38, 22.92, 1.21, 0.14);
INSERT INTO `agg_weather_daily_temp` VALUES (39, 7280, 39, 25.99, 1.25, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (40, 7280, 40, 19.96, 2.17, 0.53);
INSERT INTO `agg_weather_daily_temp` VALUES (41, 7280, 41, 22.66, 3.00, 0.14);
INSERT INTO `agg_weather_daily_temp` VALUES (42, 7280, 42, 21.89, 2.17, 0.16);
INSERT INTO `agg_weather_daily_temp` VALUES (43, 7280, 43, 22.59, 2.50, 0.30);
INSERT INTO `agg_weather_daily_temp` VALUES (44, 7280, 44, 21.66, 3.00, 0.25);
INSERT INTO `agg_weather_daily_temp` VALUES (45, 7280, 45, 20.64, 1.13, 0.03);
INSERT INTO `agg_weather_daily_temp` VALUES (46, 7280, 46, 21.83, 2.42, 0.09);
INSERT INTO `agg_weather_daily_temp` VALUES (47, 7280, 47, 27.18, 1.21, 0.02);
INSERT INTO `agg_weather_daily_temp` VALUES (48, 7280, 48, 17.14, 2.33, 0.05);
INSERT INTO `agg_weather_daily_temp` VALUES (49, 7280, 49, 27.13, 1.38, 0.11);
INSERT INTO `agg_weather_daily_temp` VALUES (50, 7280, 50, 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_daily_temp` VALUES (51, 7280, 51, 19.93, 1.00, 0.12);
INSERT INTO `agg_weather_daily_temp` VALUES (52, 7280, 52, 22.05, 2.33, 0.07);
INSERT INTO `agg_weather_daily_temp` VALUES (53, 7280, 53, 26.25, 2.25, 0.13);
INSERT INTO `agg_weather_daily_temp` VALUES (54, 7280, 54, 26.65, 1.88, 0.00);
INSERT INTO `agg_weather_daily_temp` VALUES (55, 7280, 55, 27.35, 1.33, 0.01);
INSERT INTO `agg_weather_daily_temp` VALUES (56, 7280, 56, 19.44, 2.17, 0.23);
INSERT INTO `agg_weather_daily_temp` VALUES (57, 7280, 57, 26.20, 2.17, 0.33);
INSERT INTO `agg_weather_daily_temp` VALUES (58, 7280, 58, 20.71, 1.33, 0.35);
INSERT INTO `agg_weather_daily_temp` VALUES (59, 7280, 59, 19.52, 2.33, 0.74);

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
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agg_weather_monthly
-- ----------------------------
INSERT INTO `agg_weather_monthly` VALUES (1, 1, '12/2024', 27.31, 1.25, 0.31);
INSERT INTO `agg_weather_monthly` VALUES (2, 2, '12/2024', 26.20, 1.58, 0.02);
INSERT INTO `agg_weather_monthly` VALUES (3, 3, '12/2024', 27.03, 1.00, 0.18);
INSERT INTO `agg_weather_monthly` VALUES (4, 4, '12/2024', 21.93, 1.25, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (5, 5, '12/2024', 16.01, 2.08, 0.22);
INSERT INTO `agg_weather_monthly` VALUES (6, 6, '12/2024', 21.71, 1.04, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (7, 7, '12/2024', 27.01, 1.54, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (8, 8, '12/2024', 23.95, 1.92, 0.37);
INSERT INTO `agg_weather_monthly` VALUES (9, 9, '12/2024', 26.10, 1.67, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (10, 10, '12/2024', 25.30, 2.50, 0.06);
INSERT INTO `agg_weather_monthly` VALUES (11, 11, '12/2024', 24.93, 1.83, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (12, 12, '12/2024', 26.46, 1.92, 0.36);
INSERT INTO `agg_weather_monthly` VALUES (13, 13, '12/2024', 26.43, 1.54, 0.22);
INSERT INTO `agg_weather_monthly` VALUES (14, 14, '12/2024', 16.42, 1.75, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (15, 15, '12/2024', 23.88, 1.00, 0.24);
INSERT INTO `agg_weather_monthly` VALUES (16, 16, '12/2024', 24.20, 1.33, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (17, 17, '12/2024', 21.68, 2.42, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (18, 18, '12/2024', 17.89, 2.42, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (19, 19, '12/2024', 26.89, 1.63, 0.32);
INSERT INTO `agg_weather_monthly` VALUES (20, 20, '12/2024', 20.89, 1.79, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (21, 21, '12/2024', 16.12, 3.00, 0.61);
INSERT INTO `agg_weather_monthly` VALUES (22, 22, '12/2024', 21.85, 1.00, 0.28);
INSERT INTO `agg_weather_monthly` VALUES (23, 23, '12/2024', 20.83, 3.00, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (24, 24, '12/2024', 22.13, 1.13, 0.04);
INSERT INTO `agg_weather_monthly` VALUES (25, 25, '12/2024', 22.67, 1.00, 0.04);
INSERT INTO `agg_weather_monthly` VALUES (26, 26, '12/2024', 26.42, 2.00, 0.15);
INSERT INTO `agg_weather_monthly` VALUES (27, 27, '12/2024', 19.56, 2.75, 0.25);
INSERT INTO `agg_weather_monthly` VALUES (28, 28, '12/2024', 22.59, 1.04, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (29, 29, '12/2024', 24.61, 1.00, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (30, 30, '12/2024', 27.14, 1.00, 0.35);
INSERT INTO `agg_weather_monthly` VALUES (31, 31, '12/2024', 20.53, 1.92, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (32, 32, '12/2024', 15.07, 2.42, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (33, 33, '12/2024', 17.93, 2.38, 0.07);
INSERT INTO `agg_weather_monthly` VALUES (34, 34, '12/2024', 18.39, 1.42, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (35, 35, '12/2024', 16.76, 3.00, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (36, 36, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (37, 37, '12/2024', 22.53, 1.08, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (38, 38, '12/2024', 22.92, 1.21, 0.14);
INSERT INTO `agg_weather_monthly` VALUES (39, 39, '12/2024', 25.99, 1.25, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (40, 40, '12/2024', 19.96, 2.17, 0.53);
INSERT INTO `agg_weather_monthly` VALUES (41, 41, '12/2024', 22.66, 3.00, 0.14);
INSERT INTO `agg_weather_monthly` VALUES (42, 42, '12/2024', 21.89, 2.17, 0.16);
INSERT INTO `agg_weather_monthly` VALUES (43, 43, '12/2024', 22.59, 2.50, 0.30);
INSERT INTO `agg_weather_monthly` VALUES (44, 44, '12/2024', 21.66, 3.00, 0.25);
INSERT INTO `agg_weather_monthly` VALUES (45, 45, '12/2024', 20.64, 1.13, 0.03);
INSERT INTO `agg_weather_monthly` VALUES (46, 46, '12/2024', 21.83, 2.42, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (47, 47, '12/2024', 27.18, 1.21, 0.02);
INSERT INTO `agg_weather_monthly` VALUES (48, 48, '12/2024', 17.14, 2.33, 0.05);
INSERT INTO `agg_weather_monthly` VALUES (49, 49, '12/2024', 27.13, 1.38, 0.11);
INSERT INTO `agg_weather_monthly` VALUES (50, 50, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly` VALUES (51, 51, '12/2024', 19.93, 1.00, 0.12);
INSERT INTO `agg_weather_monthly` VALUES (52, 52, '12/2024', 22.05, 2.33, 0.07);
INSERT INTO `agg_weather_monthly` VALUES (53, 53, '12/2024', 26.25, 2.25, 0.13);
INSERT INTO `agg_weather_monthly` VALUES (54, 54, '12/2024', 26.65, 1.88, 0.00);
INSERT INTO `agg_weather_monthly` VALUES (55, 55, '12/2024', 27.35, 1.33, 0.01);
INSERT INTO `agg_weather_monthly` VALUES (56, 56, '12/2024', 19.44, 2.17, 0.23);
INSERT INTO `agg_weather_monthly` VALUES (57, 57, '12/2024', 26.20, 2.17, 0.33);
INSERT INTO `agg_weather_monthly` VALUES (58, 58, '12/2024', 20.71, 1.33, 0.35);
INSERT INTO `agg_weather_monthly` VALUES (59, 59, '12/2024', 19.52, 2.33, 0.74);

-- ----------------------------
-- Table structure for agg_weather_monthly_temp
-- ----------------------------
DROP TABLE IF EXISTS `agg_weather_monthly_temp`;
CREATE TABLE `agg_weather_monthly_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL DEFAULT 0,
  `monthly` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `avg_temp_monthly` decimal(10, 2) NULL DEFAULT NULL,
  `avg_humidity_monthly` decimal(10, 2) NULL DEFAULT NULL,
  `avg_precip_monthly` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_date1_idx`(`monthly` ASC) USING BTREE,
  INDEX `fk_agg_weather_daily_dim_location1_idx`(`location_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agg_weather_monthly_temp
-- ----------------------------
INSERT INTO `agg_weather_monthly_temp` VALUES (1, 1, '12/2024', 27.31, 1.25, 0.31);
INSERT INTO `agg_weather_monthly_temp` VALUES (2, 2, '12/2024', 26.20, 1.58, 0.02);
INSERT INTO `agg_weather_monthly_temp` VALUES (3, 3, '12/2024', 27.03, 1.00, 0.18);
INSERT INTO `agg_weather_monthly_temp` VALUES (4, 4, '12/2024', 21.93, 1.25, 0.01);
INSERT INTO `agg_weather_monthly_temp` VALUES (5, 5, '12/2024', 16.01, 2.08, 0.22);
INSERT INTO `agg_weather_monthly_temp` VALUES (6, 6, '12/2024', 21.71, 1.04, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (7, 7, '12/2024', 27.01, 1.54, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (8, 8, '12/2024', 23.95, 1.92, 0.37);
INSERT INTO `agg_weather_monthly_temp` VALUES (9, 9, '12/2024', 26.10, 1.67, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (10, 10, '12/2024', 25.30, 2.50, 0.06);
INSERT INTO `agg_weather_monthly_temp` VALUES (11, 11, '12/2024', 24.93, 1.83, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (12, 12, '12/2024', 26.46, 1.92, 0.36);
INSERT INTO `agg_weather_monthly_temp` VALUES (13, 13, '12/2024', 26.43, 1.54, 0.22);
INSERT INTO `agg_weather_monthly_temp` VALUES (14, 14, '12/2024', 16.42, 1.75, 0.12);
INSERT INTO `agg_weather_monthly_temp` VALUES (15, 15, '12/2024', 23.88, 1.00, 0.24);
INSERT INTO `agg_weather_monthly_temp` VALUES (16, 16, '12/2024', 24.20, 1.33, 0.01);
INSERT INTO `agg_weather_monthly_temp` VALUES (17, 17, '12/2024', 21.68, 2.42, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (18, 18, '12/2024', 17.89, 2.42, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (19, 19, '12/2024', 26.89, 1.63, 0.32);
INSERT INTO `agg_weather_monthly_temp` VALUES (20, 20, '12/2024', 20.89, 1.79, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (21, 21, '12/2024', 16.12, 3.00, 0.61);
INSERT INTO `agg_weather_monthly_temp` VALUES (22, 22, '12/2024', 21.85, 1.00, 0.28);
INSERT INTO `agg_weather_monthly_temp` VALUES (23, 23, '12/2024', 20.83, 3.00, 0.03);
INSERT INTO `agg_weather_monthly_temp` VALUES (24, 24, '12/2024', 22.13, 1.13, 0.04);
INSERT INTO `agg_weather_monthly_temp` VALUES (25, 25, '12/2024', 22.67, 1.00, 0.04);
INSERT INTO `agg_weather_monthly_temp` VALUES (26, 26, '12/2024', 26.42, 2.00, 0.15);
INSERT INTO `agg_weather_monthly_temp` VALUES (27, 27, '12/2024', 19.56, 2.75, 0.25);
INSERT INTO `agg_weather_monthly_temp` VALUES (28, 28, '12/2024', 22.59, 1.04, 0.12);
INSERT INTO `agg_weather_monthly_temp` VALUES (29, 29, '12/2024', 24.61, 1.00, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (30, 30, '12/2024', 27.14, 1.00, 0.35);
INSERT INTO `agg_weather_monthly_temp` VALUES (31, 31, '12/2024', 20.53, 1.92, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (32, 32, '12/2024', 15.07, 2.42, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (33, 33, '12/2024', 17.93, 2.38, 0.07);
INSERT INTO `agg_weather_monthly_temp` VALUES (34, 34, '12/2024', 18.39, 1.42, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (35, 35, '12/2024', 16.76, 3.00, 0.09);
INSERT INTO `agg_weather_monthly_temp` VALUES (36, 36, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly_temp` VALUES (37, 37, '12/2024', 22.53, 1.08, 0.03);
INSERT INTO `agg_weather_monthly_temp` VALUES (38, 38, '12/2024', 22.92, 1.21, 0.14);
INSERT INTO `agg_weather_monthly_temp` VALUES (39, 39, '12/2024', 25.99, 1.25, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (40, 40, '12/2024', 19.96, 2.17, 0.53);
INSERT INTO `agg_weather_monthly_temp` VALUES (41, 41, '12/2024', 22.66, 3.00, 0.14);
INSERT INTO `agg_weather_monthly_temp` VALUES (42, 42, '12/2024', 21.89, 2.17, 0.16);
INSERT INTO `agg_weather_monthly_temp` VALUES (43, 43, '12/2024', 22.59, 2.50, 0.30);
INSERT INTO `agg_weather_monthly_temp` VALUES (44, 44, '12/2024', 21.66, 3.00, 0.25);
INSERT INTO `agg_weather_monthly_temp` VALUES (45, 45, '12/2024', 20.64, 1.13, 0.03);
INSERT INTO `agg_weather_monthly_temp` VALUES (46, 46, '12/2024', 21.83, 2.42, 0.09);
INSERT INTO `agg_weather_monthly_temp` VALUES (47, 47, '12/2024', 27.18, 1.21, 0.02);
INSERT INTO `agg_weather_monthly_temp` VALUES (48, 48, '12/2024', 17.14, 2.33, 0.05);
INSERT INTO `agg_weather_monthly_temp` VALUES (49, 49, '12/2024', 27.13, 1.38, 0.11);
INSERT INTO `agg_weather_monthly_temp` VALUES (50, 50, '12/2024', 23.13, 1.17, 0.09);
INSERT INTO `agg_weather_monthly_temp` VALUES (51, 51, '12/2024', 19.93, 1.00, 0.12);
INSERT INTO `agg_weather_monthly_temp` VALUES (52, 52, '12/2024', 22.05, 2.33, 0.07);
INSERT INTO `agg_weather_monthly_temp` VALUES (53, 53, '12/2024', 26.25, 2.25, 0.13);
INSERT INTO `agg_weather_monthly_temp` VALUES (54, 54, '12/2024', 26.65, 1.88, 0.00);
INSERT INTO `agg_weather_monthly_temp` VALUES (55, 55, '12/2024', 27.35, 1.33, 0.01);
INSERT INTO `agg_weather_monthly_temp` VALUES (56, 56, '12/2024', 19.44, 2.17, 0.23);
INSERT INTO `agg_weather_monthly_temp` VALUES (57, 57, '12/2024', 26.20, 2.17, 0.33);
INSERT INTO `agg_weather_monthly_temp` VALUES (58, 58, '12/2024', 20.71, 1.33, 0.35);
INSERT INTO `agg_weather_monthly_temp` VALUES (59, 59, '12/2024', 19.52, 2.33, 0.74);

-- ----------------------------
-- Procedure structure for SwapForecastTables
-- ----------------------------
DROP PROCEDURE IF EXISTS `SwapForecastTables`;
delimiter ;;
CREATE PROCEDURE `SwapForecastTables`()
BEGIN
    -- Đổi tên bảng tạm thời thành bảng A
    RENAME TABLE datamart.agg_weather_daily_temp TO temp_table;
    
    -- Đổi tên bảng B thành bảng A
    RENAME TABLE datamart.agg_weather_daily TO datamart.agg_weather_daily_temp;
    
    -- Đổi tên bảng tạm thời thành bảng B
    RENAME TABLE temp_table TO datamart.agg_weather_daily;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
