CREATE DATABASE IF NOT EXISTS `datamart`;
USE `datamart`;

DROP TABLE IF EXISTS `forecast`;
CREATE TABLE `forecast` (
 `forecast_id` INT NOT NULL AUTO_INCREMENT,       -- Khoá chính duy nhất
  `date_sk` INT DEFAULT NULL,                      -- Tham chiếu đến bảng thời gian (dim_date)
  `time_sk` INT DEFAULT NULL,                      -- Tham chiếu đến bảng thời gian (dim_time)
  `location_id` INT DEFAULT '-1',                  -- Tham chiếu đến vị trí (dim_location)
  `city_name` VARCHAR(100) DEFAULT NULL,           -- Tên thành phố hoặc khu vực
  `temp_avg` DECIMAL(10, 2) DEFAULT '0.00',        -- Nhiệt độ trung bình
  `temp_feels_like` DECIMAL(10, 2) DEFAULT '0.00', -- Cảm giác nhiệt độ
  `humidity` DECIMAL(10, 2) DEFAULT '0.00',        -- Độ ẩm (%)
  `precipitation` FLOAT DEFAULT '0.00',            -- Lượng mưa
  `precip_prob` DECIMAL(10, 2) DEFAULT '0.00',     -- Xác suất có mưa (%)
  `wind_speed` DECIMAL(10, 2) DEFAULT '0.00',      -- Tốc độ gió (km/h hoặc m/s)
  `cloud_cover` FLOAT DEFAULT '0.00',              -- Mức độ che phủ của mây (%)
  `visibility` FLOAT DEFAULT '0.00',               -- Tầm nhìn (km)
  `uv_index` INT DEFAULT '0',                      -- Chỉ số UV
  `conditions` VARCHAR(100) DEFAULT NULL,          -- Điều kiện thời tiết (mô tả)
  `weather_icon` VARCHAR(50) DEFAULT NULL,         -- Biểu tượng thời tiết
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP, -- Ngày tạo bản ghi
  PRIMARY KEY (`forecast_id`),
  KEY `date_sk` (`date_sk`),                       -- Tạo chỉ mục tăng tốc truy vấn
  KEY `location_id` (`location_id`)                -- Tạo chỉ mục tăng tốc truy vấn
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
LOCK TABLES `forecast` WRITE;
UNLOCK TABLES;


