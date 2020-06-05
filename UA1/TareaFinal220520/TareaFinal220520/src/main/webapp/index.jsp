<%
    String num = request.getParameter("numero");
    String estado = request.getParameter("enviar");

    String titularForm = "Ingresa un numero";
    String errorForm = "";
    boolean mostrarForm = true;

    int lim = 0;

    if (num != null && !estado.equals("Regresar")) {
        if (!num.isEmpty()) {

            lim = Integer.parseInt(num);

            if (lim >= 0) {

                titularForm = "Volver al generador";
                mostrarForm = false;

            } else {
                errorForm = "Ingresa un numero positivo";
            }

        } else {
            errorForm = "Ingresa un numero";
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Victor Fortunato Verdin Hernandez</title>
    </head>
    <body>
        <p>
            <b>Generador</b><br>
            <%out.println(titularForm);%>
        </p>

        <form method="GET">
            <input type="<%if (mostrarForm) {%>number<%} else {%>hidden<%}%>" name="numero">
            <input type="submit" name="enviar" value="<%if (mostrarForm) {%>Generar<%} else {%>Regresar<%}%>">
        </form>

        <p><%if (!mostrarForm) {int i = 0;while (i <= lim) {out.println(i);i++;}}%></p>
        <p><%out.println(errorForm);%></p>

    </body>
</html>

