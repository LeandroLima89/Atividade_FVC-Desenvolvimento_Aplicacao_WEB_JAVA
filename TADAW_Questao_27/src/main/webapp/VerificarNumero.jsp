<%-- 
    Document   : VerificarNumero
    Created on : 27 de mar. de 2026, 12:44:11
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Número</title>
    </head>
    <body>
        <h1>Informe o número para saber se ele é Positivo, Negativo ou Nulo:</h1>
        <form action="VerificarNumero.jsp" method="POST">
            Número: <input type="text" name="numero" value="" />
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.numero}">
            <c:set var="numero" value="${param.numero}"/>
            
            <h3>Resultado:</h3>
            
            <c:if test="${numero > 0}">
                <p>O número <c:out value="${numero}"/> é POSITIVO</p>
            </c:if>
             
            <c:if test="${numero < 0}">
                <p>O número <c:out value="${numero}"/> é NEGATIVO</p>
            </c:if>
            
            <c:if test="${numero == 0}">
                <p>O número <c:out value="${numero}"/> é NULO</p>
            </c:if>
            
        </c:if>
        
    </body>
</html>
