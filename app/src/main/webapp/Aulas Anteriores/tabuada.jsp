<!-- COMO FAZER UMA TABUADA COM JAVA WEB -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<!-- COMANDO PARA CONSEGUIR UTILIZAR O JAVA EM UM DOCUMENTO HTML -->
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!-- "CONVERTER O COMANDO <% EM 'c' " -->



<%
    int[] resultado = new int [10];
    for(int indice = 0; indice < 10; indice++){
        resultado[indice] = (indice + 1) * 5;
    }
    request.setAttribute("tabuada",resultado);
%>


<!-- DOCUMENTO HTML -->
<!DOCTYPE html>
<html lang="pr-BR">
<head>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Tabuada</title>


</head>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: 0;
        text-decoration: 0;
        list-style: 0;
    }
    body{
        background-color: #000;
        color: #FFF;
        font-family: 'Poppins', sans-serif;
    }

</style>

<body>
    <div class="container">
        <div id="home">
            <h1>Tabuada</h1>
        
            <ul>
                <% for(int num = 1; num <= 10; num++){%>
                    <li>5 x <%=num %> = <%= num * 5 %></li>
                <% } %>
            </ul>
            <br><hr><br>
        </div>
        <div>
            <% for(int valor : resultado){%>
                
            <li><%= valor%></li>
            <% } %>
        </div>
    
        <br>
        <hr>
        <br>
    </div>

    <div>

        <h1>Tabuada</h1>
        <ul>
    
            <%
            
                for(int num = 1; num <= 10; num++){ %>
                    <li><%= num * 5%></li>
            <%}%>
                
        </ul>
    
        <hr />
        <ul>
        <%
            
         for(int valor: resultado){ %>
            <li><%= valor %></li>
        <%}%>
        </ul>
    
        <hr />
    
        <ul>
            <c:forEach var="num" items="${tabuada}">
                <li>${num}</li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>