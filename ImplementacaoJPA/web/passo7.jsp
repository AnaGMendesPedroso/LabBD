<%-- 
    Document   : passo7
    Created on : Nov 23, 2018, 11:47:08 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>        
        <title>Passo 7</title>
    </head>
    <body>
        <div class="form-wrap">

            <form role="form" class="formulario-hospede" method="POST" action="${pageContext.request.contextPath}/passo8">

                <fieldset class="Cadastro">
                    <legend>Login</legend>

                    <div id="input-login" class="input-wrap">
                        <label class="input-wrap-label" for="login">Login</label>
                        <input type="text" class="form-control input-wrap-input" name="login" id="login" autocomplete="off" required>
                    </div>

                    <div id="input-password" class="input-wrap">
                        <label class="input-wrap-label" for="password">Senha</label>
                        <input type="password" class="form-control input-wrap-input" name="password" id="password" autocomplete="off" required>
                    </div>

                </fieldset>
                <div id="input-submit" class="input-wrap">
                    <input type="submit" value="Realizar login">    
                </div>  

            </form>

        </div>
    </body>
</html>
