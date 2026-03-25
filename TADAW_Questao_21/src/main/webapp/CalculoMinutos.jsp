<%-- 
    Document   : CalculoMinutos
    Created on : 25 de mar. de 2026, 14:41:43
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculando Minutos</title>
    </head>
    <body>
        <h1>Informe as horas e os minutos:</h1>
        <form action="CalculoMinutos.jsp" method="POST">
            Hora(s): <input type="text" name="horas" value="" /><br><br>
            Minuto(s): <input type="text" name="minutos" value="" /><br><br>
            <input type="submit" value="Calcular" />
        </form>
        
        <%
            String h = request.getParameter("horas");
            String min = request.getParameter("minutos");
            
            if (h != null && min != null) {
                    try {
                        int horas = Integer.parseInt(h);
                        int minutos = Integer.parseInt(min);
                        
                        int minPassados = (horas * 60) + minutos;
                        
                        out.println("<h2>Resultado:</h2>");
                        out.println("<p>Hora digitada: " + horas +":"+ minutos +"h</p>");
                        out.println("<p>Se passaram " + minPassados + " minutos desde o início do dia.</p>");
                        
                        } catch (Exception e) {
                            out.println("<p>Informe horas e minutos válidos!</p>");
                        }
                }
        %>
    </body>
</html>
