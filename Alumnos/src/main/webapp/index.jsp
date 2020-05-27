<%
    String estado = request.getParameter("enviar");
    String reprobados = request.getParameter("reprobados");
    String aprobados = request.getParameter("aprobados");

    String errorForm = "";
    int nr = 0, na = 0, alumnos = 0;
    float pnr = 0, pna = 0;
    boolean mostrarResultados = false;

    if (estado != null && reprobados != null && aprobados != null) {

        if (!reprobados.isEmpty() && !aprobados.isEmpty()) {

            nr = Integer.parseInt(reprobados);
            na = Integer.parseInt(aprobados);

            if (!(nr < 0 || na < 0) && !(nr == na && na == 0)) {

                alumnos = nr + na;

                pnr = (float) nr * 100 / alumnos;
                pna = (float) na * 100 / alumnos;
                
                mostrarResultados = true;

            } else {
                errorForm = "Ingresa correcta mente los datos";
            }

        } else {
            errorForm = "Ingresa los datos";
        }

    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de alumnos</title>
    </head>
    <body  bgcolor="FFCECB">
            <p align="center">Un maestro quiere saber cuál es el porcentaje de alumnos reprobados.
                Elabore un programa que pregunte la cantidad de alumnos aprobados y la cantidad de 
                alumnos reprobados e imprime el porcentaje de aprobados y reprobados.</p>
            <p>
            <div style="text-align:center;"><b>Generador</b><br></div>
             <div style="text-align:center;"><b> Ingresa los datos del grupo respectivamente</b></div
            </p>
            <form>
                <div style="text-align:center;"><label for="reprobados">Reprobados: </label></div>
                <div style="text-align:center;"><input type="number" name="reprobados" id="reprobados"/></div>

                <div style="text-align:center;"><label for="aprobados">Aprobados: </label></div>
                <div style="text-align:center;"><input type="number" name="aprobados" id="aprobados"/></div>

                <div style="text-align:center;"> <input type="submit" name="enviar"/> </div>
            </form>

            <%if (mostrarResultados) { %>
            <table>
                <tr>
                    <th colspan="3">CALCULO DE LOS DATOS</th> 
                </tr>
                <tr>
                    <th>Descripción</th> 
                    <th>Total</th>
                    <th>Porcentaje</th>
                </tr>
                <tr>
                    <th>Alumnos totales</th> 
                    <td><%out.println(alumnos);%></td>
                    <td>100%</td>
                </tr>
                <tr>
                    <th>Alumnos reprobados</th> 
                    <td><%out.println(nr);%></td>
                    <td><%out.println(pnr);%>%</td>
                </tr>
                <tr>
                    <th>Alumnos aprobados</th> 
                    <td><%out.println(na);%></td>
                    <td><%out.println(pna);%>%</td>
                </tr>
            </table>    
            
            <% } else { %>
            
            <p class="error_form"><%out.println(errorForm);%></p>
            
            <% } %>
    </body>
</html>
