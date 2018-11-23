<%-- 
    Document   : passo4
    Created on : Nov 23, 2018, 10:44:32 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>        
        <title>Passo 4</title>
    </head>
    <body>
        <div class="content">
            
            <div class="exercise box">
                <div class="title-exercise">
                    <h1>Passo 4</h1>
                    <h2>Operações de banco de dados READ com JPA</h2>
                    <p>
                        Vamos visualizar os dados agoras que serão inseridos no banco
                    </p>
                </div>
                <div class="instructions">
                   
                    <ol class="steps">
                        <li class="step">
                            <p>Adicione na classe Cadastro um novo método com a seguinte assinatura:</p>
                            <p class="code">public boolean validarUsuario(String login, String senha)</p>
                        </li>
                        <li class="step">
                            <p>Inicie uma sessão adicionando o código abaixo:</p>
                            <p class="code">Session session = HibernateUtil.getSession();</p>
                        </li>
                        <li class="step">
                            <p>Para buscar informações no banco utilizaremos o método 'get(persist.class, id)' do nossso objeto 'session'. Segue código abaixo</p>
                            <p class="code">Usuario usuario = (Usuario) session.get(Usuario.class, senha);</p>
                        </li>
                        <li class="step">
                            <p>Agora que já buscamos os dados, podemos fechar nossa sessão</p>
                            <p class="code">session.close();</p>
                        </li>
                        <li class="step">
                            <p>Vamos validar nosso usuário com a seguinte estrutura condicional, que verificará se a senha recebida é igual a senha cadastrada</p>
                            <p class="code">return usuario.getSenha().equals(senha);</p>
                        </li>
                    </ol>
                </div>
            </div>
            
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo5">
                    PRÓXIMO PASSO
                </a>
            </div>
        </div>
    </body>
</html>