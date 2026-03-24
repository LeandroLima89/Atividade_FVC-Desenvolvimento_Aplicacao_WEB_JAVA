<%-- 
    Document   : CalcularMedia
    Created on : 24 de mar. de 2026, 13:16:30
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular Média</title>
    </head>
    <body>
        <h1>Insira as três notas:</h1>
        <form action="CalcularMedia.jsp" method="POST">
            Primeira Nota: <input type="text" name="nota1" value="" /><br><br>
            Segunda Nota: <input type="text" name="nota2" value="" /><br><br>
            Terceira Nota: <input type="text" name="nota3" value="" /><br><br>
            <input type="submit" value="Calcular Media" /><br>
        </form>
        
        <%
            String n1 = request.getParameter("nota1");
            String n2 = request.getParameter("nota2");
            String n3 = request.getParameter("nota3");
            
            if (n1 != null && n2 != null && n3 != null){
                try {
                        double nota1 = Double.parseDouble(n1);
                        double nota2 = Double.parseDouble(n2);
                        double nota3 = Double.parseDouble(n3);
                        
                        double media = (nota1 + nota2 + nota3) / 3;
                        
                        out.println("<h2>Resultado:</h2>");
                        out.println("<h3>Notas informadas:</h3>");
                        out.println("<p>Nota 1: " + nota1 + "</p>");
                        out.println("<p>Nota 2: " + nota2 + "</p>");
                        out.println("<p>Nota 3: " + nota3 + "</p>");
                        out.println("<p>Média = " + String.format("%.2f", media) + "</p>");
                        } catch (Exception e) {
                        out.println("<p>Insira notas válidas!</p>");
                    }
            }
        %>
    </body>
</html>
