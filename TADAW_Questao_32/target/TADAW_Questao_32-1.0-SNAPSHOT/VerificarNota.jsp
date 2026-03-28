<%-- 
    Document   : VerificarNota
    Created on : 27 de mar. de 2026, 15:08:16
    Author     : leo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Nota</title>
    </head>
    <body>
        <h1>Informe a nota do aluno:</h1>
        <form action="VerificarNota.jsp" method="POST">
            <input type="text" name="nota" value="" />
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.nota}">
            <c:set var="nota" value="${param.nota}"/>
            
            <c:if test="${nota >= 0.0 and nota <= 10.0}">
                <p>A nota <c:out value="${nota}"/>, é VÁLIDA</p>
            </c:if>
            <c:if test="${nota < 0.0 or nota > 10.0}">
                <p>A nota <c:out value="${nota}"/>, NÃO é válida</p>
            </c:if>
        </c:if>
        
    </body>
</html>
