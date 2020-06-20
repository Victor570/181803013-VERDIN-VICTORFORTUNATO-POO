<%-- 
    Document   : formularioUsuario
    Created on : 12/06/2020, 08:48:33 AM
    Author     : VICTOR
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String titulo="Agregar usuario";
    int id=0;
    if(request.getParameter("id")!=null){
     id=Integer.parseInt(request.getParameter("id"));
     titulo="editar usuario";
     Connection conexion=null;
     PreparedStatement stmt=null;
     ResultSet rs=null;
     try{
          Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt=conexion.prepareStatement("SELECT * from usuario WHERE id_usuario=?");
        stmt.setInt(1,id);
        rs=stmt.executeQuery();
        
        
     }catch(Exception e){
         System.out.println(e.getMessage());
     }
     
     
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Insercion de Usuario</title>
    </head>
    <body>
        <h1><%=titulo%></h1>
        <div class="container">
            <h1>Agregar un nuevo usuario</h1>
            <form action="agregarUsuario.jsp" methode="POST" class="form" >
                <div class="form-row">
                    <div class="col">
                        <input  type="text" class="form-control" placeholder="Nombre" name="usuario" requiered/>
                    </div>
                    <div class="col">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password"  requiered />
                    </div>
                    <div class="col">
                        <input type="submit" class="btn btn-success btn-block" value="Enviar" />
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>

