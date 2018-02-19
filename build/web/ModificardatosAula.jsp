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
         <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>Modificar datos</header>
        <nav><label>Aula</label></nav>
        
        <section>
            <article>
                 <form action="Eliminaraula" method="post">
                     <p><label>Borrar aula</label></p>
                <label>Id del aula:</label><input type="texto" name="idaula31" id="idaula31" value="#">
                <input type="submit" name="eliminaraula" id="eliminaraula" value="Eliminar aula">
                </form>
            </article>
        </section>
        

        <section>
            <article>
                 <form action="Consultaraula" method="post">
                     <p><label>Buscar y modificar aulas</label></p>
                 <label>Id del aula a buscar:</label><input type="text" name="ideaula3" id="ideaula3" value="#" >
                 <input type="submit" name="consultaraula" id="consultaraula" value="Buscar aula">
                 </form>
            </article>
            
        </section>
            

    
        <footer>
        <p><a href="Aulas.jsp"><input type="submit" name="salir" id="salir" value="Regresar" ></a></p>
        </footer>
            
        
        
    </body>
</html>
