<%-- 
    Document   : Mostrargrupo
    Created on : 6/02/2018, 04:14:42 PM
    Author     : rosac
--%>

<%@page import="EscuelaJavaEE.modelo.Grupo1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <h1>Consulta!</h1>
        <% Grupo1 grupo =(Grupo1)request.getAttribute("grupo"); %>
        <hr/>
        <form action="Actualizargrupo" method="post">
        </p>
        <label>id:</label><input type="texto" name="grupoid1" id="grupoid1" value="<%= grupo.getId()%>" readonly="readonly">
        <label>Grupo:</label><input type="texto" name="gruponombre1" id="gruponombre1" value="<%= grupo.getGrupo()%>" >
        <hr>
        <p><input type="submit" name="modificargrupo" id="modificargrupo" value="Modificar grupo"></p>
        </form>
        <hr/>
        <p><a href="ModificardatosGrupo.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr/>
    </body>
</html>
