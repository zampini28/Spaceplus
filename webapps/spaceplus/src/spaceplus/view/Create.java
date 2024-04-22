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
import spaceplus.controller.ControllerFilm;

public class Create extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");
    request.getRequestDispatcher("/create/create.jsp").forward(request, response);
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String rating = request.getParameter("rating");
    String releaseDate = request.getParameter("releaseDate");
    String director = request.getParameter("director");
    String description = request.getParameter("description");
    String duration = request.getParameter("duration");
    String price = request.getParameter("price");
    String language = request.getParameter("language");
    String thumbnail = request.getParameter("thumbnail");

    Log.info("Creating a film");

    boolean result = new ControllerFilm().create(title, rating, releaseDate, 
        director, description, duration, price, language, thumbnail
    );

    if (result) 
      response.sendRedirect("/spaceplus/browser");
    else
      response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
  }
}
