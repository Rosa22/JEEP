<%-- 
    Document   : Grupos
    Created on : 6/02/2018, 01:57:23 PM
    Author     : rosac
--%>
<%@page import="EscuelaJavaEE.modelo.Consultasdb"%>
<%@page import="EscuelaJavaEE.modelo.Grupo1"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
<<<<<<< HEAD
        <header>Grupos!</header>>
=======
        <header>Grupos!</header>
>>>>>>> test
        <form action="Agregargrupo" method="post">
            <label>Grupo:</label><input type="texto" name="grupos1" id="grupos1">
            <p><input type="submit" name="agregargrupo" id="agregargraup" value="Agregar grupo"></p>
                 
            <B><a href="ModificardatosGrupo.jsp"> Modificar datos de los grupos </a></B>
      
            <table border="2" align="center" cellspacing="8">
             <caption> Registros</caption>
            <tr>
            <td><br>Id del grupo</br></td>
            <td><br>Grupo</br></td>
          
            <%
                LinkedList<Grupo1> listgrupos = Consultasdb.getGrupos();
                for(int i = 0; i < listgrupos.size(); ++i){
                out.println("<tr>");
                out.println("<td>"+listgrupos.get(i).getId()+"</td>");
                out.println("<td>" + listgrupos.get(i).getGrupo()+"</td>");
                out.println("</tr>");  
                }
                
                
            %>
            </tr>
            
            </table>
            
        </form>
        
        
<<<<<<< HEAD
            <footer><B><a href="Menu.jsp">Salir</a></B> </footer>
=======
        <footer>
            <ul>
                <li><a href="Menu.jsp">Salir</a></li>
            </ul>
        </footer>
>>>>>>> test
        
        
    </body>
</html>
