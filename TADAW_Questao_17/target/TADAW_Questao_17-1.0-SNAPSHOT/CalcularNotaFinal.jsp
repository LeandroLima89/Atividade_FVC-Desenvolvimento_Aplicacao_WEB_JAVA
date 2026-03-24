<%-- 
    Document   : CalcularNotaFinal
    Created on : 24 de mar. de 2026, 13:42:29
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Nota Final</title>
    </head>
    <body>
        <h1>Insira as duas notas do aluno:</h1>
        <form action="CalcularNotaFinal.jsp" method="POST">
            Nota 1: <input type="text" name="nota1" value="" /><br><br>
            Nota 2: <input type="text" name="nota2" value="" /><br><br>
            <input type="submit" value="Calcular Nota Final" /><br>
        </form>
        
        <%
            String n1 = request.getParameter("nota1");
            String n2 = request.getParameter("nota2");
            
            if (n1 != null && n2 != null) {
                try{    
                    double nota1 = Double.parseDouble(n1);
                    double nota2 = Double.parseDouble(n2);
                    
                    double notaFinal = ((nota1 * 2) + (nota2 * 3)) / (2 + 3);
                    
                    out.println("<h2>Resultado:</h2>");
                    out.println("<h3>Notas Digitadas:</h3>");
                    out.println("<p>Nota 1: " + nota1 + "</p>");
                    out.println("<p>Nota 2: " + nota2 + "</p>");
                    out.println("<p>Nota final do aluno = " + String.format("%.2f", notaFinal) + "</p>");
                }catch (NumberFormatException e){
                    out.println("<p>Insira notas válidas!</p>");
                }
            }
        %>
        
    </body>
</html>
