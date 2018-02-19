<%-- 
    Document   : Mostraraula
    Created on : 5/02/2018, 07:58:46 PM
    Author     : rosac
--%>

<%@page import="EscuelaJavaEE.modelo.Aula1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Consulta!</h1>
        <% Aula1 aula =(Aula1)request.getAttribute("aula"); %>
        <hr />
        <form action="Actualizaraula" method="post">
        </p>
        <label>id:</label><input type="text" name="aulaid1" id="aulaid1" value="<%= aula.Getid()%>" readonly="readonly" >
        <label>Nombre del aula:</label><input type="text" name="aulanombre1" id="aulanombre1" value="<%= aula.Getnombreaula()%>" >
        <label>Nombre del edificio:</label><input type="text" name="aulaedificio1" id="aulaedificio1" value="<%= aula.Getnombredificio() %>">
        <p><input type="submit" name="modificaraula" id="modificaraula" value="Modificar aula"></p>
        </form>
         <hr />
         <p><a href="ModificardatosAula.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr />
       
        
 
    </body>
</html>
