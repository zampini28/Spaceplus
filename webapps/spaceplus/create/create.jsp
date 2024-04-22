<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Criar</title>
    <link rel="stylesheet" href="create/style.css">
  </head>
  <body>
    <header>
      <a href="/spaceplus/browser">Space+</a>
    </header>
    <div class="container">
    <div class="sub_container">
      <form action="/spaceplus/create" method="POST">
        <label for="title">Título</label>
        <input type="text" name="title" id="title" placeholder="Título" required>
        <label for="rating">Avaliação</label>
        <input type="number" step=".1" min="0" max="5" name="rating" id="rating" placeholder="Avaliação" required>
        <label for="releaseDate">Data de Lançamento</label>
        <input type="text" name="releaseDate" id="releaseDate" placeholder="Data de Lançamento" required>
        <label for="director">Diretor</label>
        <input type="text" name="director" id="director" placeholder="Diretor" required>
        <label for="description">Descrição</label>
        <textarea name="description" id="description" placeholder="Descrição" required></textarea>
        <label for="duration">Duração</label>
        <input type="text" name="duration" id="duration" placeholder="Duração" required>
        <label for="price">Preço</label>
        <input type="number" step=".01" min="0" name="price" id="price" placeholder="Preço" required>
        <label for="language">Línguagem</label>
        <input type="text" name="language" id="language" placeholder="Línguagem" required>
        <label for="thumbnail">Thumbnail</label>
        <input type="url" name="thumbnail" id="thumbnail" size="30" placeholder="Thumbnail" required>
        <label class="sumbit_label" for="submit"></label>
        <input type="submit" value="Enviar" id="submit" required>
      </form>
    </div>
    </div>
  </body>
</html>
