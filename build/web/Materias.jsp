<%-- 
    Document   : Materias
    Created on : 30/01/2018, 03:18:09 PM
    Author     : rosac
--%>

<%@page import="EscuelaJavaEE.modelo.Materia1"%>
<%@page import="EscuelaJavaEE.modelo.Consultasdb"%>
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
        <h1>Materias!</h1>
        <hr>
        
        <form action="Agregarmateria" method="post">
            <label>Nombre de la materia:</label><input type="texto" name="materia1" id="materia1">
            <label>Siglas de la materia:</label><input type="texto" name="siglas1" id="siglas1">
            <label>grado:</label><input type="texto" name="grado1" id="grado1" value="0">
            <p><input type="submit" name="agregarmateria" id="agregarmateria" value="Agregar materia"></p>
            <B><a href="Menu.jsp">Salir</a></B>      
            <B><a href="ModificardatosMateria.jsp"> Modificar datos de las materias </a></B>
      
            <table border="2" align="center" cellspacing="8">
            <th align="center" valign="middle">Base de datos Materias</th>
            <tr>
            <td><br>Id de la materia</br></td>
            <td><br>nombre de la materia</br></td>
            <td><br>Siglas de la materia</br></td>
            <td><br>grado de la materia</br></td>
            
            </tr>
            <%
             LinkedList<Materia1> listamateria = Consultasdb.getMaterias();  
             for(int i = 0; i < listamateria.size(); ++i){
                out.println("<tr>");
                out.println("<td>"+listamateria.get(i).getId()+"</td>");
                out.println("<td>" + listamateria.get(i).getNombre()+"</td>");
                out.println("<td>" + listamateria.get(i).getSiglas()+"</td>");
                out.println("<td>" + listamateria.get(i).getGrado()+"</td>");
                out.println("</tr>");
                
             }//for
             
            %>
            </table>
            
        </form>
        
        
        
    </body>
</html>
