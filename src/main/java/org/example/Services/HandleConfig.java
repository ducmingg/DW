package org.example.Services;

import jakarta.mail.MessagingException;
import org.example.Connection.ConnectionDB;
import org.example.Entity.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HandleConfig {
    private Connection conn;

    public HandleConfig() {
        this.conn = ConnectionDB.getConnection();
    }


    public Connection getConn() {
        return conn;
    }


    public void loadToStaging() {
        String sql = "{CALL loadToStaging(?)}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql)) {
            // Đăng ký tham số OUT
            callableStatement.registerOutParameter(1, Types.VARCHAR);
            // Gọi stored procedure
            callableStatement.execute();
            // Lấy câu lệnh SQL động trả về
            result = callableStatement.getString(1);
            // In câu lệnh SQL hoặc thực thi nó
            System.out.println("Generated Query: " + result);

        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        try (Statement stmt = conn.createStatement()) {
            stmt.execute(result);
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }


    public List<Map<String, Object>> getConfigs() {
        String sql = "{CALL GetConfigs()}";
        List<Map<String, Object>> configs = new ArrayList<>();

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            while (resultSet.next()) {
                Map<String, Object> row = new HashMap<>();
                for (int i = 1; i <= columnCount; i++) {
                    String columnName = metaData.getColumnName(i);
                    Object value = resultSet.getObject(i);
                    row.put(columnName, value);
                }
                configs.add(row);
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return configs;
    }

    public List<Map<String, Object>> getAllConfigs() {
        String sql = "{CALL getAllConfigs()}";
        List<Map<String, Object>> configs = new ArrayList<>();

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            while (resultSet.next()) {
                Map<String, Object> row = new HashMap<>();
                for (int i = 1; i <= columnCount; i++) {
                    String columnName = metaData.getColumnName(i);
                    Object value = resultSet.getObject(i);
                    row.put(columnName, value);
                }
                configs.add(row);
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return configs;
    }

    public int countProcessing() {
        String sql = "{CALL countProcessing()}";
        int result = 0;

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getInt(1); // Cột "count" từ kết quả của procedure
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }


    public void truncateStaging() {
        executeProcedure("truncate_staging_table");
    }

    //    ==========================================================================================
    //    update flag
    public void updateFlagConfigsExtractTo1() {
        executeProcedure("update_flag_configs_extract_to_1");
    }

    public void updateFlagConfigsExtractTo0() {
        executeProcedure("update_flag_configs_extract_to_0");
    }

    public void updateFlagConfigsStagingTo0() {
        executeProcedure("update_flag_configs_staging_to_0");
    }

    public void updateFlagConfigsSWarehouseTo0() {
        executeProcedure("update_flag_configs_warehouse_to_0");
    }

    public void updateFlagConfigsSWarehouseTo1() {
        executeProcedure("update_flag_configs_warehouse_to_1");
    }

    public void updateFlagConfigsSDatamartTo1() {
        executeProcedure("update_flag_configs_datamart_to_1");
    }

    public void updateFlagConfigsSDatamartTo0() {
        executeProcedure("update_flag_configs_datamart_to_0");
    }

    //    update status config
    public void updateStatusConfigsExtractToCrawling() {
        executeProcedure("update_status_configs_extract_to_crawling");
    }

    public void updateStatusConfigsStagingToExtracting() {
        executeProcedure("update_status_configs_staging_to_extracting");
    }

    public void updateStatusConfigsExtractToCrawled() {
        executeProcedure("update_status_configs_extract_to_crawled");
    }

    public void updateStatusConfigsExtractToFinished() {
        executeProcedure("update_status_configs_extract_to_finished");
    }

    public void updateStatusConfigsStagingToExtracted() {
        executeProcedure("update_status_configs_staging_to_extracted");
    }

    public void updateStatusConfigsExtractToError() {
        executeProcedure("update_status_configs_extract_to_error");
    }

    //staging
    public void updateStatusConfigsStagingToError() {
        executeProcedure("update_status_configs_staging_to_error");
    }

    public void updateStatusConfigsWarehouseToWhLoading() {
        executeProcedure("update_status_configs_warehouse_to_wh_loading");
    }

    public void updateStatusConfigsWarehouseToWhLoaded() {
        executeProcedure("update_status_configs_warehouse_to_wh_loaded");
    }

    public void updateStatusConfigsWarehouseToError() {
        executeProcedure("update_status_configs_warehouse_to_error");
    }

    public void updateStatusConfigsDatamartToError() {
        executeProcedure("update_status_configs_datamart_to_error");
    }

    public void updateStatusConfigsDatamartToMloading() {
        executeProcedure("update_status_configs_datamart_to_mloading");
    }

    public void updateStatusConfigsDatamartToMloaded() {
        executeProcedure("update_status_configs_datamart_to_mloaded");
    }

    // =======================================================================================================
// update processing
    public void updateProcessingConfigsExtractTo1() {
        executeProcedure("update_isProcessing_configs_extract_to_1");
    }

    public void updateProcessingConfigsExtractTo0() {
        executeProcedure("update_isProcessing_configs_extract_to_0");
    }

    public void updateProcessingConfigsStagingTo1() {
        executeProcedure("update_isProcessing_configs_staging_to_1");
    }

    public void updateProcessingConfigsStagingTo0() {
        executeProcedure("update_isProcessing_configs_staging_to_0");
    }

    public void updateProcessingConfigsWarehouseTo0() {
        executeProcedure("update_isProcessing_configs_warehouse_to_0");
    }

    public void updateProcessingConfigsWarehouseTo1() {
        executeProcedure("update_isProcessing_configs_warehouse_to_1");
    }

    public void updateProcessingConfigsDatamartTo1() {
        executeProcedure("update_isProcessing_configs_datamart_to_1");
    }

    public void updateProcessingConfigsDatamartTo0() {
        executeProcedure("update_isProcessing_configs_datamart_to_0");
    }


    //    =======================================================================================================
//    insert status
    public void insertStatusLogsExtractCrawling() {
        executeProcedure("insert_status_logs_extract_crawling");
    }

    public void insertStatusLogsDatamartMloading() {
        executeProcedure("insert_status_logs_datamart_mloading");
    }

    public void insertStatusLogsDatamartMloaded() {
        executeProcedure("insert_status_logs_datamart_mloaded");
    }

    public void insertStatusLogsDatamartFinished() {
        executeProcedure("insert_status_logs_datamart_finished");
    }

    public void insertStatusLogsExtractError(String err) {
        try (CallableStatement statement = conn.prepareCall("{CALL insert_status_logs_extract_error(?)}")) {
            statement.setString(1, err);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void insertStatusLogsStagingError(String err) {
        try (CallableStatement statement = conn.prepareCall("{CALL insert_status_logs_staging_error(?)}")) {
            statement.setString(1, err);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void insertStatusLogsWarehouseError(String err) {
        try (CallableStatement statement = conn.prepareCall("{CALL insert_status_logs_warehouse_error(?)}")) {
            statement.setString(1, err);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void insertStatusLogsDatamartError(String err) {
        try (CallableStatement statement = conn.prepareCall("{CALL insert_status_logs_datamart_error(?)}")) {
            statement.setString(1, err);
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void insertStatusLogsStagingStartExtract() {
        executeProcedure("insert_status_logs_staging_start_extract");
    }

    public void insertStatusLogsStagingToExtracting() {
        executeProcedure("insert_status_logs_staging_extracting");
    }

    public void insertStatusLogsExtractCrawled() {
        executeProcedure("insert_status_logs_extract_crawled");
    }

    public void insertStatusLogsStagingTruncated() {
        executeProcedure("insert_status_log_staging_truncated");
    }

    public void insertStatusLogsStagingExtracted() {
        executeProcedure("insert_status_logs_staging_extracted");
    }

    public void insertStatusLogsWarehouseWhLoading() {
        executeProcedure("insert_status_logs_warehouse_wh_loading");
    }

    public void insertStatusLogsWarehouseWhLoaded() {
        executeProcedure("insert_status_logs_warehouse_wh_loaded");
    }

    //    ===================================================WAREHOUSE====================================================

    public String getDirectory() {
        String sql = "{CALL getDirectory()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Cột "directory" từ kết quả của procedure
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }

    public String getFile_name() {
        String sql = "{CALL getFile_name()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Lấy cột đầu tiên (chỉ số 1)
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
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

    public void updateFilePathConfigs(String path_file) {
        try (CallableStatement statement = conn.prepareCall("{CALL update_file_path_configs(?)}")) {
            statement.setString(1, path_file);
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


    public void reset_process() {
        try (CallableStatement statement = conn.prepareCall("{CALL control.reset_process()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void reset_at_staging() {
        try (CallableStatement statement = conn.prepareCall("{CALL control.reset_at_staging()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void reset_at_warehouse() {
        try (CallableStatement statement = conn.prepareCall("{CALL control.reset_at_warehouse()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void start_process() {
        try (CallableStatement statement = conn.prepareCall("{CALL control.start_process()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void reset_at_datamart() {
        try (CallableStatement statement = conn.prepareCall("{CALL control.reset_at_datamart()}")) {
            statement.execute();
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    public void loadToDataMart() {
        transform_datamart_daily();
        transform_datamart_monthly();
    }

    public void transform_datamart_daily() {
        executeProcedure("transform_datamart_daily");
    }

    public void transform_datamart_monthly() {
        executeProcedure("transform_datamart_monthly");
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

    public void sendMail(String recipient, String msg) throws MessagingException {
        SendEmail sendEmail = new SendEmail();
        sendEmail.sendMail(recipient, msg);
    }

    public boolean checkStatusBefore(int i, String status) {
        Map<String, Object> config = new HashMap<>();
        if (i == 0) return false;
        if (i > 0) {
            List<Map<String, Object>> configs = getAllConfigs();
            config = configs.get(i - 1);
        }
        return config.get("status").equals(status);
    }

    public List<Config> getConfigFlag() {
        String sql = "select * from configs ORDER BY id ASC";
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

    public String getRecipientStaging() {
        String sql = "{CALL getRecipientStaging()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Lấy cột đầu tiên (chỉ số 1)
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }

    public String getRecipientExtract() {
        String sql = "{CALL getRecipientExtract()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Lấy cột đầu tiên (chỉ số 1)
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }

    public String getRecipientWarehouse() {
        String sql = "{CALL getRecipientWarehouse()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Lấy cột đầu tiên (chỉ số 1)
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }

    public String getRecipientDatamart() {
        String sql = "{CALL getRecipientDatamart()}";
        String result = "";

        try (CallableStatement callableStatement = conn.prepareCall(sql);
             ResultSet resultSet = callableStatement.executeQuery()) {

            if (resultSet.next()) {
                result = resultSet.getString(1); // Lấy cột đầu tiên (chỉ số 1)
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }

        return result;
    }

    //    ===================================TRANSFORM==============================================================
    public void transform_cloudcover_dim() {
        executeProcedure("transform_cloudcover_dim");
    }

    public void transform_conditions_dim() {
        executeProcedure("transform_conditions_dim");
    }

    public void transform_date_dim() {
        executeProcedure("transform_date_dim");
    }

    public void transform_humidity_dim() {
        executeProcedure("transform_humidity_dim");
    }

    public void transform_icon_dim() {
        executeProcedure("transform_icon_dim");
    }

    public void transform_location_dim() {
        executeProcedure("transform_location_dim");
    }

    public void transform_preciptype_dim() {
        executeProcedure("transform_preciptype_dim");
    }

    public void transform_pressure_dim() {
        executeProcedure("transform_pressure_dim");
    }

    public void transform_stations_dim() {
        executeProcedure("transform_stations_dim");
    }

    public void transform_time_dim() {
        executeProcedure("transform_time_dim");
    }

    public void transform_uvindex_dim() {
        executeProcedure("transform_uvindex_dim");
    }

    public void transform_weather_dim() {
        executeProcedure("transform_weather_dim");
    }

    public void transform_weather_fact() {
        executeProcedure("transform_weather_fact");
    }

    public void transform_winddir_dim() {
        executeProcedure("transform_winddir_dim");
    }

    public void transform_windspeed_dim() {
        executeProcedure("transform_windspeed_dim");
    }

    public void type2() {
        executeProcedure("type2");
    }


    public void executeProcedure(String procedureName) {
        try (CallableStatement statement = conn.prepareCall("{CALL " + procedureName + "()}")) {
            System.out.println("executing procedure procedureName :" + procedureName);
            statement.execute();
        } catch (SQLException e) {
            System.out.println("Error executing procedure " + procedureName + ": " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public void loadToWarehouse() {
        transform_windspeed_dim();
        transform_pressure_dim();
        transform_stations_dim();
        transform_cloudcover_dim();
        transform_preciptype_dim();
        transform_conditions_dim();
        transform_winddir_dim();
        transform_icon_dim();
        transform_uvindex_dim();
        transform_preciptype_dim();
        transform_humidity_dim();
        transform_location_dim();
        type2();
        transform_time_dim();
        transform_date_dim();
        transform_weather_fact();

        // Danh sách các stored procedures cần gọi
        String[] procedures = {
                "staging.transform_location_dim",
                "warehouse.type2",
                "staging.transform_time_dim",
                "staging.transform_date_dim",
                "staging.transform_weather_dim",
                "staging.transform_weather_fact",
                "warehouse.transform_aggregate",
        };

    }

    public static void main(String[] args) {
        Connection conn = ConnectionDB.getConnection();
        HandleConfig handleConfig = new HandleConfig();

        System.out.println(handleConfig.checkStatusBefore(3, "WH_LOADED"));
        ;
    }


}
