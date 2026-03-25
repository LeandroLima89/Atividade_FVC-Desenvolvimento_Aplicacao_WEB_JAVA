<%-- 
    Document   : CalculoSalario
    Created on : 25 de mar. de 2026, 14:21:27
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Salário-Base</title>
    </head>
    <body>
        <h1>Informe o salário-base do funcionário:</h1>
        <form action="CalculoSalario.jsp" method="POST">
            Salário-Base: <input type="text" name="salario" value="" />
            <input type="submit" value="Calcular Salário" />
        </form>
        
        <%
            String salario = request.getParameter("salario");
            
            if (salario != null) {
                try {
                    double salarioBase = Double.parseDouble(salario);
                    
                    double gratificacao = salarioBase * 0.05;
                    double imposto = salarioBase * 0.07;
                    double salarioLiquido = salarioBase + gratificacao - imposto;
                    
                    out.println("<h2>Resultado:</h2>");
                    out.println("<p>Salário-Base = R$" + String.format("%.2f", salarioBase) + "</p>");
                    out.println("<p>Gratificação (5%) = R$" + String.format("%.2f", gratificacao) + "</p>");
                    out.println("<p>Imposto (7%) = R$" + String.format("%.2f", imposto) + "</p>");
                    out.println("<p>Salário Líquido = R$" + String.format("%.2f", salarioLiquido) + "</p>");
                    } catch (Exception e) {
                        out.println("<p>Informe um salário válido!</p>");
                    }
            }
        %>
        
    </body>
</html>
