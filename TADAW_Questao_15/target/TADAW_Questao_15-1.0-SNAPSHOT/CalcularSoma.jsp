<%-- 
    Document   : CalcularSoma
    Created on : 23 de mar. de 2026, 14:35:42
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular Soma</title>
    </head>
    <body>
        <h1>Informe dois números inteiros</h1>
        <form action="CalcularSoma.jsp" method="POST">
            Primeiro Valor: <input type="text" name="x" value="" /><br><br>
            Segundo Valor: <input type="text" name="y" value="" /><br><br>
            <input type="submit" value="Somar" />
        </form>
        
        <%
            String primeiroValor = request.getParameter("x");
            String segundoValor = request.getParameter("y");
            
            if (primeiroValor != null && segundoValor != null){
                try {
                        int x = Integer.parseInt(primeiroValor);
                        int y = Integer.parseInt(segundoValor);
                        int soma = x + y;
                        
                        out.println("<h2>Soma = " + soma + "</h2>");
                        
                    } catch (Exception e) {
                        out.println("<p>Digite apenas números inteiros!</p>");
                    }
            }
        %>
    </body>
</html>
