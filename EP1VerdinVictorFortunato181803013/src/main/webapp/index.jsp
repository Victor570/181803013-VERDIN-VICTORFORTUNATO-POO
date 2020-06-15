<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : index
    Created on : 5/06/2020, 02:17:08 AM
    Author     : VICTOR
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctores</title>
        <style>
            table, tr, th, td{
                border: solid 1px black;
            }
            td, th{
                text-align: center;
            }
        </style>
    </head>
    <body  bgcolor="33FFFC">
    <center>
        <h1>Hospital!</h1>
        <hr>
        <br>
        <%
            Connection conexion = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {

                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root", "");
                stmt = conexion.createStatement();
                rs = stmt.executeQuery("Select * from especialidad");

                out.print("<table>");
                out.print("Especialidades de los doctores en el hospital");
                out.print("<tr>");
                out.print("<td>Nombre</td>");
                out.print("<td>Descripcion</td>");
                out.print("</tr>");
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString(2) + "</td>");
                    out.print("<td>" + rs.getString(3) + "</td>");
                    out.print("</tr>");
                }
                out.print("</table><br><br>");
                
                rs = stmt.executeQuery("SELECT especialidad.nombre, doctor.nombre, apaterno, amaterno, correo FROM especialidad JOIN doctor ON especialidad.IdEspecialidad=doctor.IdEspecialidad");

                out.print("<table>");
                out.print("Tabla de doctores con su especialidad");
                out.print("<tr>");
                out.print("<th>Especialidad</th>");
                out.print("<th>Nombre</th>");
                out.print("<th>Apellido paterno</th>");
                out.print("<th>Apellido materno</th>");
                out.print("<th>Correo</th>");
                out.print("</tr>");
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString(1) + "</td>");
                    out.print("<td>" + rs.getString(2) + "</td>");
                    out.print("<td>" + rs.getString(3) + "</td>");
                    out.print("<td>" + rs.getString(4) + "</td>");
                    out.print("<td>" + rs.getString(5) + "</td>");
                    out.print("</tr>");
                }
                out.print("</table><br><br><br>");
                
            } catch (Exception e) {
                out.println("SQL ERROR: " + e);
                out.println("");
            }
        %>

    </center>
</body>
</html>
