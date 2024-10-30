package org.example.Repository;

import org.example.Connection.ConnectionDB;
import org.example.Entity.Config;

import java.io.CharArrayReader;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HandleConfig {
    private Connection conn;

    public HandleConfig() {
        this.conn = ConnectionDB.getConnection();
    }

    public void loadToStaging() {
        String pathFile = null; // Khai báo biến pathFile
        String sql = "SELECT * FROM configs";

        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            // Lấy đường dẫn file từ bảng configs
            if (resultSet.next()) {
                pathFile = resultSet.getString("path_file");
            }

            if (pathFile != null) { // Kiểm tra xem pathFile có khác null không
                // Tạo câu lệnh SQL để tải dữ liệu
                String query = "LOAD DATA LOCAL INFILE '" + pathFile + "' " + // Sử dụng nháy đơn đúng cách
                        "INTO TABLE staging.staging " +
                        "FIELDS TERMINATED BY ',' " +
                        "ENCLOSED BY '\"' " + // Escape double quote with backslash
                        "LINES TERMINATED BY '\\n' " + // Escape newline with double backslash
                        "IGNORE 1 ROWS " +
                        "(`name`, `datetime`, `temp`, `feelslike`, `dew`, `humidity`, `precip`, " +
                        "`precipprob`, `preciptype`, `snow`, `snowdepth`, `windgust`, " +
                        "`windspeed`, `winddir`, `pressure`, `cloudcover`, `visibility`, " +
                        "`solarradiation`, `solarenergy`, `uvindex`, `severerisk`, `conditions`, " +
                        "`icon`, `stations`);";

                // Thực thi câu lệnh LOAD DATA
                try {
                    statement.execute(query);
                } catch (SQLException e) {
                    throw new RuntimeException("Error executing LOAD DATA command: " + e.getMessage(), e);
                }
            } else {
                System.out.println("No path file found in configs.");
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error executing query: " + e.getMessage(), e);
        }
    }


    public List<Config> getConfig() {
        String sql = "select * from configs where flag = 1 ORDER BY id DESC";
        List<Config> configs = new ArrayList<>();
        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sql);
        ) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String author = resultSet.getString("author");
                String email = resultSet.getString("email");
                String file_name = resultSet.getString("file_name");
                String directory = resultSet.getString("directory");
                String status = resultSet.getString("status");
                int flag = resultSet.getInt("flag");
                Timestamp time_stamp = resultSet.getTimestamp("time_stamp");
                String path_file = resultSet.getString("path_file");
                int is_processing = resultSet.getInt("is_processing");
                Config config = new Config(id, author, email, file_name, directory, status, flag, time_stamp, path_file, is_processing);
                configs.add(config);
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return configs;
    }

    public void truncateStaging() {
        try (CallableStatement statement = conn.prepareCall("{CALL truncate_staging_table()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void updateStatusConfigs(int id, String status) {
        try (CallableStatement statement = conn.prepareCall("{CALL update_status_configs(?,?)}")) {
            statement.setInt(1, id);
            statement.setString(2, status);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void updateProcessingConfigs(int id, int processing) {
        try (CallableStatement statement = conn.prepareCall("{CALL update_isProcessing_configs(?,?)}")) {
            System.out.println("updateProcessing");
            statement.setInt(1, id);
            statement.setInt(2, processing);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void insertStatusLogs(int id, String status, String description) {
        try (CallableStatement statement = conn.prepareCall("{CALL insert_status_logs(?,?,?)}")) {
            statement.setInt(1, id);
            statement.setString(2, status);
            statement.setString(3, description);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public int getProcessingCount() {
        String sql = "Select count(*) from configs where is_processing = 1";
        int count = 0;
        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sql);) {
            while (resultSet.next()) {
                count++;
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return count;
    }

    public void truncate_staging(String dbName) {
        try (CallableStatement statement = conn.prepareCall("{CALL truncate_stating(?)}")) {
            statement.setString(1, dbName);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void updateFilePathConfigs(int id, String path_file) {
        try (CallableStatement statement = conn.prepareCall("{CALL update_file_path_configs(?,?)}")) {
            statement.setInt(1, id);
            statement.setString(2, path_file);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        HandleConfig handleConfig = new HandleConfig();
        handleConfig.loadToStaging();
    }
}
