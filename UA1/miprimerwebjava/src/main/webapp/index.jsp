<%-- 
    Document   : index
    Created on : 20/05/2020, 08:55:31 AM
    Author     : VICTOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USANDO JAVA</title>
    </head>
    <body>
        <h1>numeracion</h1><br>
        <%
            for(int i=0;i<10;i++)
            {
                System.out.println(i);
                out.print(i);
            }
        %>   
    </body>
</html>
