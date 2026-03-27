<%-- 
    Document   : CompararNumero
    Created on : 27 de mar. de 2026, 13:27:59
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comparar Números</title>
    </head>
    <body>
        <h1>Informe dois números para compará-los:</h1>
        <form action="CompararNumero.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            <input type="submit" value="Comparar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b}">
            <c:set var="a" value="${param.a}"/>
            <c:set var="b" value="${param.b}"/>
            
            <h3>Resultado: </h3>
            
            <c:if test="${a == b}">
                <p>Os números digitados são iguais!</p>
            </c:if>
            <c:if test="${a != b}">
                <p>Os números digitados são diferentes!</p>
            </c:if>
        </c:if>
        
    </body>
</html>
