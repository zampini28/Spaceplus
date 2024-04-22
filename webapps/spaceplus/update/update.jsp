<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="spaceplus.model.dto.Film" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Update</title>
    <link rel="stylesheet" href="create/style.css">
  </head>
  <body>
    <header>
      <a href="/spaceplus/browser">Space+</a>
    </header>
    <% Film film = (Film) request.getAttribute("film"); %>
    <div class="container">
    <div class="sub_container">
      <form action="/spaceplus/update" method="POST">
        <input type="hidden" name="id" id="id" value="<%= film.id() %>" hidden required>
        <label for="title">Título</label>
        <input type="text" name="title" id="title" placeholder="Título" value="<%= film.title() %>" required>
        <label for="rating">Avaliação</label>
        <input type="number" step=".1" min="0" max="5" name="rating" id="rating" placeholder="Avaliação" value="<%= film.rating() %>" required>
        <label for="releaseDate">Data de Lançamento</label>
        <input type="text" name="releaseDate" id="releaseDate" placeholder="Data de Lançamento" value="<%= film.releaseDate() %>" required>
        <label for="director">Diretor</label>
        <input type="text" name="director" id="director" placeholder="Diretor"  value="<%= film.director() %>" required>
        <label for="description">Descrição</label>
        <textarea name="description" id="description" placeholder="Descrição" required><%= film.description() %></textarea>
        <label for="duration">Duração</label>
        <input type="text" name="duration" id="duration" placeholder="Duração"  value="<%= film.duration() %>"required>
        <label for="price">Preço</label>
        <input type="number" step=".01" min="0" name="price" id="price" placeholder="Preço"  value="<%= film.price() %>"required>
        <label for="language">Línguagem</label>
        <input type="text" name="language" id="language" placeholder="Línguagem"  value="<%= film.language() %>" required>
        <label for="thumbnail">Thumbnail</label>
        <input type="url" name="thumbnail" id="thumbnail" size="30" placeholder="Thumbnail"  value="<%= film.thumbnail() %>"required>
        <label class="sumbit_label" for="submit"></label>
        <input type="submit" value="Enviar" id="submit" required>
      </form>
    </div>
    </div>
  </body>
</html>
