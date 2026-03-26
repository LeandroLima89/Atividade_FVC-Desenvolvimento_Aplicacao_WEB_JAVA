<%-- 
    Document   : CalcularEquacao
    Created on : 26 de mar. de 2026, 14:42:31
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Equação 2º Grau</title>
    </head>
    <body>
        <h1>Informe os valores de A, B e C:</h1>
        <form action="CalcularEquacao.jsp" method="POST">
            Valor de A: <input type="text" name="a" value="" /><br><br>
            Valor de B:<input type="text" name="b" value="" /><br><br>
            Valor de C:<input type="text" name="c" value="" /><br><br>
            <input type="submit" value="Calcular" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b and not empty param.c}">
            <c:set var="a" value="${param.a}" />
            <c:set var="b" value="${param.b}" />
            <c:set var="c" value="${param.c}" />
            
            <c:set var="delta" value="${(b * b) - (4 * a * c)}" />
            
            <c:set var="x1" value="${(-b + Math.sqrt(delta)) / (2 * a)}"/>
            <c:set var="x2" value="${(-b - Math.sqrt(delta)) / (2 * a)}"/>
            
            <h3>Resultado:</h3>
            <p>Coeficientes A: <c:out value="${a}"/>, B: <c:out value="${b}"/>, C: <c:out value="${c}"/></p>
            <p>Raiz X1: <c:out value="${x1}"/></p>
            <p>Raiz X2: <c:out value="${x2}"/></p>

        </c:if>
        
    </body>
</html>
