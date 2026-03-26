<%-- 
    Document   : CalcularPotenciaLamp
    Created on : 26 de mar. de 2026, 13:29:45
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Potência da Lâmpada</title>
    </head>
    <body>
        <h1>Informe a largura e a profundidade da sala:</h1>
        <form action="CalcularPotenciaLamp.jsp" method="POST">
            Largura: <input type="text" name="largura" value="" /><br><br>
            Profundidade: <input type="text" name="profundidade" value="" /><br><br>
            <input type="submit" value="Calcular Potência" />
        </form>
        
        <c:if test="${not empty param.largura and not empty param.profundidade}">
            <c:set var="largura" value="${param.largura}"/>
            <c:set var="profundidade" value="${param.profundidade}"/>

            <c:set var="area" value="${largura * profundidade}"/>

            <c:set var="potencia" value="${area * 18}"/>

            <h3>Resultado:</h3>
            <p>A área da sala é <c:out value="${area}"/> m²</p>
            <p>A potência da lâmpada deverá ser de <c:out value="${potencia}"/> W</p>

        </c:if>
        
    </body>
</html>
