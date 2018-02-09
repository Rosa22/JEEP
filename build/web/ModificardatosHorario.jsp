<%-- 
    Document   : ModificardatosHorario
    Created on : 8/02/2018, 06:56:54 PM
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
        
        <h1>Operaciones con la base horarios!</h1>
        <form action="Eliminarhorario" method="post">
        <h4>Borrar horario</h4>
        <label>Id a borrar:</label><input type="texto" name="idh" id="idh" value="#">
        <input type="submit" name="eliminarhorario" id="eliminarhorario" value="Eliminar horario">
        </form>

        <hr>
        <form action="Consultarhorario" method="post">
        <h4>Buscar y modificar horarios</h4>
        <label>Id a buscar:</label><input type="texto" name="idh2" id="idh2" value="#" >
        <input type="submit" name="consultarhorario" id="consultarhorario" value="Buscar horario">
        </form>
    
        <hr />
        <p><a href="Horarios.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
        
        
        
        
    </body>
</html>
