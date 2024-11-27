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
//            24. Chỉnh Flag=0 cho config
            handleConfig.updateFlagConfig(1, 0);
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigs(1, 0);
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        }
    }

    public void loadToStaging() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigs(3, 1);
//            13. Cập nhật status của config thành EXTRACTING
            handleConfig.updateStatusConfigs(3, "EXTRACTING");
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogs(3, "EXTRACTING", "START EXTRACT DATA");
//            15.Truncate table
            handleConfig.truncateStaging();
//            16. Thêm thông tin đã truncate table staging vào log
            handleConfig.insertStatusLogs(3, "TRUNCATED", "TRUNCATED STAGING");
//            17. Load dữ liệu file CSV vào table Staging
            handleConfig.loadToStaging();

        } catch (Exception e) {
//            22. Cập nhật giá trị flag
            handleConfig.updateStatusConfigs(3, "ERROR");
//            23.Them loi vao log
            handleConfig.insertStatusLogs(3, "ERROR", e.getMessage());
//            24.Cho flag = 0
            handleConfig.updateFlagConfig(3, 0);
//            25. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(3, 0);
//            26.send mail error
            try {
                handleConfig.sendMail(3, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
//            18.Thêm thông tin ddang load dữ liệu vào Staging
            handleConfig.insertStatusLogs(3, "EXTRACTING", "IMPORT TO STAGING");
//            19.Cập nhật status của config thành EXTRACTED
            handleConfig.updateStatusConfigs(3, "EXTRACTED");
//            20.Thêm thông tin đã load dữ liệu vào Staging
            handleConfig.insertStatusLogs(3, "EXTRACTED", "IMPORTED TO STAGING");
//            21.Cập nhật giá trị processing là 0
            handleConfig.updateProcessingConfigs(3, 0);
//            24.Cho flag = 0
            handleConfig.updateFlagConfig(3, 0);
        }
    }

    public void tranform() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigs(2, 1);
//            13. Cập nhật status của config thành EXTRACTING
            handleConfig.updateStatusConfigs(2, "TRANSFORMING");
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogs(2, "TRANSFORMING", "START TRANSFORM DATA");
//            15.Transform Data
            handleConfig.transform();
        } catch (Exception e) {
//            19. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigs(2, "ERROR");
//            20. Thêm lỗi vào log
            handleConfig.insertStatusLogs(2, "ERROR", e.getMessage());
//            21.Cho flag = 0
            handleConfig.updateFlagConfig(2, 0);
//            22. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigs(2, 0);
//            23.send mail error
            try {
                handleConfig.sendMail(2, e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
//            16. Cập nhật status của config thành TRANSFORMED
            handleConfig.updateStatusConfigs(2, "TRANSFORMED");
//            17. Thêm thông tin đã transform data vào log
            handleConfig.insertStatusLogs(2, "TRANSFORMED", "TRANSFORMED DATA");
//            18.Thêm thông tin ddang load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTING", "IMPORT TO STAGING");
//            19.Cập nhật status của config thành EXTRACTED
            handleConfig.updateStatusConfigs(2, "EXTRACTED");
//            20.Thêm thông tin đã load dữ liệu vào Staging
            handleConfig.insertStatusLogs(2, "EXTRACTED", "IMPORTED TO STAGING");
//            21.Cập nhật giá trị processing là 0
            handleConfig.updateProcessingConfigs(2, 0);
//            24.Cho flag = 0
            handleConfig.updateFlagConfig(2, 0);
        }
    }

    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

        ;
    }
}
