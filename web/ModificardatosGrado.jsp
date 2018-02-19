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
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <header>Modificar datos</header>
        <nav><label>Grados</label></nav>
        
        <section>
            <article>
                        <form action="Eliminargrado" method="post">
                        <p> <label>Borrar grado</label></p>
                        <label>Id del grado:</label><input type="text" name="idgrado31" id="idgrado31" value="#" autocomplete="off">
                        <input type="submit" name="eliminargrado" id="eliminargrado" value="Eliminar grado">
                        </form>
            </article>
        </section>

        <section>
            <article>
                        <form action="Consultargrado" method="post">
                        <p><label>Buscar y modificar grados</label></p>
                        <label>Id del grado a buscar:</label><input type="text" name="idegrado3" id="idegrado3" value="#" autocomplete="off">
                        <input type="submit" name="consultargrado" id="consultargrado" value="Buscar grado">
                        </form>
            </article>
        </section>
       

    
        <footer>
        <p><a href="Grados.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
        

    </body>
</html>
