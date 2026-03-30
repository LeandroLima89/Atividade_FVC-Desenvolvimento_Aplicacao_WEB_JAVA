<%-- 
    Document   : FormarTriangulo2
    Created on : 30 de mar. de 2026, 13:59:33
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formação de Triângulo 2</title>
    </head>
    <body>
        <h1>Informe 3 números inteiros para saber se formam um triângulo:</h1>
        <form action="FormarTriangulo2.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            C: <input type="text" name="c" value="" /><br><br>
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b and not empty param.c}">
            <c:set var="a" value="${param.a + 0}"/>
            <c:set var="b" value="${param.b + 0}"/>
            <c:set var="c" value="${param.c + 0}"/>
            
            <h3>Resultado:</h3>
            
            <c:if test="${a + b > c and a + c > b and b + c > a}">
                <c:if test="${a == b and b == c}">
                    <p>Os lados <c:out value="${a}"/>, <c:out value="${b}"/> e 
                    <c:out value="${c}"/>, formam um triângulo EQUILÁTERO</p>
                </c:if>
                <c:if test="${(a == b and b != c) or (a == c and b !=c) or 
                              (b == c and a != b)}">
                    <p>Os lados <c:out value="${a}"/>, <c:out value="${b}"/> e 
                    <c:out value="${c}"/>, formam um triângulo ISÓSCELES</p>   
                </c:if>
                <c:if test="${a != b and b != c and a != c}">
                    <p>Os lados <c:out value="${a}"/>, <c:out value="${b}"/> e 
                    <c:out value="${c}"/>, formam um triângulo ESCALENO</p>
                </c:if>
            </c:if>
                    
            <c:if test="${not(a + b > c and a + c > b and b + c > a)}">
                <p>Os números <c:out value="${a}"/>, <c:out value="${b}"/> e 
                    <c:out value="${c}"/>, NÃO formam um triângulo</p>
            </c:if>
        </c:if>
        
    </body>
</html>
