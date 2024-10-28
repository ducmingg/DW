package org.example.Connection;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionDB {
    static Connection connection = null;

    public static Connection getConnection() {
        Properties properties = new Properties();
        try (FileInputStream fis = new FileInputStream("src/main/resources/config.properties")) {
            properties.load(fis);
        } catch (IOException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        String urlBase = properties.getProperty("urlBase");
        String user = properties.getProperty("user");
        String database = properties.getProperty("database");
        String password = properties.getProperty("password");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(urlBase + database, user, password);
        } catch (ClassNotFoundException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return connection;
    }

    public static void main(String[] args) {
        System.out.println(ConnectionDB.getConnection());
    }
}
