<%-- 
    Document   : ModificardatosAula
    Created on : 5/02/2018, 07:33:51 PM
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
        <h1>Operaciones con la base aulas!</h1>
         <form action="Eliminaraula" method="post">
        <h4>Borrar aula</h4>
        <label>Id del aula:</label><input type="texto" name="idaula31" id="idaula31" value="#">
        <input type="submit" name="eliminaraula" id="eliminaraula" value="Eliminar aula">
        </form>

        <hr>
        <form action="Consultaraula" method="post">
        <h4>Buscar y modificar aulas</h4>
        <label>Id del aula a buscar:</label><input type="texto" name="ideaula3" id="ideaula3" value="#" >
        <input type="submit" name="consultaraula" id="consultaraula" value="Buscar aula">
        </form>
    
        <hr />
        <p><a href="Aulas.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        <hr />
            
        
        
    </body>
</html>
