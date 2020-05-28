<%-- 
    Document   : index
    Created on : 27/05/2020, 08:12:04 AM
    Author     : VICTOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <div style="text-align:center;"><title>Solicitar numero</title></div>
    </head>
    <body bgcolor="FFCECB">
        <div style="text-align:center;"><h1>Ingrese el numero</h1></div>
        <form action="solicita.jsp">
            <input type="number" name="numero" required/>
            <input type="submit" value="enviar"/>
        </form>
        
        
    </body>
</html>
