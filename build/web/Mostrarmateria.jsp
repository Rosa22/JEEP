<%-- 
    Document   : Mostrarmateria
    Created on : 31/01/2018, 09:46:24 PM
    Author     : rosac
--%>
<%@page import="EscuelaJavaEE.modelo.Materia1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta!</h1>
        <% Materia1 materia =(Materia1)request.getAttribute("materia"); %>
        <hr />
        <form action="Actualizarmateria" method="post">
        </p>
        <label>id:</label><input type="texto" name="materiaid1" id="materiaid1" value="<%= materia.getId()%>" readonly="readonly">
        <label>Nombre de la materia:</label><input type="texto" name="materianombre1" id="materianombre1" value="<%= materia.getNombre() %>" >
        <label>Siglas:</label><input type="texto" name="materiasiglas1" id="materiasiglas1" value="<%= materia.getSiglas() %>">
        <label>Grado:</label><input type="texto" name="materiagrado1" id="materiagrado1" value="<%= materia.getGrado() %>">
        <p><input type="submit" name="modificarmateria" id="modificarmateria" value="Modificar materia"></p>
        </form>
         <hr />
         <p><a href="ModificardatosMateria.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr />
       
        
        
        
        
        
    </body>
</html>
