<%-- 
    Document   : ModificardatosMateria
    Created on : 30/01/2018, 09:06:05 PM
    Author     : rosac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Operaciones con la base materias!</h1>
         <form action="Eliminarmateria" method="post">
        <h4>Borrar materia</h4>
        <label>Id de la materia:</label><input type="texto" name="id2" id="id2" value="#">
        <input type="submit" name="eliminarmateria" id="eliminarmateria" value="Eliminar materia">
        </form>

        <hr>
        <form action="Consultarmateria" method="post">
        <h4>Buscar y modificar materias</h4>
        <label>Id de la materia a buscar:</label><input type="texto" name="id3" id="id3" value="#" >
        <input type="submit" name="consultarmateria" id="consultarmateria" value="Buscar materia"></form>
    
        
        
        
        <hr />
        <p><a href="Materias.jsp.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
       
        
    </body>
</html>
