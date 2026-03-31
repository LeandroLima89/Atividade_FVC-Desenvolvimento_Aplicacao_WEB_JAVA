<%-- 
    Document   : ValidarData
    Created on : 31 de mar. de 2026, 13:03:21
    Author     : leo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validação de Datas</title>
    </head>
    <body>
        <h1>Informe uma data para validação:</h1>
        <form action="ValidarData.jsp" method="POST">
            Dia: <input type="text" name="dia" value="" /><br><br>
            Mês: <input type="text" name="mes" value="" /><br><br>
            Ano: <input type="text" name="ano" value="" /><br><br>
            <input type="submit" value="Validar" />
        </form>
        
        <c:if test="${not empty param.dia and not empty param.mes and not empty param.ano}">
            <c:set var="dia" value="${param.dia + 0}"/>
            <c:set var="mes" value="${param.mes + 0}"/>
            <c:set var="ano" value="${param.ano + 0}"/>
            
            <!-- Verificação do mês -->
            <c:choose>
                <c:when test="${mes < 1 or mes > 12}">
                    <p>Data inválida - mês <c:out value="${mes}"/> NÃO EXISTE</p>
                </c:when>
                <c:otherwise>
                    <!-- Verificação de dias dos meses -->
                    <c:set var="diaDoMes" value="${31}"/>
                    <c:if test="${mes == 4 or mes == 6 or mes == 9 or mes == 11}">
                        <c:set var="diaDoMes" value="${30}"/>
                    </c:if>
                    <c:if test="${mes == 2}">
                        <!-- Verificação do Ano Bissexto (fev) -->
                        <c:choose>
                            <c:when test="${(ano % 400 == 0) or (ano % 4 == 0 and
                                            ano % 100 != 0)}">
                                <c:set var="diaDoMes" value="${29}"/>
                            </c:when>
                            <c:otherwise>
                                <c:set var="diaDoMes" value="${28}"/>
                            </c:otherwise>
                        </c:choose>
                    </c:if>
                    
                    <!-- Verificação do Dia -->
                    <c:if test="${dia >= 1 and dia <= diaDoMes}">
                        <p>A data <c:out value="${dia}"/>/<c:out value="${mes}"/>/<c:out value="${ano}"/> é VÁLIDA</p>
                    </c:if>
                    <c:if test="${dia < 1 or dia > diaDoMes}">
                        <p>Data inválida - O mês <c:out value="${mes}"/> possui <c:out value="${diaDoMes}"/> dias</p>
                    </c:if>
                </c:otherwise>
            </c:choose>
        </c:if>
        
    </body>
</html>
