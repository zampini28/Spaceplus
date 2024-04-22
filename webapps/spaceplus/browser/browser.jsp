<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="spaceplus.model.dto.Film" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Browser</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="browser/style.css">
  <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>

  <script src="main.js"></script>
</head>
<body>
  <div class="wrapper">

    <!-- HEADER -->
    <header>
      <div class="netflixLogo">
        <a class="logo_space" href="">Space+</a>
      </div>      
      <nav class="main-nav">                
        <select id="selector">
          <option>Título</option>
          <option>Diretor</option>
          <option>Descrição</option>
          <option>Linguagem</option>
        </select>
        <input id="search" class="search_input" type="text" placeholder="Pesquisar...">
        <button id="commit" type="button">Pesquisar</button>
      </nav>
      <div class="create_buttom" onclick="create()"></div>
    </header>
    <!-- END OF HEADER -->
    
    <% List<Film> films = (List<Film>)request.getAttribute("films"); %>
    <% boolean isSearch = (boolean)request.getAttribute("isSearch"); %>
    <% if (!films.isEmpty()) { %>

    <% if (isSearch) { %>
    <section class="main-container" >
      <div class="location" id="home">
          <h1 id="home">Baseado na sua pesquisa</h1>
          <div class="box">
          <% for (int i = 0; i < films.size(); i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
          </div>
      </div>
    </section>
    <% } else { %>
    <!-- MAIN CONTAINER -->
    <section class="main-container" >
      <div class="location" id="home">
          <h1 id="home">Popular na SpaceX</h1>
          <div class="box">
          <% for (int i = 0; i < 12; i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
          </div>
      </div>
      

      <h1 id="myList">Em Alta</h1>
      <div class="box">
          <% for (int i = 0; i < 6; i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
      </div>
      
      <h1 id="tvShows">Para Você</h1>
      <div class="box">
          <% for (int i = 0; i < 12; i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
      </div>
      

      <h1 id="movies">Filmes de Ação</h1>
      <div class="box">
          <% for (int i = 0; i < 6; i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
      </div>

      <h1 id="originals">Original da Space+</h1>
      <div class="box">
          <% for (int i = 0; i < 6; i++) { %> 
          <a href= <%= new String("/spaceplus/view?id=" + films.get(i % films.size()).id()) %> > <img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt=""> </a>
          <% } %>
      </div>
     
      <% } %>
      <% } else {%>
    <section class="main-container" >
      <div class="location" id="home">
          <h1 id="home">Desculpa... Não encontramos nada!</h1>
      </div>
    </section>
      <% } %>
    <!-- END OF MAIN CONTAINER -->

    <!-- FOOTER -->
    <footer>
      <p>Space+ &copy 2024</p>
    </footer>
  </div>
  <script src="browser/script.js"></script>
</body>
</html>
