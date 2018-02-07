<%-- 
    Document   : ModificardatosGrado
    Created on : 6/02/2018, 02:00:55 PM
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
        
        <h1>Operaciones con la base grados!</h1>
        <form action="Eliminargrado" method="post">
        <h4>Borrar grado</h4>
        <label>Id del grado:</label><input type="texto" name="idgrado31" id="idgrado31" value="#">
        <input type="submit" name="eliminargrado" id="eliminargrado" value="Eliminar grado">
        </form>

        <hr>
        <form action="Consultargrado" method="post">
        <h4>Buscar y modificar grados</h4>
        <label>Id del grado a buscar:</label><input type="texto" name="idegrado3" id="idegrado3" value="#" >
        <input type="submit" name="consultargrado" id="consultargrado" value="Buscar grado">
        </form>
    
        <hr />
        <p><a href="Grados.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
        
        
        
        
        
    </body>
</html>
