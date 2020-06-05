<%-- 
    Author     : VICTOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular que estacion del año es</title>
    </head>
    <body bgcolor="FFCECB">
        <h1 align="center">Tercer Ejercicio</h1><br>
        <p align="center">Se pide un número del 1 - 12 que muestre qué estación del año le pertenece
            (Primavera, Verano, Otoño e Invierno)</p>


        <%
            if ((request.getParameter("mes")) != null) {%>
        <h2 align="center" >La estación del año de acuerdo a tu numero es: <br></h2>

        <%int mes = Integer.parseInt(request.getParameter("mes"));
                    switch (mes) {

                        case 3:
                        case 4:
                        case 5:
                            out.println("La estación es Primavera");
                            break;

                        case 6:
                        case 7:
                        case 8:
                            out.println("La estación es Verano");
                            break;

                        case 9:
                        case 10:
                        case 11:
                            out.println("La estación es Otoño");
                            break;

                        case 12:
                        case 1:
                        case 2:
                            out.println("La estación es Invierno");
                            break;

                        default:
                            out.println("Tus datos son erroneos");
                    }
                

        %><br>
        <%        }else {%>
        <form >
            <p align="center">Ingresa el numero del mes que deseas saber la
                estación en la que se encuentra<br></p>
            <div style="text-align:center;"><input type="number" name="mes"/></div>
            <div style="text-align:center;"><input type="submit" value="Estoy en la estacion..."/></div>
        </form>

        <%}


        %>
    </body>
