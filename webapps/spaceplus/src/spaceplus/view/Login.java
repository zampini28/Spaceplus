package spaceplus.view;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;

import java.util.Map;

import spaceplus.Log;
import spaceplus.controller.ControllerCustomer;

public class Login extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");
    request.getRequestDispatcher("/login/login.jsp").forward(request, response);
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");

    BufferedReader reader = request.getReader();
    Gson gson = new Gson();
    Map<String, String> requestBody = gson.fromJson(reader, Map.class);


    String username = requestBody.get("username");
    String password = requestBody.get("password");

    Log.info("Username is " + username);
    Log.info("Password is " + password);

    boolean result = new ControllerCustomer().login(username, password);
    response.setStatus((result ? HttpServletResponse.SC_NO_CONTENT : HttpServletResponse.SC_UNAUTHORIZED));
  }
}
