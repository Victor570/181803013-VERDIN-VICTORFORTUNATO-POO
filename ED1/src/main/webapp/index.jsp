<%-- 
    Document   : index
    Created on : 7/06/2020, 08:42:25 PM
    Author     : VICTOR
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ED1</title>
    </head>
    <body bgcolor="00FAFA">
        <h1 align="center" style="color:red">Prueba de errores </h1>
    </body>
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion
                    = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.createStatement();
            rs = stmt.executeQuery("Select * from usuario");
    %><br><br><%
        while (rs.next()) {
            out.print(rs.getInt("id_usuario"));
            out.print(rs.getString("usuario"));
    %><br><br><%
        }
  
    } catch (SQLException e) {
        switch (e.getErrorCode()) {
            case 0:
                out.println("Error, columna no existente/ Error, host no valido");
                break;
            case 1146:
                out.println("Tabla no existente");
                break;
            case 1045:
                out.println("El usuario no coincide con la base de datos");
                break;
            case 1049:
                out.println("La base de datos no es la correcta");
                break;
            case 1064:
                out.println("Error de sintaxis, favor de verificar");
                break;
            default:
                out.println(e.getMessage() + e.getErrorCode());
                break;
        }
    } finally {
    %><h2 align="center" style="color:black">Esta es la prueba de ED1</h2><%
     }%>
</html>