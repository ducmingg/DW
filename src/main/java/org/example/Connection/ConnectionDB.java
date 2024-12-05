package org.example.Connection;

import org.example.Api.Api;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionDB {
    static Connection connection = null;

    public static Connection getConnection() {
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
