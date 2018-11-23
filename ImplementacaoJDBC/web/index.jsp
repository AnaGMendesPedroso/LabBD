<%-- 
    Document   : home
    Created on : Nov 23, 2018, 12:06:33 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>
        <title>Welcome</title>
    </head>
    <body id="home">  
        <div class="content">
            <div class="welcome">
                <h1>Bem-vindo ao tutorial de implementação JPA</h1>
                <img src="imagem/DisgustingQuarrelsomeKiskadee-small.gif" height="200" width="150">
            </div>
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo1">
                    COMEÇAR
                </a>
            </div>
        </div>
    </body>
</html>
