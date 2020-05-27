<<%-- 
    Author     : VICTOR FORTUNATO VERDIN HERNANDEZ
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title  align="center">Identificar que triangulo es</title>
    </head>
    
    <body {text-align: center} bgcolor="FFCECB">
         
             
        <h1  align="center">Segundo Ejercicio</h1><br>
        <p  align="center">Programa que indique si un triángulo es equilátero, isósceles y escaleno.<br>
            Validar que los valores ingresados son de un triángulo</p>


        <%
            if ((request.getParameter("l1")) != null && (request.getParameter("l2")) 
            != null && (request.getParameter("l3")) != null) {%>

        <%int l1 = Integer.parseInt(request.getParameter("l1"));
            int l2 = Integer.parseInt(request.getParameter("l2"));
            int l3 = Integer.parseInt(request.getParameter("l3"));
            if (l1 == l2 && l1 == l3 && l2 == l3) {
                out.println("Triangulo Equilatero");
            } else {
                if ((l1 == l2 && l2 != l3 && l1 != l3) || (l1 == l3 && l2 != l3 && l2 != l1) || (l3 == l2 && l1 != l3 && l1 != l2)) {
                    out.println("Triangulo Isoseles");
                } else {
                    out.println("Triangulo Escaleno");
                }
            }

        %><br>
        <%        } else {%>
        <form >
            <p  align="center">Ingresa el primer lado<br></p>
            <div style="text-align:center;"><input type="number" name="l1"/></div>
            <p  align="center">Ingresa el segundo lado<br></p>
            <div style="text-align:center;"><input type="number" name="l2"/></div>
            <p  align="center">Ingresa el tercer lado<br></p>
            <div style="text-align:center;"><input type="number" name="l3"/></div>
            <div style="text-align:center;"><input type="submit"  value="Mi triangulo es"/ align="center"></div>
        </form>

        <%}


        %>
    </body>
