<%-- 
    Document   : MostrarDigito
    Created on : 26 de mar. de 2026, 13:05:10
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Dígito da Unidade</title>
    </head>
    <body>
        <h1>Insira um número inteiro:</h1>
        <form action="MostrarDigito.jsp" method="POST">
            Número: <input type="text" name="numero" value="" />
            <input type="submit" value="Mostrar Dígito da Unidade" />
        </form>
        <c:if test ="${not empty param.numero}">
            <c:set var = "num" value="${param.numero}"/>
            <c:set var = "unidade" value="${num % 10}"/>
            
            <<h3>Resultado:</h3>
            <p>O dígito da unidade do número <c:out value="${num}"/> é 
                <c:out value="${unidade}" /></p>
        </c:if>
        
    </body>
</html>
