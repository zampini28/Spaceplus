package spaceplus.view;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;

import java.util.List;

import spaceplus.Log;
import spaceplus.controller.ControllerFilm;
import spaceplus.model.dto.Film;

public class Browser extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");

    String search = request.getParameter("search");
    String mode = request.getParameter("mode");

    Log.info("Search: " + search);
    Log.info("Mode: " + mode);

    if (search == null || mode == null) {
      List<Film> films = new ControllerFilm().selectRandom();
      request.setAttribute("films", films);
      request.setAttribute("isSearch", false);
    } else {
      List<Film> films = new ControllerFilm().searchQuery(search, mode);
      request.setAttribute("films", films);
      request.setAttribute("isSearch", true);
    }
    request.getRequestDispatcher("/browser/browser.jsp").forward(request, response);
  }
}
