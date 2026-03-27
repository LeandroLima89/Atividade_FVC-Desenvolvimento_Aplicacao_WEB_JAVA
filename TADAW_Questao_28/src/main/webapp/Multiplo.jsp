<%-- 
    Document   : Multiplo
    Created on : 27 de mar. de 2026, 13:12:11
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Múltiplo</title>
    </head>
    <body>
        <h1>Informe o número para verificar se é múltiplo de 5:</h1>
        <form action="Multiplo.jsp" method="POST">
            Número: <input type="text" name="numero" value="" />
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.numero}">
            <c:set var="numero" value="${param.numero}"/>
            
            <h3>Resultado:</h3>
            
            <c:if test="${numero mod 5 == 0}">
                <p>O número <c:out value="${numero}"/>, é múltiplo de 5</p>
            </c:if>
            <c:if test="${numero mod 5 != 0}">
                <p>O número <c:out value="${numero}"/>, NÃO é múltiplo de 5</p>
            </c:if>
        </c:if>
        
    </body>
</html>
