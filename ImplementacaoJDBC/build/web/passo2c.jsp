<%-- 
    Document   : passo2-3
    Created on : Nov 23, 2018, 9:43:14 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>        
        <title>Passo 2.3</title>
    </head>
    <body>
        <div class="content">
            
            <div class="exercise box">
                <div class="title-exercise">
                    <h1>Passo 2.3</h1>
                    <h2>Instanciar um conexão com banco de dados</h2>
                    <p>
                    </p>
                </div>
                <div class="instructions">
                    <ol class="steps">
                        <li class="step">
                            <p>Criar uma classe java "Cadastro" no pacote "model"</p>
                        </li>
                        <li class="step">
                            <p>Crie um método com o cabeçalho abaixo:</p>
                            <p class="code">"public void cadastrarUsuario()"</p>
                        </li>
                        <li class="step">
                            <p>Vamos iniciar uma sessão. Adicione no método criado o código abaixo:</p>
                            <p class="code">Session session = HibernateUtil.getSession();</p>
                        </li>
                        <li class="step">
                            <p>Agora iniciaremos uma transação em nossa sessão. Para isso adicione:</p>
                            <p class="code">session.getTransaction().begin();</p>
                        </li>
                        <li class="step">
                            <p>Agora já que iniciamos uma sessão, vamos fechar ela. Segue código abaixo.</p>
                            <p class="code">session.close();</p>
                        </li>
                    </ol>
                </div>
            </div>
            
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo3">
                    PRÓXIMO PASSO
                </a>
            </div>
        </div>
    </body>
</html>
