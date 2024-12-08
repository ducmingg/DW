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

 Date: 08/12/2024 16:07:32
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
  `time_stamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `path_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_processing` tinyint(1) NULL DEFAULT NULL,
  `crawl_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'tomorrow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 693 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for checkStatusBeforeStaging
-- ----------------------------
DROP PROCEDURE IF EXISTS `checkStatusBeforeStaging`;
delimiter ;;
CREATE PROCEDURE `checkStatusBeforeStaging`()
BEGIN
	select 1 from configs 
	where id = 1 and status= 'CRAWLED';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for check_crawl_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `check_crawl_date`;
delimiter ;;
CREATE PROCEDURE `check_crawl_date`(OUT is_match BOOLEAN)
BEGIN
    DECLARE count_match INT;
	SELECT COUNT(*) INTO count_match
    FROM configs
    WHERE crawl_date = 'tomorrow';

    IF count_match > 0 THEN
        SET is_match = TRUE;
    ELSE
        SET is_match = FALSE;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for control_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `control_process`;
delimiter ;;
CREATE PROCEDURE `control_process`()
BEGIN

DECLARE count INT;

    -- Lấy số lượng bản ghi có trạng thái 'ERROR'
    SELECT COUNT(*) INTO count FROM configs WHERE status = 'ERROR';

    -- Kiểm tra và gọi thủ tục tương ứng
    IF count > 0 THEN
        CALL reset();
    ELSE
        CALL start_process();
    END IF;
 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for countProcessing
-- ----------------------------
DROP PROCEDURE IF EXISTS `countProcessing`;
delimiter ;;
CREATE PROCEDURE `countProcessing`()
BEGIN
SELECT COUNT(*) AS count FROM configs WHERE is_processing = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getAllConfigs
-- ----------------------------
DROP PROCEDURE IF EXISTS `getAllConfigs`;
delimiter ;;
CREATE PROCEDURE `getAllConfigs`()
BEGIN
    SELECT * FROM configs ORDER BY id ASC;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getConfigs
-- ----------------------------
DROP PROCEDURE IF EXISTS `getConfigs`;
delimiter ;;
CREATE PROCEDURE `getConfigs`()
BEGIN
    SELECT * FROM configs WHERE flag = 1 ORDER BY id ASC;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getDirectory
-- ----------------------------
DROP PROCEDURE IF EXISTS `getDirectory`;
delimiter ;;
CREATE PROCEDURE `getDirectory`()
BEGIN
select directory from configs
where id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getFile_name
-- ----------------------------
DROP PROCEDURE IF EXISTS `getFile_name`;
delimiter ;;
CREATE PROCEDURE `getFile_name`()
BEGIN
	select file_name from configs
	where id = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getRecipientDatamart
-- ----------------------------
DROP PROCEDURE IF EXISTS `getRecipientDatamart`;
delimiter ;;
CREATE PROCEDURE `getRecipientDatamart`()
BEGIN
	select email from configs
	where id  =4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getRecipientExtract
-- ----------------------------
DROP PROCEDURE IF EXISTS `getRecipientExtract`;
delimiter ;;
CREATE PROCEDURE `getRecipientExtract`()
BEGIN
	select email from configs
	where id  =1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getRecipientStaging
-- ----------------------------
DROP PROCEDURE IF EXISTS `getRecipientStaging`;
delimiter ;;
CREATE PROCEDURE `getRecipientStaging`()
BEGIN
	select email from configs
	where id  =2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getRecipientWarehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `getRecipientWarehouse`;
delimiter ;;
CREATE PROCEDURE `getRecipientWarehouse`()
BEGIN
	select email from configs
	where id  =3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getStatusExtract
-- ----------------------------
DROP PROCEDURE IF EXISTS `getStatusExtract`;
delimiter ;;
CREATE PROCEDURE `getStatusExtract`()
BEGIN
	select status from configs where id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getStatusStaging
-- ----------------------------
DROP PROCEDURE IF EXISTS `getStatusStaging`;
delimiter ;;
CREATE PROCEDURE `getStatusStaging`()
BEGIN
	select status from configs where id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_crawl_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_crawl_date`;
delimiter ;;
CREATE PROCEDURE `get_crawl_date`()
BEGIN
select crawl_date from configs where id  = 1;
END
;;
delimiter ;

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
-- Procedure structure for insert_into_temp_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_into_temp_table`;
delimiter ;;
CREATE PROCEDURE `insert_into_temp_table`()
BEGIN
    -- Tạo temporary table nếu chưa tồn tại
CREATE TEMPORARY TABLE IF NOT EXISTS staging.temp_table LIKE staging.staging;
    
    -- Xóa dữ liệu cũ trong temp table
    TRUNCATE staging.temp_table;
    
    -- Insert dữ liệu vào temp_table sử dụng subquery để lấy bản ghi đầu tiên của mỗi nhóm
    INSERT INTO staging.temp_table
    SELECT s.*
    FROM staging.staging s
    WHERE (s.id) IN (
        SELECT MIN(id)
        FROM staging.staging
        GROUP BY TRIM(SUBSTRING_INDEX(name, ',', 1))
    );

    -- Cập nhật province_id với giá trị "VN" + MIN(id) của mỗi nhóm
    UPDATE staging.temp_table t
    JOIN (
        SELECT TRIM(SUBSTRING_INDEX(name, ',', 1)) AS province_name, MIN(id) AS min_id
        FROM staging.staging
        GROUP BY TRIM(SUBSTRING_INDEX(name, ',', 1))
    ) AS subquery
    ON TRIM(SUBSTRING_INDEX(t.name, ',', 1)) = subquery.province_name
    SET t.province_id = CONCAT('VN', subquery.min_id);

    -- Hiển thị kết quả
--     SELECT * FROM temp_table;
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
-- Procedure structure for insert_status_logs_datamart_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_datamart_error`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_datamart_error`(in des VARCHAR(255))
BEGIN

	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(4,'ERROR',des,NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_datamart_finished
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_datamart_finished`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_datamart_finished`()
BEGIN
    INSERT INTO `logs`(configs_id, status, description, create_at)
    VALUES(4, 'FINISHED', CONCAT('Finished: DataWarehouse Date: ', NOW()), NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_datamart_mloaded
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_datamart_mloaded`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_datamart_mloaded`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(4,'MLOADED','Loading data to DataMart success',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_datamart_mloading
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_datamart_mloading`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_datamart_mloading`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(4,'MLOADING','Loading data to DataMart',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_extract_crawled
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_extract_crawled`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_extract_crawled`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(1,'CRAWLED','Crawling completed successfully',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_extract_crawling
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_extract_crawling`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_extract_crawling`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(1,'CRAWLING','Start crawling weather data',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_extract_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_extract_error`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_extract_error`(in des VARCHAR(255))
BEGIN

	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(1,'ERROR',des,NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_staging_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_staging_error`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_staging_error`(in des VARCHAR(255))
BEGIN

	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(2,'ERROR',des,NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_staging_extracted
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_staging_extracted`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_staging_extracted`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(2,'EXTRACTED','Extract completed successfully',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_staging_extracting
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_staging_extracting`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_staging_extracting`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(2,'EXTRACTING','Extracting weather data to Staging',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_staging_start_extract
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_staging_start_extract`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_staging_start_extract`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(2,'EXTRACT','Start extract weather data to Staging',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_warehouse_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_warehouse_error`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_warehouse_error`(in des VARCHAR(255))
BEGIN

	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(3,'ERROR',des,NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_warehouse_wh_loaded
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_warehouse_wh_loaded`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_warehouse_wh_loaded`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(3,'WH_LOADED','Load to warehouse success',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_logs_warehouse_wh_loading
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_logs_warehouse_wh_loading`;
delimiter ;;
CREATE PROCEDURE `insert_status_logs_warehouse_wh_loading`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(3,'WH_LOADING','Loading data to warehouse',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_status_log_staging_truncated
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_status_log_staging_truncated`;
delimiter ;;
CREATE PROCEDURE `insert_status_log_staging_truncated`()
BEGIN
	INSERT INTO `logs`(configs_id,status,description,create_at)
	VALUES(2,'TRUNCATED','Truncated Staging',NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for loadToStaging
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadToStaging`;
delimiter ;;
CREATE PROCEDURE `loadToStaging`(OUT p_query VARCHAR(1000))
BEGIN
    DECLARE pathFile VARCHAR(255);

    -- Lấy đường dẫn tệp từ bảng configs
    SELECT path_file INTO pathFile
    FROM configs
    WHERE id = 1;

    -- Xây dựng câu lệnh SQL động với pathFile
    SET p_query = CONCAT(
        'LOAD DATA LOCAL INFILE ''', pathFile, ''' ',
        'INTO TABLE staging.staging ',
        'CHARACTER SET utf8mb4 ',
        'FIELDS TERMINATED BY '','' ',
        'ENCLOSED BY ''"'' ',
        'LINES TERMINATED BY ''\n'' ',
        'IGNORE 1 ROWS ',
        '(`name`, `datetime`, `temp`, `feelslike`, `dew`, `humidity`, `precip`, ',
        '`precipprob`, `preciptype`, `snow`, `snowdepth`, `windgust`, ',
        '`windspeed`, `winddir`, `pressure`, `cloudcover`, `visibility`, ',
        '`solarradiation`, `solarenergy`, `uvindex`, `severerisk`, `conditions`, ',
        '`icon`, `stations`)'
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reset
-- ----------------------------
DROP PROCEDURE IF EXISTS `reset`;
delimiter ;;
CREATE PROCEDURE `reset`()
BEGIN
    DECLARE stt1 VARCHAR(255);
    DECLARE stt2 VARCHAR(255);
    DECLARE stt3 VARCHAR(255);
    DECLARE stt4 VARCHAR(255);
    
    -- Lấy giá trị 'status' từ bảng 'configs' vào các biến
    SELECT status INTO stt1 FROM configs WHERE id = 1;
    SELECT status INTO stt2 FROM configs WHERE id = 2;
    SELECT status INTO stt3 FROM configs WHERE id = 3;
    SELECT status INTO stt4 FROM configs WHERE id = 4;
    
    -- Kiểm tra và cập nhật status nếu là 'ERROR'
    IF stt1 = 'ERROR' THEN
      CALL start_process();
    END IF;
    
    IF stt2 = 'ERROR' THEN
              CALL reset_at_staging();
    END IF;
    
    -- Bạn có thể tiếp tục kiểm tra và cập nhật cho các ID khác nếu cần.
    IF stt3 = 'ERROR' THEN
              CALL reset_at_warehouse();

    END IF;
    
    IF stt4 = 'ERROR' THEN
               CALL reset_at_datamart();

    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reset_at_staging
-- ----------------------------
DROP PROCEDURE IF EXISTS `reset_at_staging`;
delimiter ;;
CREATE PROCEDURE `reset_at_staging`()
BEGIN
 UPDATE configs
    SET flag = 1;

    -- Update flag và status cho id = 1
    UPDATE configs
    SET flag = 0, status = 'CRAWLED'
    WHERE id = 1;

    -- Update status cho các id còn lại
    UPDATE configs
    SET status = 'EXTRACTED'
    WHERE id = 2;

    UPDATE configs
    SET status = 'WH_LOADED'
    WHERE id = 3;

    UPDATE configs
    SET status = 'MLOADED'
    WHERE id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reset_at_warehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `reset_at_warehouse`;
delimiter ;;
CREATE PROCEDURE `reset_at_warehouse`()
BEGIN
 UPDATE configs
    SET flag = 1;

    -- Update flag và status cho id = 1
    UPDATE configs
    SET flag = 0, status = 'CRAWLED'
    WHERE id = 1;

    -- Update status cho các id còn lại
    UPDATE configs
    SET flag = 0, status = 'EXTRACTED'
    WHERE id = 2;

    UPDATE configs
    SET status = 'WH_LOADED'
    WHERE id = 3;

    UPDATE configs
    SET status = 'MLOADED'
    WHERE id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reset_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `reset_process`;
delimiter ;;
CREATE PROCEDURE `reset_process`()
BEGIN
    -- Update toàn bộ flag thành 1
    UPDATE configs
    SET flag = 0;

    -- Update status cho các id cụ thể
    UPDATE configs
    SET status = 'FINISHED'
    WHERE id = 1;

    UPDATE configs
    SET status = 'EXTRACTED'
    WHERE id = 2;

    UPDATE configs
    SET status = 'WH_LOADED'
    WHERE id = 3;

    UPDATE configs
    SET status = 'MLOADED'
    WHERE id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for start_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `start_process`;
delimiter ;;
CREATE PROCEDURE `start_process`()
BEGIN
    UPDATE configs
    SET flag = 1;

    -- Update status cho các id cụ thể
    UPDATE configs
    SET status = 'FINISHED'
    WHERE id = 1;

    UPDATE configs
    SET status = 'EXTRACTED'
    WHERE id = 2;

    UPDATE configs
    SET status = 'WH_LOADED'
    WHERE id = 3;

    UPDATE configs
    SET status = 'MLOADED'
    WHERE id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SwapForecastTablesDaily
-- ----------------------------
DROP PROCEDURE IF EXISTS `SwapForecastTablesDaily`;
delimiter ;;
CREATE PROCEDURE `SwapForecastTablesDaily`()
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

-- ----------------------------
-- Procedure structure for SwapForecastTablesMonthly
-- ----------------------------
DROP PROCEDURE IF EXISTS `SwapForecastTablesMonthly`;
delimiter ;;
CREATE PROCEDURE `SwapForecastTablesMonthly`()
BEGIN
    -- Đổi tên bảng tạm thời thành bảng A
    RENAME TABLE datamart.agg_weather_monthly_temp TO temp_table;
    
    -- Đổi tên bảng B thành bảng A
    RENAME TABLE datamart.agg_weather_monthly TO datamart.agg_weather_monthly_temp;
    
    -- Đổi tên bảng tạm thời thành bảng B
    RENAME TABLE temp_table TO datamart.agg_weather_monthly;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_avg_weather_daily
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_avg_weather_daily`;
delimiter ;;
CREATE PROCEDURE `transform_avg_weather_daily`()
BEGIN
INSERT INTO warehouse.agg_weather_daily (date_id, location_id, avg_temp_daily, avg_humidity_daily, avg_precip_daily)
SELECT 
    wf.date_id,
    wf.location_id,
    ROUND(AVG(wf.temperature), 2) AS avg_temp_daily,
    ROUND(AVG(wf.humidity_id), 2) AS avg_humidity_daily,
    ROUND(AVG(wf.precip), 2) AS avg_precip_daily
FROM 
    warehouse.weather_fact wf
JOIN 
    warehouse.dim_location dl ON wf.location_id = dl.id
JOIN 
    warehouse.dim_date dd ON dd.date_sk = wf.date_id
where not EXISTS (
select 1 
from warehouse.agg_weather_daily
where warehouse.agg_weather_daily.date_id = dd.date_sk
)
GROUP BY 
    wf.date_id, wf.location_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_avg_weather_monthly
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_avg_weather_monthly`;
delimiter ;;
CREATE PROCEDURE `transform_avg_weather_monthly`()
BEGIN
INSERT INTO warehouse.agg_weather_monthly (location_id,monthly,  avg_temp_monthly, avg_humidity_monthly, avg_precip_monthly)
SELECT 
    wf.location_id,
		DATE_FORMAT(dd.`datetime`, '%m/%Y') AS monthly,  -- Đổi tên alias thành formatted_month
    ROUND(AVG(wf.temperature), 2) AS avg_temp_monthly,
    ROUND(AVG(wf.humidity_id), 2) AS avg_humidity_monthly,
    ROUND(AVG(wf.precip), 2) AS avg_precip_monthly
FROM 
    warehouse.weather_fact wf
JOIN 
    warehouse.dim_location dl ON wf.location_id = dl.id
JOIN 
    warehouse.dim_date dd ON dd.date_sk = wf.date_id
where not EXISTS (
select 1 
from warehouse.agg_weather_monthly
where warehouse.agg_weather_monthly.monthly =DATE_FORMAT(dd.`datetime`, '%m/%Y')
)		
GROUP BY 
    monthly, wf.location_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_cloudcover_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_cloudcover_dim`;
delimiter ;;
CREATE PROCEDURE `transform_cloudcover_dim`()
BEGIN
 -- Chèn các giá trị cloudcover duy nhất vào dim_cloudcover theo nhóm
    INSERT INTO warehouse.dim_cloudcover (cloudcover)
    SELECT DISTINCT 
        CASE
            WHEN s.cloudcover >= 0 AND s.cloudcover <= 20 THEN 'Clear'
            WHEN s.cloudcover >= 21 AND s.cloudcover <= 40 THEN 'Partly Cloudy'
            WHEN s.cloudcover >= 41 AND s.cloudcover <= 60 THEN 'Mostly Cloudy'
            WHEN s.cloudcover >= 61 AND s.cloudcover <= 80 THEN 'Cloudy'
            WHEN s.cloudcover >= 81 AND s.cloudcover <= 100 THEN 'Overcast'
            ELSE 'Unknown'
        END AS cloudcover
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_cloudcover d
        WHERE d.cloudcover = 
            CASE
                WHEN s.cloudcover >= 0 AND s.cloudcover <= 20 THEN 'Clear'
                WHEN s.cloudcover >= 21 AND s.cloudcover <= 40 THEN 'Partly Cloudy'
                WHEN s.cloudcover >= 41 AND s.cloudcover <= 60 THEN 'Mostly Cloudy'
                WHEN s.cloudcover >= 61 AND s.cloudcover <= 80 THEN 'Cloudy'
                WHEN s.cloudcover >= 81 AND s.cloudcover <= 100 THEN 'Overcast'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
    JOIN warehouse.dim_cloudcover d
    ON
        CASE
            WHEN s.cloudcover >= 0 AND s.cloudcover <= 20 THEN 'Clear'
            WHEN s.cloudcover >= 21 AND s.cloudcover <= 40 THEN 'Partly Cloudy'
            WHEN s.cloudcover >= 41 AND s.cloudcover <= 60 THEN 'Mostly Cloudy'
            WHEN s.cloudcover >= 61 AND s.cloudcover <= 80 THEN 'Cloudy'
            WHEN s.cloudcover >= 81 AND s.cloudcover <= 100 THEN 'Overcast'
            ELSE 'Unknown'
        END = d.cloudcover
    SET s.cloudcover_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_conditions_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_conditions_dim`;
delimiter ;;
CREATE PROCEDURE `transform_conditions_dim`()
BEGIN
    INSERT INTO warehouse.dim_conditions (conditions)
    SELECT DISTINCT s.conditions
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_conditions d
        WHERE d.conditions = s.conditions
    );
		
				update staging.staging as s
		join warehouse.dim_conditions as dim
		on s.conditions = dim.conditions
		set s.conditions_id = dim.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_datamart_daily
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_datamart_daily`;
delimiter ;;
CREATE PROCEDURE `transform_datamart_daily`()
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
    CALL SwapForecastTablesDaily();

    -- Commit transaction sau khi thực hiện thành công
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_datamart_monthly
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_datamart_monthly`;
delimiter ;;
CREATE PROCEDURE `transform_datamart_monthly`()
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
    TRUNCATE TABLE datamart.agg_weather_monthly_temp;

    -- Chèn dữ liệu từ warehouse.weather_aggregate vào datamart.forecast_temp
    INSERT INTO datamart.agg_weather_monthly_temp
    (location_id, monthly, avg_temp_monthly, avg_humidity_monthly, avg_precip_monthly)
    SELECT 
        wa.location_id,
        wa.monthly,
        wa.avg_temp_monthly,
        wa.avg_humidity_monthly,
        wa.avg_precip_monthly
    FROM warehouse.agg_weather_monthly wa;

    -- Gọi procedure SwapForecastTables để đổi tên các bảng trong datamart
    CALL SwapForecastTablesMonthly();

    -- Commit transaction sau khi thực hiện thành công
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_date_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_date_dim`;
delimiter ;;
CREATE PROCEDURE `transform_date_dim`()
BEGIN
	update staging.staging s
join warehouse.dim_date d
on CAST(d.datetime as DATE) = CAST(s.datetime AS DATE)
set s.date_id = d.date_sk;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_humidity_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_humidity_dim`;
delimiter ;;
CREATE PROCEDURE `transform_humidity_dim`()
BEGIN
INSERT INTO warehouse.dim_humidity (humidity)
    SELECT DISTINCT 
        CASE
            WHEN s.humidity < 30 THEN 'Very Low'
            WHEN s.humidity >= 30 AND s.humidity < 50 THEN 'Low'
            WHEN s.humidity >= 50 AND s.humidity < 70 THEN 'Normal'
            WHEN s.humidity >= 70 AND s.humidity < 90 THEN 'High'
            WHEN s.humidity >= 90 THEN 'Very High'
            ELSE 'Unknown'
        END AS humidity
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_humidity d
        WHERE d.humidity = 
            CASE
                WHEN s.humidity < 30 THEN 'Very Low'
                WHEN s.humidity >= 30 AND s.humidity < 50 THEN 'Low'
                WHEN s.humidity >= 50 AND s.humidity < 70 THEN 'Normal'
                WHEN s.humidity >= 70 AND s.humidity < 90 THEN 'High'
                WHEN s.humidity >= 90 THEN 'Very High'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
    JOIN warehouse.dim_humidity d
    ON
        CASE
            WHEN s.humidity < 30 THEN 'Very Low'
            WHEN s.humidity >= 30 AND s.humidity < 50 THEN 'Low'
            WHEN s.humidity >= 50 AND s.humidity < 70 THEN 'Normal'
            WHEN s.humidity >= 70 AND s.humidity < 90 THEN 'High'
            WHEN s.humidity >= 90 THEN 'Very High'
            ELSE 'Unknown'
        END = d.humidity
    SET s.humidity_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_icon_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_icon_dim`;
delimiter ;;
CREATE PROCEDURE `transform_icon_dim`()
BEGIN
    INSERT INTO warehouse.dim_icon (icon)
    SELECT DISTINCT s.icon
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_icon d
        WHERE d.icon = s.icon
    );
		
				update staging.staging as s
		join warehouse.dim_icon as dim
		on s.icon = dim.icon
		set s.icon_id = dim.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_location_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_location_dim`;
delimiter ;;
CREATE PROCEDURE `transform_location_dim`()
BEGIN
	CALL insert_into_temp_table();
	

	INSERT INTO warehouse.dim_location (province_id,province,country)
	SELECT province_id,TRIM(SUBSTRING_INDEX(name, ',', 1)),TRIM(SUBSTRING_INDEX(name, ',', -1))
	FROM staging.temp_table t
	WHERE NOT EXISTS (
    SELECT 1
    FROM warehouse.dim_location d
    WHERE d.province = TRIM(SUBSTRING_INDEX(t.name, ',', 1))
     AND d.country = TRIM(SUBSTRING_INDEX(t.name, ',', -1)));
		 
	update staging.staging as s
	join warehouse.dim_location as dim
	on TRIM(SUBSTRING_INDEX(s.name, ',', 1)) = dim.province
	and TRIM(SUBSTRING_INDEX(name, ',', -1)) = dim.country
	set s.LOCATION_ID = dim.id,
	s.province_id = dim.province_id;
-- 	
-- 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_preciptype_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_preciptype_dim`;
delimiter ;;
CREATE PROCEDURE `transform_preciptype_dim`()
BEGIN
    INSERT INTO warehouse.dim_preciptype (preciptype)
    SELECT DISTINCT preciptype
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_preciptype d
        WHERE d.preciptype = s.preciptype
    );
		
		update staging.staging as s
		join warehouse.dim_preciptype as dim
		on s.preciptype = dim.preciptype
		set s.preciptype_id = dim.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_pressure_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_pressure_dim`;
delimiter ;;
CREATE PROCEDURE `transform_pressure_dim`()
BEGIN
    -- Chèn các giá trị pressure duy nhất vào dim_pressure theo nhóm
    INSERT INTO warehouse.dim_pressure (pressure)
    SELECT DISTINCT 
        CASE
            WHEN s.pressure < 950 THEN 'Very Low'
            WHEN s.pressure >= 950 AND s.pressure < 1000 THEN 'Low'
            WHEN s.pressure >= 1000 AND s.pressure < 1020 THEN 'Normal'
            WHEN s.pressure >= 1020 AND s.pressure < 1050 THEN 'High'
            WHEN s.pressure >= 1050 THEN 'Very High'
            ELSE 'Unknown'
        END AS pressure
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_pressure d
        WHERE d.pressure = 
            CASE
                WHEN s.pressure < 950 THEN 'Very Low'
                WHEN s.pressure >= 950 AND s.pressure < 1000 THEN 'Low'
                WHEN s.pressure >= 1000 AND s.pressure < 1020 THEN 'Normal'
                WHEN s.pressure >= 1020 AND s.pressure < 1050 THEN 'High'
                WHEN s.pressure >= 1050 THEN 'Very High'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
    JOIN warehouse.dim_pressure d
    ON
        CASE
            WHEN s.pressure < 950 THEN 'Very Low'
            WHEN s.pressure >= 950 AND s.pressure < 1000 THEN 'Low'
            WHEN s.pressure >= 1000 AND s.pressure < 1020 THEN 'Normal'
            WHEN s.pressure >= 1020 AND s.pressure < 1050 THEN 'High'
            WHEN s.pressure >= 1050 THEN 'Very High'
            ELSE 'Unknown'
        END = d.pressure
    SET s.pressure_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_stations_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_stations_dim`;
delimiter ;;
CREATE PROCEDURE `transform_stations_dim`()
BEGIN
    INSERT INTO warehouse.dim_stations (stations)
    SELECT DISTINCT s.stations
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_stations d
        WHERE d.stations = s.stations
    );
		
				update staging.staging as s
		join warehouse.dim_stations as dim
		on s.stations = dim.stations
		set s.stations_id = dim.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_time_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_time_dim`;
delimiter ;;
CREATE PROCEDURE `transform_time_dim`()
BEGIN
		update staging.staging s
join warehouse.dim_time d
on CAST(SUBSTRING(datetime, 12, 2) AS UNSIGNED) = d.`hour`
set s.time_id = d.time_sk;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_uvindex_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_uvindex_dim`;
delimiter ;;
CREATE PROCEDURE `transform_uvindex_dim`()
BEGIN
INSERT INTO warehouse.dim_uvindex (uvindex)
    SELECT DISTINCT 
        CASE
            WHEN s.uvindex >= 0 AND s.uvindex <= 2 THEN 'Low'
            WHEN s.uvindex >= 3 AND s.uvindex <= 5 THEN 'Moderate'
            WHEN s.uvindex >= 6 AND s.uvindex <= 7 THEN 'High'
            WHEN s.uvindex >= 8 AND s.uvindex <= 10 THEN 'Very High'
            WHEN s.uvindex >= 11 THEN 'Extreme'
            ELSE 'Unknown'
        END AS uvindex
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_uvindex d
        WHERE d.uvindex = 
            CASE
                WHEN s.uvindex >= 0 AND s.uvindex <= 2 THEN 'Low'
                WHEN s.uvindex >= 3 AND s.uvindex <= 5 THEN 'Moderate'
                WHEN s.uvindex >= 6 AND s.uvindex <= 7 THEN 'High'
                WHEN s.uvindex >= 8 AND s.uvindex <= 10 THEN 'Very High'
                WHEN s.uvindex >= 11 THEN 'Extreme'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
    JOIN warehouse.dim_uvindex d
    ON
        CASE
            WHEN s.uvindex >= 0 AND s.uvindex <= 2 THEN 'Low'
            WHEN s.uvindex >= 3 AND s.uvindex <= 5 THEN 'Moderate'
            WHEN s.uvindex >= 6 AND s.uvindex <= 7 THEN 'High'
            WHEN s.uvindex >= 8 AND s.uvindex <= 10 THEN 'Very High'
            WHEN s.uvindex >= 11 THEN 'Extreme'
            ELSE 'Unknown'
        END = d.uvindex
    SET s.uvindex_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_weather_fact
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_weather_fact`;
delimiter ;;
CREATE PROCEDURE `transform_weather_fact`()
BEGIN
    INSERT INTO warehouse.weather_fact (
        location_id,
        time_id,
        date_id,
        stations_id,
        preciptype_id,
        conditions_id,
        winddir_id,
        icon_id,
        pressure_id,
        humidity_id,
        winspeed_id,
        uvindex_id,
        cloudcover_id,
        temperature,
        feels_like,
        dew_point,
        precip,
        precip_prob,
        snow,
        snow_depth,
        wind_gust,
        visibility,
        solar_radiation,
        solar_energy,
        severe_risk
    )
    SELECT
        LOCATION_ID AS location_id,
        time_id AS time_id,
        date_id AS date_id,
        stations_id AS stations_id,
        preciptype_id AS preciptype_id,
        conditions_id AS conditions_id,
        winddir_id AS winddir_id,
        icon_id AS icon_id,
        pressure_id AS pressure_id,
        humidity_id AS humidity_id,
        windspeed_id AS winspeed_id,
        uvindex_id AS uvindex_id,
        cloudcover_id AS cloudcover_id,
        temp AS temperature,
        feelslike AS feels_like,
        dew AS dew_point,
        precip AS precip,
        precipprob AS precip_prob,
        snow AS snow,
        snowdepth AS snow_depth,
        windgust AS wind_gust,
        visibility AS visibility,
        solarradiation AS solar_radiation,
        solarenergy AS solar_energy,
        severerisk AS severe_risk
    FROM
        staging.staging;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_winddir_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_winddir_dim`;
delimiter ;;
CREATE PROCEDURE `transform_winddir_dim`()
BEGIN
    -- Chèn dữ liệu vào bảng dim_winddir
    INSERT INTO warehouse.dim_winddir (winddir)
    SELECT DISTINCT 
        CASE
            WHEN s.winddir >= 0 AND s.winddir < 45 THEN 'North'
            WHEN s.winddir >= 45 AND s.winddir < 90 THEN 'North-East'
            WHEN s.winddir >= 90 AND s.winddir < 135 THEN 'East'
            WHEN s.winddir >= 135 AND s.winddir < 180 THEN 'South-East'
            WHEN s.winddir >= 180 AND s.winddir < 225 THEN 'South'
            WHEN s.winddir >= 225 AND s.winddir < 270 THEN 'South-West'
            WHEN s.winddir >= 270 AND s.winddir < 315 THEN 'West'
            WHEN s.winddir >= 315 AND s.winddir <= 360 THEN 'North-West'
            ELSE 'Unknown'
        END AS winddir
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_winddir d
        WHERE d.winddir = 
            CASE
                WHEN s.winddir >= 0 AND s.winddir < 45 THEN 'North'
                WHEN s.winddir >= 45 AND s.winddir < 90 THEN 'North-East'
                WHEN s.winddir >= 90 AND s.winddir < 135 THEN 'East'
                WHEN s.winddir >= 135 AND s.winddir < 180 THEN 'South-East'
                WHEN s.winddir >= 180 AND s.winddir < 225 THEN 'South'
                WHEN s.winddir >= 225 AND s.winddir < 270 THEN 'South-West'
                WHEN s.winddir >= 270 AND s.winddir < 315 THEN 'West'
                WHEN s.winddir >= 315 AND s.winddir <= 360 THEN 'North-West'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
		join warehouse.dim_winddir d
		on
        CASE
            WHEN s.winddir >= 0 AND s.winddir < 45 THEN 'North'
            WHEN s.winddir >= 45 AND s.winddir < 90 THEN 'North-East'
            WHEN s.winddir >= 90 AND s.winddir < 135 THEN 'East'
            WHEN s.winddir >= 135 AND s.winddir < 180 THEN 'South-East'
            WHEN s.winddir >= 180 AND s.winddir < 225 THEN 'South'
            WHEN s.winddir >= 225 AND s.winddir < 270 THEN 'South-West'
            WHEN s.winddir >= 270 AND s.winddir < 315 THEN 'West'
            WHEN s.winddir >= 315 AND s.winddir <= 360 THEN 'North-West'
            ELSE 'Unknown'
        END = d.winddir
		set s.winddir_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for transform_windspeed_dim
-- ----------------------------
DROP PROCEDURE IF EXISTS `transform_windspeed_dim`;
delimiter ;;
CREATE PROCEDURE `transform_windspeed_dim`()
BEGIN
INSERT INTO warehouse.dim_windspeed (windspeed)
    SELECT DISTINCT 
        CASE
            WHEN s.windspeed < 1 THEN 'Calm'
            WHEN s.windspeed >= 1 AND s.windspeed < 5 THEN 'Light Air'
            WHEN s.windspeed >= 6 AND s.windspeed < 11 THEN 'Light Breeze'
            WHEN s.windspeed >= 12 AND s.windspeed < 19 THEN 'Moderate Breeze'
            WHEN s.windspeed >= 20 AND s.windspeed < 28 THEN 'Strong Breeze'
            WHEN s.windspeed >= 29 AND s.windspeed < 38 THEN 'Near Gale'
            WHEN s.windspeed >= 39 AND s.windspeed < 49 THEN 'Gale'
            WHEN s.windspeed >= 50 THEN 'Strong Gale'
            ELSE 'Unknown'
        END AS windspeed
    FROM staging.staging s
    WHERE NOT EXISTS (
        SELECT 1 
        FROM warehouse.dim_windspeed d
        WHERE d.windspeed = 
            CASE
                WHEN s.windspeed < 1 THEN 'Calm'
                WHEN s.windspeed >= 1 AND s.windspeed < 5 THEN 'Light Air'
                WHEN s.windspeed >= 6 AND s.windspeed < 11 THEN 'Light Breeze'
                WHEN s.windspeed >= 12 AND s.windspeed < 19 THEN 'Moderate Breeze'
                WHEN s.windspeed >= 20 AND s.windspeed < 28 THEN 'Strong Breeze'
                WHEN s.windspeed >= 29 AND s.windspeed < 38 THEN 'Near Gale'
                WHEN s.windspeed >= 39 AND s.windspeed < 49 THEN 'Gale'
                WHEN s.windspeed >= 50 THEN 'Strong Gale'
                ELSE 'Unknown'
            END
    );

    -- Cập nhật dữ liệu trong bảng staging
    UPDATE staging.staging s
    JOIN warehouse.dim_windspeed d
    ON
        CASE
            WHEN s.windspeed < 1 THEN 'Calm'
            WHEN s.windspeed >= 1 AND s.windspeed < 5 THEN 'Light Air'
            WHEN s.windspeed >= 6 AND s.windspeed < 11 THEN 'Light Breeze'
            WHEN s.windspeed >= 12 AND s.windspeed < 19 THEN 'Moderate Breeze'
            WHEN s.windspeed >= 20 AND s.windspeed < 28 THEN 'Strong Breeze'
            WHEN s.windspeed >= 29 AND s.windspeed < 38 THEN 'Near Gale'
            WHEN s.windspeed >= 39 AND s.windspeed < 49 THEN 'Gale'
            WHEN s.windspeed >= 50 THEN 'Strong Gale'
            ELSE 'Unknown'
        END = d.windspeed
    SET s.windspeed_id = d.id;
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
-- Procedure structure for type2
-- ----------------------------
DROP PROCEDURE IF EXISTS `type2`;
delimiter ;;
CREATE PROCEDURE `type2`()
BEGIN
	update warehouse.dim_location d
	join staging.staging s
	on d.province_id  = s.province_id
	and d.province <> TRIM(SUBSTRING_INDEX(s.name, ',', 1))
	set d.dtChanged = CURRENT_TIMESTAMP,
	d.dtExpired = CURRENT_TIMESTAMP,
	d.isCurrent = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_crawl_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_crawl_date`;
delimiter ;;
CREATE PROCEDURE `update_crawl_date`(in d varchar(255))
BEGIN
  UPDATE configs
    SET crawl_date = d
    WHERE id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_crawl_date_to_default
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_crawl_date_to_default`;
delimiter ;;
CREATE PROCEDURE `update_crawl_date_to_default`()
BEGIN
  UPDATE configs
    SET crawl_date = 'tomorrow'
    WHERE id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_file_path_configs
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_file_path_configs`;
delimiter ;;
CREATE PROCEDURE `update_file_path_configs`(in path varchar(255))
BEGIN
	update configs
	set configs.path_file = path
	where configs.id  = 1;
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
-- Procedure structure for update_flag_configs_copy1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_copy1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_copy1`(IN input_id INT,    -- Tham số đầu vào: id của bản ghi cần cập nhật
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
-- Procedure structure for update_flag_configs_datamart_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_datamart_to_0`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_datamart_to_0`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 0
    WHERE id = 4;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_datamart_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_datamart_to_1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_datamart_to_1`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 1
    WHERE id = 4;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_extract_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_extract_to_0`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_extract_to_0`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 0
    WHERE id = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_extract_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_extract_to_1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_extract_to_1`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 1
    WHERE id = 2;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_staging_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_staging_to_0`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_staging_to_0`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 0
    WHERE id = 2;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_staging_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_staging_to_1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_staging_to_1`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 1
    WHERE id = 2;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_staging_to_1_copy1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_staging_to_1_copy1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_staging_to_1_copy1`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 1
    WHERE id = 2;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_to_0`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_to_0`(IN input_id INT,    -- Tham số đầu vào: id của bản ghi cần cập nhật
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
-- Procedure structure for update_flag_configs_warehouse_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_warehouse_to_0`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_warehouse_to_0`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 0
    WHERE id = 3;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_flag_configs_warehouse_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_flag_configs_warehouse_to_1`;
delimiter ;;
CREATE PROCEDURE `update_flag_configs_warehouse_to_1`()
BEGIN
    -- Cập nhật cột flag trong bảng configs
    UPDATE configs
    SET flag = 1
    WHERE id = 3;

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
-- Procedure structure for update_isProcessing_configs_datamart_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_datamart_to_0`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_datamart_to_0`()
BEGIN
update configs 
	SET configs.is_processing = 0
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_datamart_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_datamart_to_1`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_datamart_to_1`()
BEGIN
update configs 
	SET configs.is_processing = 1
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_extract_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_extract_to_0`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_extract_to_0`()
BEGIN
update configs 
	SET configs.is_processing = 0
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_extract_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_extract_to_1`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_extract_to_1`()
BEGIN
update configs 
	SET configs.is_processing = 1
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_staging_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_staging_to_0`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_staging_to_0`()
BEGIN
update configs 
	SET configs.is_processing = 0
	WHERE configs.id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_staging_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_staging_to_1`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_staging_to_1`()
BEGIN
update configs 
	SET configs.is_processing = 1
	WHERE configs.id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_warehouse_to_0
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_warehouse_to_0`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_warehouse_to_0`()
BEGIN
update configs 
	SET configs.is_processing = 0
	WHERE configs.id = 3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_isProcessing_configs_warehouse_to_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_isProcessing_configs_warehouse_to_1`;
delimiter ;;
CREATE PROCEDURE `update_isProcessing_configs_warehouse_to_1`()
BEGIN
update configs 
	SET configs.is_processing = 1
	WHERE configs.id = 3;
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

-- ----------------------------
-- Procedure structure for update_status_configs_datamart_to_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_datamart_to_error`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_datamart_to_error`()
BEGIN
	update configs
	set configs.`status` = 'ERROR'
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_datamart_to_mloaded
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_datamart_to_mloaded`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_datamart_to_mloaded`()
BEGIN
	update configs
	set configs.`status` = 'MLOADED'
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_datamart_to_mloading
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_datamart_to_mloading`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_datamart_to_mloading`()
BEGIN
	update configs
	set configs.`status` = 'MLOADING'
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_extract_to_crawled
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_extract_to_crawled`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_extract_to_crawled`()
BEGIN
	update configs
	set configs.`status` = 'CRAWLED'
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_extract_to_crawling
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_extract_to_crawling`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_extract_to_crawling`()
BEGIN
	update configs
	set configs.`status` = 'CRAWLING'
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_extract_to_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_extract_to_error`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_extract_to_error`()
BEGIN
	update configs
	set configs.`status` = 'ERROR'
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_extract_to_finished
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_extract_to_finished`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_extract_to_finished`()
BEGIN
	update configs
	set configs.`status` = 'FINISHED'
	WHERE configs.id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_staging_to_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_staging_to_error`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_staging_to_error`()
BEGIN
	update configs
	set configs.`status` = 'ERROR'
	WHERE configs.id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_staging_to_extracted
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_staging_to_extracted`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_staging_to_extracted`()
BEGIN
	update configs
	set configs.`status` = 'EXTRACTED'
	WHERE configs.id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_staging_to_extracting
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_staging_to_extracting`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_staging_to_extracting`()
BEGIN
	update configs
	set configs.`status` = 'EXTRACTING'
	WHERE configs.id = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_warehouse_to_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_warehouse_to_error`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_warehouse_to_error`()
BEGIN
	update configs
	set configs.`status` = 'ERROR'
	WHERE configs.id = 3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_warehouse_to_error_copy1
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_warehouse_to_error_copy1`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_warehouse_to_error_copy1`()
BEGIN
	update configs
	set configs.`status` = 'ERROR'
	WHERE configs.id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_warehouse_to_wh_loaded
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_warehouse_to_wh_loaded`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_warehouse_to_wh_loaded`()
BEGIN
	update configs
	set configs.`status` = 'WH_LOADED'
	WHERE configs.id = 3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status_configs_warehouse_to_wh_loading
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status_configs_warehouse_to_wh_loading`;
delimiter ;;
CREATE PROCEDURE `update_status_configs_warehouse_to_wh_loading`()
BEGIN
	update configs
	set configs.`status` = 'WH_LOADING'
	WHERE configs.id = 3;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
