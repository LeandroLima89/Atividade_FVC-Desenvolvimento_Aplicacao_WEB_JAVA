<%-- 
    Document   : VerificarNumeros
    Created on : 30 de mar. de 2026, 13:11:20
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar números</title>
    </head>
    <body>
        <h1>Informe 5 números para saber qual o maior e qual o menor:</h1>
        <form action="VerificarNumeros.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            C: <input type="text" name="c" value="" /><br><br>
            D: <input type="text" name="d" value="" /><br><br>
            E: <input type="text" name="e" value="" /><br><br>
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b and not empty param.c
              and not empty param.d and not empty param.e}">
            <c:set var="a" value="${param.a + 0}"/>
            <c:set var="b" value="${param.b + 0}"/>
            <c:set var="c" value="${param.c + 0}"/>
            <c:set var="d" value="${param.d + 0}"/>
            <c:set var="e" value="${param.e + 0}"/>

            <c:set var="maior" value="${a}"/>
            <c:set var="menor" value="${a}"/>

            <!-- Verificação do Maior -->
            <c:if test="${b > maior}">
                <c:set var="maior" value="${b}"/>
            </c:if>
            <c:if test="${c > maior}">
                <c:set var="maior" value="${c}"/>
            </c:if>
            <c:if test="${d > maior}">
                <c:set var="maior" value="${d}"/>
            </c:if>
            <c:if test="${e > maior}">
                <c:set var="maior" value="${e}"/>
            </c:if>

            <!-- Verificação do Menor -->
            <c:if test="${b < menor}">
                <c:set var="menor" value="${b}"/>
            </c:if>
            <c:if test="${c < menor}">
                <c:set var="menor" value="${c}"/>
            </c:if>
            <c:if test="${d < menor}">
                <c:set var="menor" value="${d}"/>
            </c:if>
            <c:if test="${e < menor}">
                <c:set var="menor" value="${e}"/>
            </c:if>

            <h3>Resultado:</h3>
            <p>O maior número é: <c:out value="${maior}"/></p>
            <p>O menor número é: <c:out value="${menor}"/></p>
        </c:if>
    </body>
</html>
