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
        <header>Modificar datos</header>
        <nav><label>Alumnos</label></nav>
            
        <section>
            <article>
                        <form action="Eliminaralumno" method="post">
                        <p><label>Eliminar</label></p>
                        <label>Numero de control:</label><input type="text" name="numeroc" id="numeroc" value="#">
                        <input type="submit" name="eliminaralumno" id="eliminaralumno" value="Eliminar alumno">
                        </form>   
            </article>
            
        </section>

        <section>
            <article>
                     <form action="Consultaralumno" method="post">
                     <p><label>Buscar y modificar alumno</label></p>
                     <label>Numero de control:</label><input type="text" name="numeroc1" id="numeroc1" value="#" >
                     <input type="submit" name="consultaralumno" id="consultaralumno" value="Buscar alumno"></form>
            </article>
        </section>
        
        
        <footer>
        <p><a href="Alumnos.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
       
        
    </body>
</html>
