<%@ page language='java' contentType="text/html" %>

<%@page import="com.laura.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de vehiculos</title>

    <style>
        table, th, td {
            border: 1px solid;
            text-align: center;
        }
        a {
            color: black;
            text-decoration: none;
        }
    </style>

</head>
<body>
    <h2>Vehiculos</h2>
    <table>
        <tr>
            <th>Matricula</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Color</th>
            <th>Revisado</th>
        </tr>
            <%

                List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

                for(Vehiculo vehiculo: vehiculos) {
                    out.print("<tr>");
                        out.print("<td>" + vehiculo.getMatricula() + "</td>");
                        out.print("<td>" + vehiculo.getMarca() + "</td>");
                        out.print("<td>" + vehiculo.getModelo() + "</td>");
                        out.print("<td>" + vehiculo.getColor() + "</td>");
                        out.print("<td>" + vehiculo.getRevisado() + "</td>");
                        out.print("<td><a href=\"revisarvehiculo.jsp?matricula=" + vehiculo.getMatricula() + "\">revisar</a></td>");
                        out.print("<td><a href=\"vehiculo.jsp?matricula=" + vehiculo.getMatricula() + "\">editar</a></td>");
                        out.print("<td><a href=\"bajavehiculo.jsp?matricula=" + vehiculo.getMatricula() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>

    <br/>

    <button><a href="nuevovehiculo.jsp">Nuevo vehiculo</a></button>
    <button><a href="eliminartodos.jsp">Eliminar todos</a></button>
</body>
</html>