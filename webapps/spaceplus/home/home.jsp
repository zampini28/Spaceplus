<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="spaceplus.model.dto.Film" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Space+</title>
    <link rel="stylesheet" href="home/style.css">
    <link rel="stylesheet" href="home/star.css">
  </head>
  <body>
<div class="background-main">
      <div class="main"></div>



    <header class="header_main">
      <div class="header_container">
        <div class="area_logo">
          <a href="">Space+</a>
        </div>
        <nav class="nav_area">
          <div class="body_nav">
            <ul class="list_nav">
              <li><a href="#compromisso">Nosso Compromisso</a></li>
              <li><a href="#privacidade">Privacidade & Segurança</a></li>
              <li><a href="#acessibilidade">Acessibilidade</a></li>
              <li><a href="#customização">Melhor Customização</a></li>
              <li><a href="#começar">Como Começar</a></li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- home page first display -->
    <section class="main_display">
      <!-- main title container -->
      <div class="title_container">
        <h1 class="title_text">Space+</h1>
      </div>
      <!-- line divider -->
      <hr class="divider">
      <!-- title sub text -->
      <div class="sub-title_text_container">
        <p class="sub-title_text">Space+ é o seu oásis cinematográfico, onde você encontra todas as opções necessárias para desfrutar de uma excelente experiẽncia de streaming de filmes. Nossa variedade e conveniência estão aqui para ajudar você e gerenciar e enriquecer suas sessões de entretenimento.</p>
      </div>
      <!-- main button container -->
      <div class="button_container">
        <!-- first button -->
        <a id="saiba_mais" href="#compromisso" class="link">
          <span class="button_text">Saiba mais</span>
        </a>
        <!-- second button -->
        <a id="login" href="/spaceplus/login" class="link">
          <span class="button_text">Login</span>
        </a>
      </div>

</div>


    </section>


    <!-- slider -->
    <section>
    <!-- slider image -->
      <div class="slider_container">
        <div class="slide-track">
          <% List<Film> films = (List<Film>)request.getAttribute("films"); %>
          <% for (int i = 0; i < 28; i++) { %> 
          <div class="slide"><img <%= new String("src=\"" + films.get(i % films.size()).thumbnail() + "\"") %> alt="" /></div>
          <% } %>
        </div>
      </div>
    </section>
    <!-- compromisso -->
    <section id="compromisso" class="section_display">
      <!-- compromisso title -->
      <div class="title_container_default">
        <h1 class="title_text_default">Amplie a diversão para todos</h1>
      </div>
      <!-- divider -->
      <hr class="divider">
      <!-- compromisso sub-title -->
      <div class="sub-title_text_container_default">
        <p class="sub-title_text_default">No Space+, acreditamos que todos os amantes de filmes, de todas as idades e origens, merecem as ferramentas e habilidade que os conduzem a descobrir e desfrutar de uma ampla seleção de filmes para todos os gostos.</p>
      </div>
      <!-- divider -->
      <hr class="divider">
    </section>
    <!-- privacidade -->
    <section id="privacidade" class="section_display">
      <!-- compromisso title -->
      <div class="title_container_default">
        <h1 class="title_text_default">Privacidade & Segurança</h1>
      </div>
      <!-- divider -->
      <hr class="divider">
      <!-- compromisso sub-title -->
      <div class="sub-title_text_container_default">
        <p class="sub-title_text_default">Space+ está empenhado em construir um sistema que ajude os clientes a proteger sua privacidade. Oferecemos os mais altos níveis de segurança para garantir que suas informações e preferências estejam sempre protegidas contra ameaças em constante evolução.</p>
      </div>
      <!-- divider -->
      <hr class="divider">
    </section>
    <!-- acessibilidade -->
    <section id="acessibilidade" class="section_display">
      <!-- compromisso title -->
      <div class="title_container_default">
        <h1 class="title_text_default">Acessibilidade para todo mundo</h1>
      </div>
      <!-- divider -->
      <hr class="divider">
      <!-- compromisso sub-title -->
      <div class="sub-title_text_container_default">
        <p class="sub-title_text_default">Quando todos os cinéfilos podem desfrutar plenamente da experiência de assistir a filmes da forma mais adequada, todos se beneficiam. Por isso, desenvolvemos o Space+ com foco em criar um sistema altamente acessível, para ajudar todos os clientes a explorar e aproveitar ao máximo seu potencial cinematográfico.</p>
      </div>
      <!-- divider -->
      <hr class="divider">
    </section>
    <!-- customização -->
    <section id="customização" class="section_display">
      <!-- compromisso title -->
      <div class="title_container_default">
        <h1 class="title_text_default">Personalização de primeira qualidade!</h1>
      </div>
      <!-- divider -->
      <hr class="divider">
      <!-- compromisso sub-title -->
      <div class="sub-title_text_container_default">
        <p class="sub-title_text_default">Seja você fã de clássicos, apaixonado por filmes de ação ou entusiasta de comédias românticas, o Space+ oferece as melhores ferramentas e recursos para personalizar e fornecer um catálogo de filmes que seja a melhor opção para você e suas preferências.</p>
      </div>
      <!-- divider -->
      <hr class="divider">
    </section>
    <!-- começar -->
    <section id="começar" class="section_display">
      <!-- compromisso title -->
      <div class="title_container_default">
        <h1 class="title_text_default">Como começar a usar os serviços do Space+</h1>
      </div>
      <!-- divider -->
      <hr class="divider">
      <!-- compromisso sub-title -->
      <div class="sub-title_text_container_default">
        <p class="sub-title_text_default">Estamos aqui para ajudar você em cada etapa dessa jornada, desde a escolha dos filmes até a experiência de aluguel e muito mais. Oferecemos treinamento e suporte completo sempre que você precisar, seja para responder a uma pergunta específica, resolver qualquer problema ou descobrir mais sobre tudo o que o Space+ pode proporcionar. Estamos à sua disposição!</p>
      </div>
      <!-- divider -->
      <hr class="divider">
    </section>
    <script src="home/script.js"></script>
    <footer class="footer">
        <p class="footer_text">Copyright © 2024 - Space+</p>
    </footer>
  </body>
</html>
