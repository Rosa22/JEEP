<%-- 
    Document   : Mostaralumno
    Created on : 28/01/2018, 10:25:50 PM
    Author     : rosac
--%>
<%@page import="EscuelaJavaEE.modelo.Alumno1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/hojaestilos.css"/>
    </head>
    <body>
        <h1>Consulta!</h1>
        <% Alumno1 alumno =(Alumno1)request.getAttribute("alumno"); %>
        <hr />
        <form action="Actualizaralumno" method="post">
        </p>
        <label>Numero de control</label><input type="texto" name="numeroc3" id="numeroc3" value="<%= alumno.getNumerocontrol() %>" readonly="readonly">
        <label>Alumno:</label><input type="texto" name="alumno" id="alumno" value="<%= alumno.getNombre() %>" >
        <label>Calle:</label><input type="texto" name="calle" id="calle" value="<%= alumno.getCalle() %>">
        <label>#:</label><input type="texto" name="numero" id="numero" value="<%= alumno.getNumero() %>">
        <label>Col:</label><input type="texto" name="colonia" id="colonia" value="<%= alumno.getColonia() %>">
        <p><label>CP:</label><input type="texto" name="cp" id="cp" value="<%= alumno.getCp()%>">
        <label>Correo:</label><input type="texto" name="correo" id="correo" value="<%= alumno.getEmail() %>">
        <label>Tel:</label><input type="texto" name="telefono" id="telefono" value="<%= alumno.getTelefono() %>">
        <label>Grado:</label><input type="texto" name="grado" id="grado" value="<%= alumno.getGrado() %>">
        <label>Grupo:</label><input type="texto" name="grupo" id="grupo" value="<%= alumno.getGrupo() %>">
        <p><input type="submit" name="modificaralumno" id="modificaralumno" value="Modificar alumno"></p>
        </form>
        <hr />
        <p><a href="Alumnos.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr />
        
    </body>
    
    
    
    
</html>
