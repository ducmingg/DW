package org.example.Services;

import jakarta.mail.MessagingException;
import org.example.Connection.ConnectionDB;
import org.example.Entity.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HandleConfig {
    private Connection conn;

    public HandleConfig() {
        this.conn = ConnectionDB.getConnection();
    }


    public Connection getConn() {
        return conn;
    }


    public void loadToStaging() {
        String pathFile = null; // Khai báo biến pathFile
        String sql = "SELECT * FROM configs where id = 1";

        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            // Lấy đường dẫn file từ bảng configs
            if (resultSet.next()) {
                pathFile = resultSet.getString("path_file");
            }
            System.out.println(pathFile);
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
        String sql = "select * from configs where flag = 1 ORDER BY id ASC";
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

    public int countProcessing() {
        String sql = "SELECT COUNT(*) AS count FROM configs WHERE is_processing = 1";
        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            if (resultSet.next()) {
                return resultSet.getInt("count"); // Lấy giá trị của cột "count" từ kết quả
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return 0; // Trả về 0 nếu không có dòng nào hoặc xảy ra lỗi
    }

    public void truncateStaging() {
        try (CallableStatement statement = conn.prepareCall("{CALL truncate_staging_table()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void updateFlagConfig(int id, int flag) {
        try (CallableStatement statement = conn.prepareCall("{CALL update_flag_configs(?,?)}")) {
            statement.setInt(1, id);
            statement.setInt(2, flag);
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

    public void loadToDateDim() {
        try (CallableStatement statement = conn.prepareCall("{CALL import_to_date_dim()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void transform_location_dim() {
        try (CallableStatement statement = conn.prepareCall("{CALL staging.transform_location_dim()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void type2() {
        try (CallableStatement statement = conn.prepareCall("{CALL warehouse.type2()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void transformStaging() {
        // Danh sách các stored procedures cần gọi
        String[] procedures = {
                "staging.transform_location_dim",
                "staging.transform_time_dim",
                "staging.transform_date_dim",
                "staging.transform_weather_dim",
                "warehouse.type2"
        };

        for (String procedure : procedures) {
            try (CallableStatement statement = conn.prepareCall("{CALL " + procedure + "() }")) {
                statement.execute();
                System.out.println(procedure + " executed successfully.");
            } catch (SQLException e) {
                System.err.println("Error executing procedure " + procedure + ": " + e.getMessage());
                throw new RuntimeException(e); // Ném ra exception nếu có lỗi
            }
        }
    }

    public String getEmailConfig(int id) {
        String sql = "select email from configs where " + "id = ?";
        String email = "";
        try (PreparedStatement statement = conn.prepareStatement(sql);
        ) {
            statement.setInt(1, id);
            try (
                    ResultSet rs = statement.executeQuery();
            ) {
                while (rs.next()) {
                    email = rs.getString("email");
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return email;
    }

    public void sendMail(int id, String msg) throws MessagingException {
        SendEmail sendEmail = new SendEmail();
        String recipient = getEmailConfig(id);
        sendEmail.sendMail(recipient, msg);
    }

    public static void main(String[] args) {
        Connection conn = ConnectionDB.getConnection();
        HandleConfig handleConfig = new HandleConfig();
//        System.out.println(handleConfig.getConfig());
//        handleConfig.transform_location_dim();
//        handleConfig.type2();
//        handleConfig.transformStaging();
        System.out.println(handleConfig.getEmailConfig(1));
    }
}
