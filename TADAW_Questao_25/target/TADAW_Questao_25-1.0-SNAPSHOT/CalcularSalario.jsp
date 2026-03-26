<%-- 
    Document   : CalcularSalario
    Created on : 26 de mar. de 2026, 14:22:06
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Salário Líquido</title>
    </head>
    <body>
        <h1>Informe o salário fixo e o total de vendas do funcionário:</h1>
        <form action="CalcularSalario.jsp" method="POST">
            Salário: <input type="text" name="salarioFixo" value="" /><br><br>
            Vendas: <input type="text" name="vendas" value="" /><br><br>
            <input type="submit" value="Calcular Salário Líquido" />
        </form>
        
        <c:if test="${not empty param.salarioFixo and not empty param.vendas}">
            <c:set var="salarioFixo" value="${param.salarioFixo}"/>
            <c:set var="vendas" value="${param.vendas}"/>
            
            <c:set var="imposto" value="${salarioFixo * 0.06}"/>
            <c:set var="comissao" value="${vendas * 0.05}"/>
            
            <c:set var="salarioLiquido" value="${(salarioFixo - imposto) + comissao}"/>
            
            <h3>Resultado:</h3>
            <p>Salário fixo = R$ <c:out value="${salarioFixo}"/></p>
            <p>Imposto (6%) = R$ <c:out value="${imposto}"/></p>
            <p>Vendas (5%) = R$ <c:out value="${comissao}"/></p>
            <p>Salário Líquido = R$ <c:out value="${salarioLiquido}"/></p>

        </c:if>

    </body>
</html>
