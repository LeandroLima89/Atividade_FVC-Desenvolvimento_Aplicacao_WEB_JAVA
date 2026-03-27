<%-- 
    Document   : VerificarMaior
    Created on : 27 de mar. de 2026, 14:00:33
    Author     : leo
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar o número maior</title>
    </head>
    
        <h1>Informe os números para saber quem é o maior:</h1>
        <form action="VerificarMaior.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            <input type="submit" value="Verificar" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b}">
            <c:set var="a" value="${param.a}"/>
            <c:set var="b" value="${param.b}"/>
            
            <h3>Resultado:</h3>
            
            <c:if test="${a + 0 > b + 0}"> <!<!-- Somei com 0 pois foi a forma que encontrei para converter
                a String do formulário para number, devido a comparação entre maior e menor-->
                <p>O número <c:out value="${a}"/>, é MAIOR que o número 
                    <c:out value="${b}"/></p>
            </c:if>
            <c:if test="${b + 0 > a + 0}">
                <p>O número <c:out value="${b}"/>, é MAIOR que o número 
                    <c:out value="${a}"/></p>
            </c:if>
        </c:if>
        
    
</html>
