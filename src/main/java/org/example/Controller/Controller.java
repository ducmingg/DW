package org.example.Controller;

import jakarta.mail.MessagingException;
import org.example.Entity.Config;
import org.example.Entity.Provinces;
import org.example.Services.HandleConfig;
import org.example.Services.DataWeather;

import java.io.File;
import java.io.IOException;
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
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigs(1, 0);
//            27. Cập nhật đường dẫn chi tiết của file CSV
            handleConfig.updateFilePathConfigs(1, path);
//            28. Cập nhật status của config thành CRAWLED
            handleConfig.updateStatusConfigs(1, "CRAWLED");
//            29. Thêm thông tin đã crawl dữ liệu vào log
            handleConfig.insertStatusLogs(1, "CRAWLED", "FINISH");
        } catch (Exception e) {
//            20+23. Thêm thông tin lỗi  vào log
            handleConfig.insertStatusLogs(1, "ERROR", e.getMessage());
//            21+26.send mail error
            try {
                handleConfig.sendMail(1, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
//            22. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigs(1, "ERROR");
////            24. Chỉnh Flag=0 cho config
//            handleConfig.updateFlagConfig(1, 0);
////            25. Cập nhật is_processing của config la 0
//            handleConfig.updateProcessingConfigs(1, 0);
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
//            24. Chỉnh Flag=0 cho config
            handleConfig.updateFlagConfig(1, 0);
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigs(1, 0);
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
//            18.Thêm thông tin ddang load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTING", "IMPORT TO STAGING");
//            19.Cập nhật status của config thành EXTRACTED
            handleConfig.updateStatusConfigs(2, "EXTRACTED");
//            20.Thêm thông tin đã load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTED", "IMPORTED TO STAGING");
////            21.Cập nhật giá trị processing là 0
//            handleConfig.updateProcessingConfigs(2, 0);
////            22.Cho flag = 0
//            handleConfig.updateFlagConfig(2, 0);
        } catch (Exception e) {
//            22. Cập nhật giá trị flag
            handleConfig.updateStatusConfigs(2, "ERROR");
//            23.Them loi vao log
            handleConfig.insertStatusLogs(2, "ERROR", e.getMessage());
//            26. Send Mail
            try {
                handleConfig.sendMail(2, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
//            24.Cho flag = 0
            handleConfig.updateFlagConfig(2, 0);
//            25. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(2, 0);
        }
    }

    public void loadToWarehouse() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigs(3, 1);
//            13. Cập nhật status của config thành EXTRACTING
            handleConfig.updateStatusConfigs(3, "WH_LOADING");
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogs(3, "WH_LOADING", "Start load data to Warehouse");
//            15.Load Data To WH
            handleConfig.loadToWarehouse();
//            16. Cập nhật status của config thành TRANSFORMED
            handleConfig.updateStatusConfigs(3, "WH_LOADED");
//            17. Thêm thông tin đã load data to WH vào log
            handleConfig.insertStatusLogs(3, "WH_LOADED", "Load to warehouse success");

        } catch (Exception e) {
//            19. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigs(3, "ERROR");
//            20. Thêm lỗi vào log
            handleConfig.insertStatusLogs(3, "ERROR", e.getMessage());
//            21.Cho flag = 0
//            handleConfig.updateFlagConfig(3, 0);
////            22. Cập nhật giá trị processing = 0
//            handleConfig.updateProcessingConfigs(3, 0);
//            23.send mail error
            try {
                handleConfig.sendMail(3, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
            //21
            handleConfig.updateFlagConfig(3, 0);
//            22. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(3, 0);
        }
    }

    public void loadToDataMart() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigs(4, 1);
//            13. Cập nhật status của config thành MLOADING
            handleConfig.updateStatusConfigs(4, "MLOADING");
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogs(4, "MLOADING", "Start load data to DataMart");
//            15.Load Data To WH
            handleConfig.loadToDataMart();
//            16. Cập nhật status của config thành MLOADED
            handleConfig.updateStatusConfigs(4, "MLOADED");
//            17. Thêm thông tin đã load data to WH vào log
            handleConfig.insertStatusLogs(4, "MLOADED", "Load to mart success");
//            18. Cập nhật status của config thành FINISHED
            handleConfig.updateStatusConfigs(1, "FINISHED");
//            19. Thêm thông tin đã hoàn thành tiến trình vào log
            handleConfig.insertStatusLogs(4, "FINISHED", "Finished");
//            22.send mail error
            try {
                DateTimeFormatter dt = DateTimeFormatter.ofPattern("hh:mm:ss dd/MM/yyyy");
                LocalDateTime nowTime = LocalDateTime.now();
                String timeNow = nowTime.format(dt);
                handleConfig.sendMail(4, "Success DataWarehouse Date: " + timeNow);
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } catch (Exception e) {
//            19. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigs(4, "ERROR");
//            20. Thêm lỗi vào log
            handleConfig.insertStatusLogs(4, "ERROR", e.getMessage());
//            21.Cho flag = 0
//            handleConfig.updateFlagConfig(3, 0);
////            22. Cập nhật giá trị processing = 0
//            handleConfig.updateProcessingConfigs(3, 0);
//            27.send mail error
            try {
                handleConfig.sendMail(4, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
            //20.25 Cho flag = 0
            handleConfig.updateFlagConfig(4, 0);
//            21. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(4, 0);
        }
    }

    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

        ;
    }
}
