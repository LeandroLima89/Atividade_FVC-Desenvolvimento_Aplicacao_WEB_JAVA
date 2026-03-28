<%-- 
    Document   : OrdenarNumeros
    Created on : 28 de mar. de 2026, 18:22:02
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenar Números</title>
    </head>
    <body>
        <h1>Informe os dois números para ordenar:</h1>
        <form action="OrdenarNumeros.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            <input type="submit" value="Ordenar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b}">
            <c:set var="a" value="${param.a}"/>
            <c:set var="b" value="${param.b}"/>
            
            <c:if test="${a + 0 > b + 0}">
                <c:set var="aux" value="${a}"/>
                <c:set var="a" value="${b}"/>
                <c:set var="b" value="${aux}"/>
            </c:if>
            
            <h3>Resultado em ordem crescente:</h3>
            <p>A = <c:out value="${a}"/></p>
            <p>B = <c:out value="${b}"/></p>
        </c:if>
        
    </body>
</html>
