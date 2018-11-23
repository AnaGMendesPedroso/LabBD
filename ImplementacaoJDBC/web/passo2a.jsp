<%-- 
    Document   : passo2
    Created on : Nov 23, 2018, 8:31:42 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>        
        <title>Passo 2.1</title>
    </head>
    <body>
        <div class="content">
            
            <div class="exercise box">
                <div class="title-exercise">
                    <h1>Passo 2.1</h1>
                    <h2>Obtendo uma conexão de banco de dados JPA</h2>
                    <p>
                        Vamos conectar no banco de dados, para isso criaremos um
                        arquivo de configuração do hibernate
                    </p>
                </div>
                <div class="instructions">
                    <ol class="steps">
                        <li class="step">
                            <p>Clique para adicionar um novo arquivo</p>
                        </li>
                        <li class="step">
                            <p>Na seção de categorias selecione "Hibernate"</p>
                        </li>
                        <li class="step">
                            <p>Em tipos de arquivos selecione "Hibernate Configuration Wizard"</p>
                        </li>
                        <li class="step">
                            <p>Clique em "próximo"</p>
                        </li>
                        <li class="step">
                            <p>Nomeie seu arquivo como "hibernate.cfg" e clique em próximo</p>
                        </li>
                        <li class="step">
                            <p>Clique em "próximo"</p>
                        </li>
                        <li class="step">
                            <p>Selecione a conexão de banco de dados "jdbc:postgresql//localhost:5432/labbd"</p>
                        </li>
                        <li class="step">
                            <p>Clique em "finalizar"</p>
                        </li>
                    </ol>
                </div>
            </div>
            
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo2b">
                    PRÓXIMO PASSO
                </a>
            </div>
        </div>
    </body>
</html>
