package org.example.Model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class Api {
    static HttpURLConnection conn;

    public static HttpURLConnection getConnection(String province) throws IOException {
//        URL url = new URL("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/B%C3%A0+R%E1%BB%8Ba+-+V%C3%B9ng+T%C3%A0u/tomorrow?unitGroup=metric&include=hours%2Cdays&key=KBEND38354CYDL8J58VTCBCMC");
        URL url = new URL("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/" + province + "/tomorrow?unitGroup=metric&include=hours%2Cdays&key=KBEND38354CYDL8J58VTCBCMC");
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
