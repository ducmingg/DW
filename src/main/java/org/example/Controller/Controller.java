package org.example.Controller;

import org.example.Entity.Config;
import org.example.Entity.Provinces;
import org.example.Repository.HandleConfig;
import org.example.Services.DataWeather;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Controller {

    public void crawlData() {
        HandleConfig handleConfig = new HandleConfig();
        try {
            handleConfig.updateProcessingConfigs(1, 1);
            handleConfig.updateStatusConfigs(1, "CRAWLING");
            handleConfig.insertStatusLogs(1, "CRAWLING", "Start crawling weather data");
            Config config = handleConfig.getConfig().get(0);
            String[] provinces = Provinces.getProvinces();
            DateTimeFormatter dt_now = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime now = LocalDateTime.now();
            String directory = config.getDirectory();
            String file_name = config.getFile_name();
            String path = directory + file_name + dt_now.format(now) + ".csv";
            File file = new File(path);
            file.createNewFile();
            for (String province : provinces
            ) {
                DataWeather dw = new DataWeather(province, path);
                dw.saveToCsv(path);
            }
            handleConfig.updateFilePathConfigs(1, path);
            handleConfig.insertStatusLogs(1, "CRAWLED", "CRAWL HOAN THANH");
        } catch (Exception e) {
            handleConfig.insertStatusLogs(1, "ERROR", e.getMessage());
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
            handleConfig.insertStatusLogs(1, "CRAWLED", "FINISH");
        }

    }

    public void loadToStaging() {
        HandleConfig handleConfig = new HandleConfig();
        try {
            handleConfig.truncateStaging();
            handleConfig.updateProcessingConfigs(2, 1);
            handleConfig.updateStatusConfigs(2, "EXTRACTING");
            handleConfig.insertStatusLogs(2, "EXTRACTING", "START EXTRACT DATA");
            handleConfig.loadToStaging();
            handleConfig.insertStatusLogs(2, "TRUNCATED", "TRUNCATED STAGING");
        } catch (Exception e) {
            handleConfig.insertStatusLogs(2, "ERROR", e.getMessage());
            handleConfig.updateStatusConfigs(2, "ERROR");
            handleConfig.insertStatusLogs(2, "TRUNCATED", "TRUNCATED STAGING ERROR");
            e.printStackTrace(); // Bắt mọi loại ngoại lệ khác
        } finally {
            handleConfig.insertStatusLogs(2, "IMPORT TO STAGING", "FINISH");
        }
    }

    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

        ;
    }
}
