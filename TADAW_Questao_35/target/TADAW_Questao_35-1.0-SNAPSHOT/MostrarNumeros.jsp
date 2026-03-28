<%-- 
    Document   : MostrarNumeros
    Created on : 28 de mar. de 2026, 18:53:48
    Author     : leo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar raiz ou quadrado do número</title>
    </head>
    <body>
        <h1>Informe um número inteiro:</h1>
        <p>Obs: se o número for positivo irá mostrar a raiz, se for negativo irá mostrar o quadrado</p>
        <form action="MostrarNumeros.jsp" method="POST">
            Número: <input type="text" name="numero" value="" />
            <input type="submit" value="Calcular" />
        </form>
        
        <c:if test="${not empty param.numero}">
            <c:set var="numero" value="${param.numero}"/>
            
            <h3>Resultado:</h3>
            
            <c:if test="${numero >= 0}">
                <p>A raíz quadrada do número <c:out value="${numero}"/> é: 
                <c:out value="${Math.sqrt(numero)}"/></p>
            </c:if>
            <c:if test="${numero < 0}">
                <p>O quadrado do número <c:out value="${numero}"/> é: 
                <c:out value="${numero * numero}"/></p>
            </c:if>
        </c:if>
        
    </body>
</html>
