package spaceplus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import spaceplus.Log;

public class ConnectionFactory {
  public static final String DRIVERCLASS = "org.mariadb.jdbc.Driver"; 
  public static final String URL = "jdbc:mariadb://localhost:3306/spaceplus";
  public static final String USERNAME = "more";
  public static final String PASSWORD = "123";

  static {
    try {
      Class.forName(DRIVERCLASS);
      Log.info("Driver was found");
    } catch (ClassNotFoundException e) {
      Log.error("No suitable driver found");
    }
  }

  public static Connection getConnection() {
    Connection connection = null;
    try {
      connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
      Log.info("New Connection Established");
    } catch (SQLException e) {
      Log.error("Failed to Established New Connection: " + e.getMessage());
    }
    return connection;
  }
}
