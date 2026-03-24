<%-- 
    Document   : NovoSalario
    Created on : 24 de mar. de 2026, 14:28:38
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Novo Salário</title>
    </head>
    <body>
        <h1>Informe o salário atual:</h1>
        <form action="NovoSalario.jsp" method="POST">
            Salário Atual: <input type="text" name="salario" value="" />
            <input type="submit" value="Calcular Novo Salário" />
        </form>
        
        <%
            String sl = request.getParameter("salario");
            
            if (sl != null){
                try {
                        double salarioAtual = Double.parseDouble(sl);
                        
                        double novoSalario = salarioAtual + (salarioAtual * 0.06);
                        
                        out.println("<h2>Resultado:</h2>");
                        out.println("<p>Salário Anterior: R$" + String.format("%.2f", salarioAtual) + "</p>");
                        out.println("<p>Novo Salário com 6% de aumento: R$" + String.format("%.2f", novoSalario) + "</p>");
                    } catch (Exception e) {
                        out.println("<p>Insira um valor válido!</p>");
                    }
            }
        %>
    </body>
</html>
