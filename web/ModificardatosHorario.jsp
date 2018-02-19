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
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <header>Modificar datos</header>
        <nav><label>Horarios</label></nav>
        
        <section>
            <article>
                <form action="Eliminarhorario" method="post">
                <p><label>Borrar horario</label></p>
                <label>Id a borrar:</label><input type="text" name="idh" id="idh" value="#" autocomplete="off">
                <input type="submit" name="eliminarhorario" id="eliminarhorario" value="Eliminar horario">
        </form> 
            </article>
            
        </section>
        
        <section>
            <article>
                <form action="Consultarhorario" method="post">
                <p><label>Buscar y modificar</label></p>
                <label>Id a buscar:</label><input type="text" name="idh2" id="idh2" value="#" autocomplete="off">
                 <input type="submit" name="consultarhorario" id="consultarhorario" value="Buscar horario">
        </form>
            </article>
        </section>
            
            
        <footer>
        <p><a href="Horarios.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
        
        
        
        
    </body>
</html>
