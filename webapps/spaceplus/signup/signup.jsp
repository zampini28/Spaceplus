<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="signup/style.css">    
</head>
<body>
    <div class="container">
        <p id="errorlabel" class="title-header" style="color: red;"></p>
        <p id="header" class="title-header" style="visibility: hidden;">Preencha todos os campos</p>
        <div id="subcontainer" class="subcontainer">
            <input class="flow-input" type="text" placeholder="Nome completo" autocomplete="on" spellcheck="false" title="Digite seu nome completo" autofocus required id="name" value="" autocapitalize="on" autocorrect="off">
            <input class="flow-input" type="email" id="email" placeholder="Endereço de email" autocomplete="on" spellcheck="false" title="Digite seu email" value="" autocapitalize="no" autocorrect="off" required autofocus>
            <input class="flow-input" type="text" placeholder="Usuário" autocomplete="on" spellcheck="false" title="Digite seu usuário" autofocus required id="username" value="" autocapitalize="none" autocorrect="off">
            <input class="flow-input" type="password" id="password" placeholder="Senha" autocomplete="current-password" spellcheck="false" title="Digite sua senha" value="" autocapitalize="no" autocorrect="off" required autofocus>
            <p class="err-msg" style="display: none;">Preencha todos os campos</p>
            <button class="commitForm disabled" id="commit">Entrar</button>
        </div>
    </div>
    <script src="signup/script.js"></script>
</body>
</html>
