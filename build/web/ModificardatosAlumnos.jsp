<%-- 
    Document   : ModificardatosAlumnos
    Created on : 29/01/2018, 10:18:33 PM
    Author     : rosac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Operaciones con la base alumnos</h1>
        <form action="Eliminaralumno" method="post">
        <h4>Borrar alumno</h4>
        <label>Numero de control:</label><input type="texto" name="numeroc" id="numeroc" value="#">
        <input type="submit" name="eliminaralumno" id="eliminaralumno" value="Eliminar alumno">
        </form>

        <hr>
        <form action="Consultaralumno" method="post">
        <h4>Buscar y modificar alumnos</h4>
        <label>Numero de control:</label><input type="text" name="numeroc1" id="numeroc1" value="#" >
        <input type="submit" name="consultaralumno" id="consultaralumno" value="Buscar alumno"></form>
    
        
        
        
        <hr />
        <p><a href="Alumnos.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
       
        
    </body>
</html>
