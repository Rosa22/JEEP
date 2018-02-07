<%-- 
    Document   : ModificardatosGrupo
    Created on : 6/02/2018, 02:04:50 PM
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
        
        <h1>Operaciones con la base grupos!</h1>
        <form action="Eliminargrupo" method="post">
        <h4>Borrar grupo</h4>
        <label>Id del grupo:</label><input type="texto" name="idgrupo31" id="idgrupo31" value="#">
        <input type="submit" name="eliminargrupo" id="eliminargrupo" value="Eliminar grupo">
        </form>

        <hr>
        <form action="Consultargrupo" method="post">
        <h4>Buscar y modificar grupos</h4>
        <label>Id del grupo a buscar:</label><input type="texto" name="idegrupo3" id="idegrupo3" value="#" >
        <input type="submit" name="consultargrupo" id="consultargrupo" value="Buscar grupo">
        </form>
    
        <hr />
        <p><a href="Grupos.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
        
        
        
        
    </body>
</html>
