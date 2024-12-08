package org.example.Api;

import org.example.Services.HandleConfig;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Properties;

public class Api {
    static HttpURLConnection conn;

    public static HttpURLConnection getConnection(String province) throws IOException {
        Properties properties = new Properties();
        try (InputStream inputStream = Api.class.getClassLoader().getResourceAsStream("config.properties")) {
            if (inputStream == null) {
                throw new FileNotFoundException("File config.properties not found in classpath");
            }
            properties.load(inputStream);
        } catch (IOException e) {
            System.out.println("Error loading config.properties: " + e.getMessage());
            e.printStackTrace();
        }

        String key = properties.getProperty("key");

        HandleConfig handleConfig = new HandleConfig();
        String dd = handleConfig.get_crawl_date();
        URL url = new URL("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/" + province + "/" + dd + "?unitGroup=metric&include=hours%2Cdays&key=" + key);
        conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Accept", "application/json");
        conn.connect();
        return conn;
    }

    public static void main(String[] args) throws IOException {
        System.out.println(getConnection("Đ%E1%BA%B9k+L%E1%BA%A1k"));
    }
}
