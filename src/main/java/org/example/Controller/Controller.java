package org.example.Controller;

import org.example.Connection.ConnectionDB;
import org.example.Entity.Config;
import org.example.Entity.Provinces;
import org.example.Repository.HandleConfig;
import org.example.Services.DataWeather;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Controller {

    public void crawlData() {
//        12.load cac thuoc tinh trong properties va ket noi den database control
        HandleConfig handleConfig = new HandleConfig();
        try {
//            13.Cập nhật  trạng thái của config
            handleConfig.updateProcessingConfigs(1, 1);
//            14.Cập nhật status của config thành CRAWLING
            handleConfig.updateStatusConfigs(1, "CRAWLING");
//            15. Thêm thông tin đang craw dữ liệu vào log
            handleConfig.insertStatusLogs(1, "CRAWLING", "Start crawling weather data");
            Config config = handleConfig.getConfig().get(0);
            String[] provinces = Provinces.getProvinces();
            DateTimeFormatter dt_now = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime now = LocalDateTime.now();
            String directory = config.getDirectory();
            String file_name = config.getFile_name();
            String path = directory + file_name + dt_now.format(now) + ".csv";
            File file = new File(path);
//            16. Tạo file csv dể lưu trữ dữ liệu lấy từ API
            file.createNewFile();
//            17. Duyệt các thành phố
            for (String province : provinces
            ) {
//                18.Kết nối URL với citi muốn lấy dữ liệu
                DataWeather dw = new DataWeather(province, path);
//                19. Lấy dữ liệu Json từ API
                dw.saveToCsv(path);
            }
//            27. Cập nhật đường dẫn chi tiết của file CSV
            handleConfig.updateFilePathConfigs(1, path);
//            28. Cập nhật status của config thành CRAWLED
            handleConfig.updateStatusConfigs(1, "FINISHED");
        } catch (Exception e) {
//            20+23. Thêm thông tin lỗi  vào log
            handleConfig.insertStatusLogs(1, "ERROR", e.getMessage());
//            22. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigs(1, "ERROR");
//            24. Chỉnh Flag=0 cho config
            handleConfig.updateFlagConfig(1, 0);
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigs(1, 0);
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigs(1, 0);
//            28. Cập nhật status của config thành CRAWLED
            handleConfig.updateStatusConfigs(1, "FINISHED");
//            29. Thêm thông tin đã crawl dữ liệu vào log
            handleConfig.insertStatusLogs(1, "CRAWLED", "FINISH");
        }

    }

    public void loadToStaging() {

        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigs(2, 1);
//            13. Cập nhật status của config thành EXTRACTING
            handleConfig.updateStatusConfigs(2, "EXTRACTING");
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogs(2, "EXTRACTING", "START EXTRACT DATA");
//            15.Truncate table
            handleConfig.truncateStaging();
//            16. Thêm thông tin đã truncate table staging vào log
            handleConfig.insertStatusLogs(2, "TRUNCATED", "TRUNCATED STAGING");
//            17. Load dữ liệu file CSV vào table Staging
            handleConfig.loadToStaging();

        } catch (Exception e) {


//            22. Cập nhật giá trị flag
            handleConfig.updateStatusConfigs(2, "ERROR");
//            23.Them loi vao log
            handleConfig.insertStatusLogs(2, "ERROR", e.getMessage());
//            24.Cho flag = 0
            handleConfig.updateFlagConfig(2, 0);
//            25. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(2, 0);
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
//            18.Thêm thông tin ddang load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTING", "IMPORT TO STAGING");
//            19.Cập nhật status của config thành EXTRACTED
            handleConfig.updateStatusConfigs(2, "EXTRACTED");
//            20.Thêm thông tin đã load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTED", "IMPORTED TO STAGING");
//            21.Cập nhật giá trị processing là 0
            handleConfig.updateProcessingConfigs(2, 0);

        }
    }

    public void loadToDateDim() {
        HandleConfig handleConfig = new HandleConfig();
        try {
            handleConfig.updateProcessingConfigs(3, 1);
            handleConfig.updateStatusConfigs(3, "LOAD TO DATE_DIM");
            handleConfig.insertStatusLogs(3, "LOADING", "LOAD TO DATE_DIM");
            handleConfig.loadToDateDim();
            handleConfig.insertStatusLogs(3, "LOADED", "LOAD TO DATE_DIM DONE");
        } catch (Exception e) {
            handleConfig.insertStatusLogs(3, "ERROR", e.getMessage());
            handleConfig.updateStatusConfigs(3, "ERROR");
            handleConfig.insertStatusLogs(3, "LOADED", " LOAD TO DATE_DIM DONE ERROR");
            e.printStackTrace();
        } finally {
            handleConfig.insertStatusLogs(2, "LOAD TO DATE_DIM", "FINISH");
        }
    }


    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

        ;
    }
}
