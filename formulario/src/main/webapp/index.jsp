
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MI PRIMER FORMULARIO</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        
        <p>Este es mi primer formulario en donde conocer la diferencia
            entre post<b> y get</b></p>
        
        <form method="POST"> 
            <input type="text" name="mi nombre" />
            <input type="password" name="contra"/>
            <input type="date" name="fecha nacimiento"/>
               <input type="submit" value="enviar"/>
        </form>
        
        <h1>Los datos ingresados son:</h1>
        <% out.println(request.getParameter("mi nombre")); %><br>
        <% out.println(request.getParameter("contra")); %><br>
        <% out.println(request.getParameter("fecha nacimiento")); %><br>
        
    </body>
</html>
