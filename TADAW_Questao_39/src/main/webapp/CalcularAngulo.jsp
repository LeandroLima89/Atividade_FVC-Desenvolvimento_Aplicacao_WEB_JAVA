<%-- 
    Document   : CalcularAngulo
    Created on : 30 de mar. de 2026, 14:13:51
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo de Ângulos</title>
    </head>
    <body>
        <h1>Informe uma medida de ângulos:</h1>
        <form action="CalcularAngulo.jsp" method="POST">
            Ângulo (0º a 360º): <input type="text" name="angulo" value="" />
            <input type="submit" value="Calcular" />
        </form>
        
        <c:if test="${not empty param.angulo}">
            <c:set var="angulo" value="${param.angulo + 0}"/>
                        
            <h3>Resultado:</h3>
            
            <c:if test="${angulo < 0 or angulo > 360}">
                <p>O ângulo de <c:out value="${angulo}"/>º não está no intervalo de 0º a 360º</p>
            </c:if>
            
            <c:if test="${angulo > 0 and angulo < 90}">
                <p>O ângulo de <c:out value="${angulo}"/>º está no Primeiro Quadrante</p>
            </c:if>
            <c:if test="${angulo > 90 and angulo < 180}">
                <p>O ângulo de <c:out value="${angulo}"/>º está no Segundo Quadrante</p>
            </c:if>
            <c:if test="${angulo > 180 and angulo < 270}">
                <p>O ângulo de <c:out value="${angulo}"/>º está no Terceiro Quadrante</p>
            </c:if>
            <c:if test="${angulo > 270 and angulo < 360}">
                <p>O ângulo de <c:out value="${angulo}"/>º está no Quarto Quadrante</p>
            </c:if>
                
            <!-- Precisei tratar os ângulos 0º, 90º, 180º, 270º e 360º para 
            aparecer no resultado caso fosse digitado, pois não estavam aparecendo --> 
            <c:if test="${angulo == 0 or angulo == 180 or angulo == 360}">
                <p>O ângulo de <c:out value="${angulo}"/>º está sobre o eixo X</p>
            </c:if>
            <c:if test="${angulo == 90 or angulo == 270}">
                <p>O ângulo de <c:out value="${angulo}"/>º está sobre o eixo Y</p>
            </c:if>
        </c:if>
        
    </body>
</html>
