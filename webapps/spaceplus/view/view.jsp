<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="spaceplus.model.dto.Film" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Visualizar</title>
    <link rel="stylesheet" href="view/style.css">
  </head>
  <body>
    <header>
      <div class="remove_buttom" onclick="remove()"></div>
      <div class="create_buttom" onclick="create()"></div>
      <div class="update_buttom" onclick="update()"></div>
      <a href="/spaceplus/browser">Space+</a>
    </header>
    <main>
      <% Film film = (Film) request.getAttribute("film"); %>
      <section class="thumbnail_container">
        <img src="<%= film.thumbnail() %>" alt=""> 
      </section>
      <section class="content_container">
        <div class="upper_description_container">
          <div class="rating_container"><b><%= film.rating() %></b></div>
          <h1><%= film.title() %></h1>
          <p><%= film.duration() %></p>
          <p>R$<%= film.price() %></p>
          <p><%= film.releaseDate().replace('-', '/') %></p>
        </div>
        <div class="description_container">
          <p><%= film.description() %></p>
        </div>
        <div class="lower_description_container">
          <p><%= film.language() %></p>
          <p><%= film.director() %></p>
        </div>
      </section>
    </main>
    <script src="view/script.js"></script>
  </body>
</html>
