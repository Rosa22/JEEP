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
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <header>Modificar datos</header>
        <nav><label>Grupo</label></nav>
        <section>
            <article>
                     <form action="Eliminargrupo" method="post">
                     <p> <label>Borrar grupo</label></p>
                     <label>Id del grupo:</label><input type="text" name="idgrupo31" id="idgrupo31" value="#" autocomplete="off">
                     <input type="submit" name="eliminargrupo" id="eliminargrupo" value="Eliminar grupo">
                     </form>
            </article>
        </section>


        <section>
            <article>
                    <form action="Consultargrupo" method="post">
                    <p><label>Buscar y modificar grupos</label></p>
                    <label>Id del grupo a buscar:</label><input type="text" name="idegrupo3" id="idegrupo3" value="#" autocomplete="off">
                    <input type="submit" name="consultargrupo" id="consultargrupo" value="Buscar grupo">
                    </form>
            </article>
            
        </section>

    
        <footer>
        <p><a href="Grupos.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
        
        
        
        
    </body>
</html>
