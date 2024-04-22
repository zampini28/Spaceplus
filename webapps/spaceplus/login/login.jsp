<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login/style.css">    
</head>
<body>
    <div class="container">
        <p id="errorlabel" class="title-header" style="visibility: hidden; color: red;">Usuário e/ou senha inválidos</p>
        <p id="header" class="title-header" style="visibility: hidden;">Preencha todos os campos</p>
        <div id="subcontainer" class="subcontainer">
            <input class="flow-input" type="text" placeholder="Usuário" autocomplete="on" spellcheck="false" title="Digite seu usuário" autofocus required id="username" value="" autocapitalize="none" autocorrect="off">
            <input class="flow-input" type="password" id="password" placeholder="Senha" autocomplete="current-password" spellcheck="false" title="Digite sua senha" value="" autocapitalize="no" autocorrect="off" required autofocus>
            <p class="err-msg" style="display: none;">Preencha todos os campos</p>
            <p class="text-registrar">Não tem uma conta?
                <strong class="link-registrar">
                    <a href="/spaceplus/signup">Registre-se</a>
                </strong>
            </p>
            <button class="commitForm disabled" id="commit">Entrar</button>
        </div>
    </div>
    <script src="login/script.js"></script>
</body>
</html>
