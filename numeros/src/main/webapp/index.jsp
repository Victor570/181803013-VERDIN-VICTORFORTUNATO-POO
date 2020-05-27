<%-- 
    Author     : VICTOR
--%>

<%
    String numero1 = request.getParameter("numero1");
    String numero2 = request.getParameter("numero2");
    String estado = request.getParameter("enviar");
    String valor = request.getParameter("opcion");

    String errorForm = "";
    int n1 = 0, n2 = 0, may = 0, men = 0, val = 0;
    boolean mostrarRes = false;

    if (estado != null) {
        if (!numero1.isEmpty() && !numero2.isEmpty()) {

            n1 = Integer.parseInt(numero1);
            n2 = Integer.parseInt(numero2);
            val = Integer.parseInt(valor);

            may = n1;
            men = n2;

            if (n2 > n1) {
                may = n2;
                men = n1;
            }

            mostrarRes = true;

        } else {
            errorForm = "Ingresa los dos numeros";
        }
    }

    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuarto ejercicio</title>
    </head>
    <body bgcolor="FFCECB">
            <p>
            <div style="text-align:center;"> <b>Ordenando números</b><br></div>
            <div style="text-align:center;"> <b> Ingresa los datos</b></div>
            </p>
            <form method="GET">
                <table>
                    <tr>
                        <td>Numero 1</td>
                        <td><input type="number" name="numero1"/></td>
                    </tr>
                    <tr>
                        <td>Numero 2</td>
                        <td><input type="number" name="numero2"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="opcion">
                                <option value="1">Ascendente</option>
                                <option value="2">Descendente</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="enviar"/></td>
                    </tr>
                </table>
            </form>

            <p class="error_form"><%out.println(errorForm);%></p>
            <p>
                <%if (mostrarRes) {
                    if (val == 1) {
                        out.println(men + " < " + may);
                    } else {
                        out.println(may + " > " + men);
                    }
                }%>
            </p>
    </body>
</html>
