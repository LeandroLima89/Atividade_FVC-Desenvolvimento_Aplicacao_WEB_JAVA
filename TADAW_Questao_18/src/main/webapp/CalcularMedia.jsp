<%-- 
    Document   : CalcularMedia
    Created on : 24 de mar. de 2026, 14:05:45
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Média Ponderada</title>
    </head>
    <body>
        <h1>Informe as notas e o peso:</h1>
        <form action="CalcularMedia.jsp" method="POST">
            Nota 1: <input type="text" name="nota1" value="" />
            Peso 1: <input type="text" name="peso1" value="" /><br><br>
            Nota 2: <input type="text" name="nota2" value="" />
            Peso 2: <input type="text" name="peso2" value="" /><br><br>
            <input type="submit" value="Calcular Média" />
        </form>
        
        <%
            String n1 = request.getParameter("nota1");
            String p1 = request.getParameter("peso1");
            String n2 = request.getParameter("nota2");
            String p2 = request.getParameter("peso2");
            
            if(n1 != null && p1 != null && n2 != null && p2 != null){
                try {
                    double nota1 = Double.parseDouble(n1);
                    double peso1 = Double.parseDouble(p1);
                    double nota2 = Double.parseDouble(n2);
                    double peso2 = Double.parseDouble(p2);
                    
                    double media = ((nota1 * peso1) + (nota2 * peso2)) / (peso1 + peso2);
                    
                    out.println("<h2>Resultado:</h2>");
                    out.println("<h3>Notas e Pesos informados:</h3>");
                    out.println("<p>Nota 1: " + nota1 + " / " + "Peso 1: " + peso1 + "</p>");
                    out.println("<p>Nota 2: " + nota2 + " / " + "Peso 2: " + peso2 + "</p>");
                    out.println("<p>Média = " + String.format("%.2f", media) + "</p>");
                    
                    } catch (Exception e) {
                    out.println("<p>Informe notas e pesos válidos!</p>");
                    }
            }
        %>
        
    </body>
</html>
