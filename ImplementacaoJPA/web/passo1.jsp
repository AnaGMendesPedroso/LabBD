<%-- 
    Document   : passo1
    Created on : Nov 23, 2018, 1:32:41 AM
    Author     : felipecaggi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/home.css"/>
        <title>Passo 1</title>
    </head>
    <body id="passo1">
        <div class="content">
            
            <div class="exercise box">
                <div class="title-exercise">
                    <h1>Passo 1</h1>
                    <h2>Definir uma classe de entidade JPA</h2>
                    <p>
                        Para salvarmos um objeto no banco de dados usando o JPA,
                        precisamos definir uma classe de entidade
                    </p>
                </div>
                <div class="instructions">
                    <ol class="steps">
                        <li class="step">
                            <p>Criar uma classe "Usuario" no pacote "entity"</p>
                        </li>
                        <li class="step">
                            <p>Adicionar os atributos:</p>
                            <ul>
                                <li>(String) login</li>
                                <li>(String) senha</li>
                            </ul>
                        </li>
                        <li class="step">
                            <p>Gerar métodos (clique com o botão direito e vá em "inserir código")</p>
                            <ul>
                                <li>Construtor padrão (sem argumentos)</li>
                                <li>Construtor completo (com todos os argumentos)</li>
                                <li>getters e setters</li>
                            </ul>
                        </li>
                        <li class="step">
                            <p>Adicione a anotação @Entity na linha anterior ao nome da classe</p>
                            <ul>
                                <li>Ex.:</li>
                                <li class="code">@Entity</li>
                                <li class="code">public class Comida {</li>
                            </ul>
                        </li>
                        <li class="step">
                            <p>Adicione a anotação @id no atributo "login"</p>
                        </li>
                        <li class="step">
                            <p>Importe os devidos pacotes</p>
                        </li>
                    </ol>
                </div>
            </div>
                
            <div class="definition box">
                <div class="odd-definition">
                    <h2>Classe de entidade JPA</h2>
                    <p>Uma classe de entidade JPA é uma classe POJO(Plain Old Java 
                       Object - denominação que se dá para um objeto "normal", sem 
                       nada de especial), que será marcada(anotada) como tendo a 
                       capacidade de representar objetos no banco de dados</p>
                </div>
                <div class="even-definition">
                    <h2>Campos persistentes</h2>
                    <p>Armazenar um objeto de entidade no banco de dados não 
                       armazena métodos e código. Somente o estado persistente 
                       do objeto de entidade, que são seus atributos</p>
                </div>
                <div class="odd-definition">
                    <h2>Anotação</h2>
                    <p>As anotações '@...' são utilizadas para que o mapeamento 
                       objeto-relacional ocorra</p>
                </div>
                <div class="even-definition">
                    <h2>@Entity</h2>
                    <p>Declara a classe como uma entidade ou uma tabela</p>
                </div>
                <div class="odd-definition">
                    <h2>@Id</h2>
                    <p>Especifica a propriedade, use para identidade (chave 
                       primária de uma tabela) da classe.</p>
                </div>
            </div>
            
            <div class="buttons-container">
                <a class="next-step" href="${pageContext.request.contextPath}/passo2_1">
                    PRÓXIMO PASSO
                </a>
            </div>
        </div>
    </body>
</html>
