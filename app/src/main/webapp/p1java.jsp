<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int numA = 1;
    int numB = 1;
    int count = 0;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>P1 - Java II</title>
</head>
<body>
    <h1>Teste</h1>
    <%
    do {
        if((count++) <=2){
            int result = numA + numB;
            numA = numB;
            numB = result;
        }
        out.print(numB);
        out.print("<br />");
    }while(count < 100 );
    %>
</body>
</html>