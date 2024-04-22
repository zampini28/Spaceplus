package spaceplus;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import java.text.SimpleDateFormat;

import java.util.Date;

public class Log {
  private static final String CATALINAHOME = System.getenv("CATALINA_HOME");
  private static final String FILEPATH = CATALINAHOME + "webapps/spaceplus/logs.txt";
  private static final SimpleDateFormat dataFormat = new SimpleDateFormat("dd-MM-yyy HH:mm:ss");

  public static void error(String message) {
    log("Error", message);
  }

  public static void warn(String message) {
    log("Warn", message);
  }

  public static void info(String message) {
    log("Info", message);
  }

  public static void log(String level, String message) {
    try (FileWriter fileWriter = new FileWriter(FILEPATH, true);
         PrintWriter writer = new PrintWriter(fileWriter)) {
      String time = dataFormat.format(new Date());
      writer.println("[" + time + "] " + level + ": " + message);
    } catch (IOException e) {
      throw new RuntimeException("Failed writing to log file: " + e.getMessage());
    }
  }
}
