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
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>Modificar datos</header>
        <nav><label>Materia</label></nav>
        <section>
            <article>
                    <form action="Eliminarmateria" method="post">
                    <p><label>Borrar materia</label></p>
                    <label>Id de la materia:</label><input type="text" name="ide2" id="ide2" value="#" autocomplete="off">
                    <input type="submit" name="eliminarmateria" id="eliminarmateria" value="Eliminar materia">
                    </form>  
            </article>
        </section>


        <section>
            <article>
                 <form action="Consultarmateria" method="post">
                 <p><label>Buscar y modificar materias</label></p>
                 <label>Id de la materia a buscar:</label><input type="text" name="idmat3" id="idmat3" value="#" autocomplete="off">
                 <input type="submit" name="consultarmateria" id="consultarmateria" value="Buscar materia"></form>
            </article>
        </section>
        
        <footer>
        <p><a href="Materias.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
       
        
    </body>
</html>
