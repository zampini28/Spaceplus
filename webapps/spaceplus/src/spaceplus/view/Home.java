package spaceplus.view;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import spaceplus.model.dto.Film;
import spaceplus.controller.ControllerFilm;

public class Home extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");
    List<Film> films = new ControllerFilm().selectRandom();
    request.setAttribute("films", films);
    request.getRequestDispatcher("/home/home.jsp").forward(request, response);
  }
}
