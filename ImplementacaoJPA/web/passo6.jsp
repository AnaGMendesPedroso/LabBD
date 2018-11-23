<%-- 
    Document   : passo6
    Created on : Nov 23, 2018, 11:37:07 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>
        <title>Passo 6</title>
    </head>
    <body>
        <div class="form-wrap">
            <form role="form" class="formulario-hospede" method="POST" action="${pageContext.request.contextPath}/passo5">    
                <div id="input-submit" class="input-wrap">
                    <input type="submit" value="CADASTRAR USUARIO">    
                </div>    
            </form>
            
            <form role="form" class="formulario-hospede" method="POST" action="${pageContext.request.contextPath}/passo7">    
                <div id="input-submit" class="input-wrap">
                    <input type="submit" value="REALIZAR LOGIN">    
                </div>
            </form>
        </div>
    </body>
</html>
