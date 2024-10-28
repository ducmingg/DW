package org.example.Services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.opencsv.CSVWriter;
import org.example.Model.Api;

import java.io.*;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DataWeather {
    private HttpURLConnection conn;
    private String path = "C:\\Users\\voduc\\Data_Warehouse_Weather\\src\\main\\java\\org\\example\\weather.csv";

    public DataWeather(String province) throws IOException {
        this.conn = Api.getConnection(province);
    }


    public StringBuilder getDataWeather() {
        StringBuilder jsonResponse = new StringBuilder();
        try (BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        ) {
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                jsonResponse.append(inputLine);
            }
        } catch (IOException e) {
            System.out.println("Lỗi khi gọi API: " + e.getMessage());
            throw new RuntimeException(e);
        }
        return jsonResponse;
    }

    private String[] header = {"name", "datetime", "temp", "feelslike", "dew", "humidity",
            "precip", "precipprob", "preciptype", "snow", "snowdepth",
            "windgust", "windspeed", "winddir", "pressure", "cloudcover",
            "visibility", "solarradiation", "solarenergy", "uvindex", "severerisk",
            "conditions", "icon", "stations"};

    public void saveToCsv() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        // chuyen json => map(string : obj)
        Map<String, Object> datas = mapper.readValue(getDataWeather().toString(), new TypeReference<Map<String, Object>>() {
        });

        //lay ra cac nested json obj
        List<Map<String, Object>> days = (List<Map<String, Object>>) datas.get("days");

        try (CSVWriter writer = new CSVWriter(new FileWriter(path, true))) {
//            writer.writeNext(header);
            String name = datas.get("resolvedAddress").toString();
            for (Map<String, Object> day : days
            ) {
                String time = day.get("datetime").toString();
                List<Map<String, Object>> hours = (List<Map<String, Object>>) day.get("hours");
                for (Map<String, Object> hour : hours) {
                    ArrayList<String> inputs = new ArrayList<>();
                    String datetime = time + "T" + hour.get("datetime").toString();
                    inputs.add(name);
                    inputs.add(datetime);
                    inputs.add(getValueOrDefault(hour, "temp"));
                    inputs.add(getValueOrDefault(hour, "feelslike"));
                    inputs.add(getValueOrDefault(hour, "dew"));
                    inputs.add(getValueOrDefault(hour, "humidity"));
                    inputs.add(getValueOrDefault(hour, "precip"));
                    inputs.add(getValueOrDefault(hour, "precipprob"));
                    inputs.add(getValueOrDefault(hour, "preciptype"));
                    inputs.add(getValueOrDefault(hour, "snow"));
                    inputs.add(getValueOrDefault(hour, "snowdepth"));
                    inputs.add(getValueOrDefault(hour, "windgust"));
                    inputs.add(getValueOrDefault(hour, "windspeed"));
                    inputs.add(getValueOrDefault(hour, "winddir"));
                    inputs.add(getValueOrDefault(hour, "pressure"));
                    inputs.add(getValueOrDefault(hour, "cloudcover"));
                    inputs.add(getValueOrDefault(hour, "visibility"));
                    inputs.add(getValueOrDefault(hour, "solarradiation"));
                    inputs.add(getValueOrDefault(hour, "solarenergy"));
                    inputs.add(getValueOrDefault(hour, "uvindex"));
                    inputs.add(getValueOrDefault(hour, "severerisk"));
                    inputs.add(getValueOrDefault(hour, "conditions"));
                    inputs.add(getValueOrDefault(hour, "icon"));
                    inputs.add(getValueOrDefault(hour, "stations"));
                    writer.writeNext(inputs.toArray(new String[0]));
                    inputs.clear();
                }
            }
            System.out.println("Dữ liệu đã được lưu vào file: " + path);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String getValueOrDefault(Map<String, Object> map, String key) {
        Object value = map.get(key);
        return value != null ? value.toString() : "null";
    }


    public static void main(String[] args) throws IOException {
        DataWeather dw = new DataWeather("B%C3%A0+R%E1%BB%8Ba+-+V%C3%B9ng+T%C3%A0u");
        dw.saveToCsv();

    }

}
