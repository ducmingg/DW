package org.example.Controller;

import com.opencsv.CSVWriter;
import org.example.Entity.Config;
import org.example.Entity.Provinces;
import org.example.Repository.HandleConfig;
import org.example.Services.DataWeather;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Controller {

    public void crawlData() throws IOException {
        HandleConfig handleConfig = new HandleConfig();
        handleConfig.updateProcessingConfigs(1, 1);
        handleConfig.updateStatusConfigs(1, "CRAWLING");
        handleConfig.insertStatusLogs(1, "CRAWLING", "Start crawling weather data");
        Config config = handleConfig.getConfig().get(0);
        String[] provinces = Provinces.getProvinces();
        DateTimeFormatter dt_now = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String path_file = config.getPath_file();
        String file_name = config.getFile_name();
        String path = path_file + file_name + dt_now.format(now) + ".csv";

        File file = new File(path);
        for (String province : provinces
        ) {
            DataWeather dw = new DataWeather(province, path);
            dw.saveToCsv(path);
        }
    }

    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        controller.crawlData();

    }
}
