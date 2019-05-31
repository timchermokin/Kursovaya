//package com.devcolibri.database;
//
//import com.mysql.fabric.jdbc.FabricMySQLDriver;
//
//import java.sql.Connection;
//import java.sql.Driver;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class Main {
//
//    private static final String URL = "jdbc:mysql://localhost:127.0.0.1:3306/bd_of_timur" ;
//    private static final String USERNAME = "timur" ;
//    private static final String PASSWORD = "timur" ;
//
//    public static void main(String[] args) {
//        Connection connection;
//
//        try {
//            Driver driver = new FabricMySQLDriver();
//            DriverManager.registerDriver(driver);
//
//            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
//        } catch (SQLException e) {
//            System.err.println("Не загружен класс драйвера!");
//        }
//    }
//
//}

import ...

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class main {
    public static void (String[] args) throws ParserConfigurationException, IOException;
    String userName = "timur";
    String password = "timur";
    String URL = "jdbc:mysql//localhost:3306/MySQLConnect";
    try (Connection connection = DriverManager.getConnection(userName));
}

