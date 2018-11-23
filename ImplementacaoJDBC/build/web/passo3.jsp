<%-- 
    Document   : passo3
    Created on : Nov 23, 2018, 10:13:17 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>        
        <title>Passo 3</title>
    </head>
    <body>
        <div class="content">
            
            <div class="exercise box">
                <div class="title-exercise">
                    <h1>Passo 3</h1>
                    <h2>Operações de banco de dados CREATE com JPA</h2>
                    <p>
                    </p>
                </div>
                <div class="instructions">
                    <p>Obs.: Adicione os códigos desta etapa no espaço indicado abaixo<p>
                    
                            <p>public void cadastrarUsuario() {

                            <p class="tab">Session session = HibernateUtil.getSession();

                            <p class="tab">session.getTransaction().begin();

                            <p class="tab">ADICIONE O CÓDIGO ENTRE ESSAS DUAS LINHAS</p>

                            <p class="tab">session.close();

                            <p>}</p>   
                    <ol class="steps">
                        <li class="step">
                            <p>Receba no cabeçalho os argumentos "String login, String senha"</p>
                        </li>
                        <li class="step">
                            <p>Crie e instancie um objeto 'pessoa' do tipo 'Pessoa' passando como parâmetro 'login' e 'senha'</p>
                        </li>
                        <li class="step">
                            <p>Vamos persistir nosso objeto 'pessoa' para associarmos ele à nossa transação. Adicione o código abaixo:</p>
                            <p class="code">session.persist(pessoa);</p>
                        </li>
                        <li class="step">
                            <p>Por último, precisamos confirmar nossa alteração de dados da seção. Para isso, relizamos o commit da nossa transação</p>
                            <p class="code">session.getTransaction().commit();</p>
                        </li>
                    </ol>
                </div>
            </div>
            
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo4">
                    PRÓXIMO PASSO
                </a>
            </div>
        </div>
    </body>
</html>