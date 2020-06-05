
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPORTE FORMULARIO JAVA</title>
    </head>
    <body bgcolor="highlight">
        
        <script type="text/javascript" src="https://100widgets.com/js_data.php?id=106"></script>
        <center> <div class="n"><p>    <b><font color="#000000" face="georgia" size="4"><marquee width="400" scrollamount="5" bgcolor="#FFFFFF">Esta es la tarea del reporte de formulario en java</marquee></font></b></p><center>
        <P align="center" style="color:black; font-size:35px">Este es el formulario de tarea en donde el usuario ingresa
            un numero y muestra los numeros del 0 hasta el que escribio</p>
        <p style="color:red; font-size:35px" align="center">Introduce el numero que deseas obtener sus antecesores </p><br>
        
        <form method="GET"> 
            <p align="center"> <input type="text" name="numero" required pattern="[0-99999]{1,5}" /> <B>No acepta valores nulos</B </p>
            <p align="center"><input type="submit" value="enviar"/></p>
        </form>
        
        <h1 align="center">Los numeros antecesores son</h1><br>
        
        <%
            try 
            {
                int num = Integer.parseInt(request.getParameter("numero"));
                for (int i = 0; i<= num; i++)
                {
                     out.println("\n" + i); 
                }
            } 
            catch (NumberFormatException nfe)
            {
                out.println("");
            }
            
        %>    
        
    </body>
</html>
