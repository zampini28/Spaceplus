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
import java.util.List;

import spaceplus.Log;
import spaceplus.controller.ControllerFilm;
import spaceplus.model.dto.Film;

public class View extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    Log.info("id is " + id);

    if (id == null)
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
    else {
      Film film = new ControllerFilm().selectById(Integer.parseInt(id));
      request.setAttribute("film", film);
      request.getRequestDispatcher("/view/view.jsp").forward(request, response);
    }
  }
}
