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
//            13.Cập nhật  trạng thái của config la 1
            handleConfig.updateProcessingConfigsExtractTo1();
//            14.Cập nhật status của config thành CRAWLING
            handleConfig.updateStatusConfigsExtractToCrawling();
//            15. Thêm thông tin đang craw dữ liệu vào log
            handleConfig.insertStatusLogsExtractCrawling();

//            Config config = handleConfig.getConfig().get(0);
            String[] provinces = Provinces.getProvinces();
            DateTimeFormatter dt_now = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime now = LocalDateTime.now();
            String directory = handleConfig.getDirectory();
            String file_name = handleConfig.getFile_name();
            String dd = handleConfig.get_crawl_date();
            String path = handleConfig.check_crawl_date()
                    ? directory + file_name + dt_now.format(now) + ".csv"
                    : directory + file_name + dd + ".csv";
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
            handleConfig.updateProcessingConfigsExtractTo0();
//            27. Cập nhật đường dẫn chi tiết của file CSV
            handleConfig.updateFilePathConfigs(path);
//            28. Cập nhật status của config thành CRAWLED
            handleConfig.updateStatusConfigsExtractToCrawled();
//            29. Thêm thông tin đã crawl dữ liệu vào log
            handleConfig.insertStatusLogsExtractCrawled();
        } catch (Exception e) {
//            20+23. Thêm thông tin lỗi  vào log
            handleConfig.insertStatusLogsExtractError(e.getMessage());
//            21+26.send mail error
            try {
                handleConfig.sendMail(handleConfig.getRecipientExtract(), e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
//            22. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigsExtractToError();
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
//            24. Chỉnh Flag=0 cho config
            handleConfig.updateFlagConfigsExtractTo0();
//            25. Cập nhật is_processing của config la 0
            handleConfig.updateProcessingConfigsExtractTo0();
        }
    }

    public void loadToStaging() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigsStagingTo1();
//            13. Cập nhật status của config staging thành EXTRACTING
            handleConfig.updateStatusConfigsStagingToExtracting();
//            14. Thêm thông tin bắt đầu extract to staging vào log
            handleConfig.insertStatusLogsStagingStartExtract();
//            15.Truncate table
            handleConfig.truncateStaging();
//            16. Thêm thông tin đã truncate table staging vào log
            handleConfig.insertStatusLogsStagingTruncated();
//            17. Load dữ liệu file CSV vào table Staging
            handleConfig.loadToStaging();
//            18.Thêm thông tin đang load dữ liệu vào Staging
            handleConfig.insertStatusLogsStagingToExtracting();
//            19.Cập nhật status của config thành EXTRACTED
            handleConfig.updateStatusConfigsStagingToExtracted();
//            20.Thêm thông tin đã load dữ liệu vào Staging
            handleConfig.insertStatusLogsStagingExtracted();
        } catch (Exception e) {
//            22. Cập nhật giá trị status = Error
            handleConfig.updateStatusConfigsStagingToError();
//            23.Them loi vao log
            handleConfig.insertStatusLogsStagingError(e.getMessage());
//            26. Send Mail
            try {
                handleConfig.sendMail(handleConfig.getRecipientStaging(), e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
//            24.Cho flag = 0
            handleConfig.updateFlagConfigsStagingTo0();
//            25. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigsStagingTo0();
        }
    }

    //
    public void loadToWarehouse() {
        HandleConfig handleConfig = new HandleConfig();
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigsWarehouseTo1();
//            13. Cập nhật status của config thành WH_LOADING
            handleConfig.updateStatusConfigsWarehouseToWhLoading();
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogsWarehouseWhLoading();
//            15.Load Data To WH
            handleConfig.loadToWarehouse();
//            16. Cập nhật status của config thành TRANSFORMED
            handleConfig.updateStatusConfigsWarehouseToWhLoaded();
//            17. Thêm thông tin đã load data to WH vào log
            handleConfig.insertStatusLogsWarehouseWhLoaded();

        } catch (Exception e) {
//            19. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigsWarehouseToError();
//            20. Thêm lỗi vào log
            handleConfig.insertStatusLogsWarehouseError(e.getMessage());
            try {
                handleConfig.sendMail(handleConfig.getRecipientWarehouse(), e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
            //21
            handleConfig.updateFlagConfigsSWarehouseTo0();
//            22. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigsWarehouseTo0();
        }
    }

    public void loadToDataMart() {
        HandleConfig handleConfig = new HandleConfig();
        DateTimeFormatter dt = DateTimeFormatter.ofPattern("hh:mm:ss dd/MM/yyyy");
        LocalDateTime nowTime = LocalDateTime.now();
        String timeNow = nowTime.format(dt);
        try {
//        12.Cập nhật  trạng thái của config là đang xử lý (isProcessing=true)
            handleConfig.updateProcessingConfigsDatamartTo1();
//            13. Cập nhật status của config thành MLOADING
            handleConfig.updateStatusConfigsDatamartToMloading();
//            14. Thêm thông tin đang extract to staging vào log
            handleConfig.insertStatusLogsDatamartMloading();
//            15.Load Data To WH
            handleConfig.loadToDataMart();
//            16. Cập nhật status của config thành MLOADED
            handleConfig.updateStatusConfigsDatamartToMloaded();
//            17. Thêm thông tin đã load data to WH vào log
            handleConfig.insertStatusLogsDatamartMloaded();
//            18. Cập nhật status của config thành FINISHED
            handleConfig.updateStatusConfigsExtractToFinished();
//            19. Thêm thông tin đã hoàn thành tiến trình vào log
            handleConfig.insertStatusLogsDatamartFinished();
//            22.send mail error
            try {
                handleConfig.sendMail(handleConfig.getRecipientDatamart(), "Success DataWarehouse Date: " + timeNow);
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } catch (Exception e) {
//            19. Cập nhật status của config thành ERROR
            handleConfig.updateStatusConfigsDatamartToError();
//            20. Thêm lỗi vào log
            handleConfig.insertStatusLogsDatamartError(e.getMessage());
//            21.Cho flag = 0
//            handleConfig.updateFlagConfig(3, 0);
////            22. Cập nhật giá trị processing = 0
//            handleConfig.updateProcessingConfigs(3, 0);
//            27.send mail error
            try {
                handleConfig.sendMail(handleConfig.getRecipientDatamart(), e.getMessage());
            } catch (MessagingException ex) {
                throw new RuntimeException(ex);
            }
        } finally {
            //20.25 Cho flag = 0
            handleConfig.updateFlagConfigsSDatamartTo0();
//            21. Cập nhật giá trị processing = 0
            handleConfig.updateProcessingConfigsDatamartTo0();
//            22.cap nhat tomorrow cho crawl_date
            handleConfig.update_crawl_date_to_default();
        }
    }

    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

        ;
    }
}
