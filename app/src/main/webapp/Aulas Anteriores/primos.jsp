<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    int[] valores = new int[100];
    for(int num = 1; num < 101; num++)
        valores[num-1] = num;
    request.setAttribute("numeros", valores);
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Eercício 5</title>
</head>
<body>
    <c:forEach var="item" items="${numeros}">
        <c:if test="${item % 2 != 0}">
            ${item}<br/>
        </c:if>
    </c:forEach>   
</body>
</html>