<%-- 
    Document   : VerificarNumero
    Created on : 28 de mar. de 2026, 18:41:41
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Par ou Ímpar</title>
    </head>
    <body>
        <h1>Informe o número para verificar se ele é par ou ímpar</h1>
        <form action="VerificarNumero.jsp" method="POST">
            Número: <input type="text" name="numero" value="" />
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.numero}">
            <c:set var="numero" value="${param.numero}"/>
            
            <c:if test="${numero mod 2 == 0}">
                <p>Resultado:</p>
                <p>O número <c:out value="${numero}"/>, é PAR!</p>
            </c:if>
            <c:if test="${numero mod 2 != 0}">
                <p>Resultado:</p>
                <p>O número <c:out value="${numero}"/>, é ÍMPAR!</p>
            </c:if>
        </c:if>
        
    </body>
</html>
