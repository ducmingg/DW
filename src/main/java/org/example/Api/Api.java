package org.example.Api;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Properties;

public class Api {
    static HttpURLConnection conn;

    public static HttpURLConnection getConnection(String province) throws IOException {
        Properties properties = new Properties();
        try (FileInputStream fis = new FileInputStream("src/main/resources/config.properties")) {
            properties.load(fis);
        } catch (IOException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        String key = properties.getProperty("key");

        URL url = new URL("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/" + province + "/tomorrow?unitGroup=metric&include=hours%2Cdays&key=" + key);
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
