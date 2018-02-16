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

        <header>Grupos!</header>

        <nav>
        <form action="Agregargrupo" method="post">
            <ul>
                <li><label>Grupo:</label><input type="text" name="grupos1" id="grupos1"</li>
                <li><input type="submit" name="agregargrupo" id="agregargrupo" value="Agregar grupo"></li>
            </ul>
              
            <B><a href="ModificardatosGrupo.jsp"> Modificar datos </a></B>
        </form>

        </nav>
        
        <article>
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
            
        
        </article>

        <footer>
            <ul>
                <li><a href="Menu.jsp">Salir</a></li>
            </ul>
        </footer>

        
        
    </body>
</html>
