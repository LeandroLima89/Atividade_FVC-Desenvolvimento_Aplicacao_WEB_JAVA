<%-- 
    Document   : OrganizarOrdem
    Created on : 31 de mar. de 2026, 13:34:52
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organizar em ordem decrescente</title>
    </head>
    <body>
        <h1>Informe três números para organizar em ordem decrescente:</h1>
        <form action="OrganizarOrdem.jsp" method="POST">
            A: <input type="text" name="a" value="" /><br><br>
            B: <input type="text" name="b" value="" /><br><br>
            C: <input type="text" name="c" value="" /><br><br>
            <input type="submit" value="Organizar Decrescente" />
        </form>
        
        <c:if test="${not empty param.a and not empty param.b and not empty param.c}">
            <c:set var="a" value="${param.a + 0}"/>
            <c:set var="b" value="${param.b + 0}"/>
            <c:set var="c" value="${param.c + 0}"/>
            
            <!--Valor Maior-->
            <c:set var="maior" value="${a}"/>
            <c:if test="${b > maior}">
                <c:set var="maior" value="${b}"/>
            </c:if>
            <c:if test="${c > maior}">
                <c:set var="maior" value="${c}"/>
            </c:if>
            
            <!--Valor Menor-->
            <c:set var="menor" value="${a}"/>
            <c:if test="${b < menor}">
                <c:set var="menor" value="${b}"/>
            </c:if>
            <c:if test="${c < menor}">
                <c:set var="menor" value="${c}"/>
            </c:if>
            
            <!--Valor do Meio-->
            <c:set var="meio" value="${a + b + c - maior - menor}"/>
            
            <!--Organiza na Ordem Decrescente-->
            <c:set var="a" value="${maior}"/>
            <c:set var="b" value="${meio}"/>
            <c:set var="c" value="${menor}"/>
            
            <h3>Resultado - Ordem Decrescente dos valores informados:</h3>
            <p>A: <c:out value="${a}"/></p>
            <p>B: <c:out value="${b}"/></p>
            <p>C: <c:out value="${c}"/></p>
                          
        </c:if>
        
    </body>
</html>
