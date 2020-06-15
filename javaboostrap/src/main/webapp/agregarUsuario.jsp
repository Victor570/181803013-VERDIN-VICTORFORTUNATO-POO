<%-- 
    Document   : agregarUsuario
    Created on : 12/06/2020, 09:18:38 AM
    Author     : VICTOR
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO usuario SET usuario=?, password=MD5(?)");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(2, request.getParameter("password"));
        if (stmt.executeUpdate() == 1) {
%>
<div>
    <h3 style="text-align:center">
        <font COLOR="teal">Se agrego EL RESGISTRO</font>
    </h3>
</div>
<% 
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <form action="index.jsp" methode="POST" class="form" >
            <div class="form-row">
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Regresar al inicio" />
                </div>
            </div>
        </form>
    </body>
</html>
<%
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
