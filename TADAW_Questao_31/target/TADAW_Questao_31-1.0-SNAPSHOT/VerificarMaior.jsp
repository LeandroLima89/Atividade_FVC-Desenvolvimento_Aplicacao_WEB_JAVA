<%-- 
    Document   : VerificarMaior
    Created on : 27 de mar. de 2026, 14:39:22
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar o maior número</title>
    </head>
    <body>
        <h1>Informe os três números para saber quem é o maior:</h1>
        <form action="VerificarMaior.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            C: <input type="text" name="c" value="" /><br><br>
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b and not empty param.c}">
            <c:set var="a" value="${param.a}"/>
            <c:set var="b" value="${param.b}"/>
            <c:set var="c" value="${param.c}"/>
            
            <!-- Somei com 0 pois foi a forma que encontrei para converter
            a String do formulário para number, devido a comparação entre maior e menor-->
            
            <c:if test="${a + 0 > b + 0 and a + 0 > c + 0}">
                <p>O número <c:out value="${a}"/>, é maior que os números 
                <c:out value="${b}"/> e <c:out value="${c}"/></p>
            </c:if>
            <c:if test="${b + 0 > a + 0 and b + 0 > c + 0}">
                <p>O número <c:out value="${b}"/>, é maior que os números 
                <c:out value="${a}"/> e <c:out value="${c}"/></p>
            </c:if>
            <c:if test="${c + 0 > a + 0 and c + 0 > b + 0}">
                <p>O número <c:out value="${c}"/>, é maior que os números 
                <c:out value="${a}"/> e <c:out value="${b}"/></p>
            </c:if>
        </c:if>
        
    </body>
</html>
