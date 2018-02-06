<%-- 
    Document   : Aulas
    Created on : 5/02/2018, 06:20:59 PM
    Author     : rosac
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="EscuelaJavaEE.modelo.Aula1"%>
<%@page import="EscuelaJavaEE.modelo.Consultasdb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Aulas!</h1>
        
        <form action="Agregaraula" method="post">
            <label>Nombre del aula:</label><input type="texto" name="aula1" id="aula1">
            <label>Nombre del edificio:</label><input type="texto" name="edificio1" id="edificio1">
            <p><input type="submit" name="agregaraula" id="agregaraula" value="Agregar aula"></p>
            <B><a href="Menu.jsp">Salir</a></B>      
            <B><a href="ModificardatosAula.jsp"> Modificar datos de las aulas </a></B>
      
            <table border="2" align="center" cellspacing="8">
            <th align="center" valign="middle">Base de datos Aulas</th>
            <tr>
            <td><br>Id del aula</br></td>
            <td><br>nombre del aula</br></td>
            <td><br>Nombre del edificio</br></td>
            <%
                LinkedList<Aula1> listaula = Consultasdb.getAulas();
                for(int i = 0; i < listaula.size(); ++i){
                out.println("<tr>");
                out.println("<td>"+listaula.get(i).Getid()+"</td>");
                out.println("<td>" + listaula.get(i).Getnombreaula()+"</td>");
                out.println("<td>" + listaula.get(i).Getnombredificio()+"</td>");
                out.println("</tr>");  
                }
                
            %>
            </tr>
            
            </table>
            
        </form>
        
        
        
    </body>
</html>
