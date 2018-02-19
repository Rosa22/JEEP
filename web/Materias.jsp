<%-- 
    Document   : Materias
    Created on : 30/01/2018, 03:18:09 PM
    Author     : rosac
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="EscuelaJavaEE.modelo.Conexiondb"%>
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
        <header>
            Materias!
        </header>
        <nav>
        <form action="Agregarmateria" method="post">
            <label>Nombre de la materia:</label><input type="text" name="materia1" id="materia1" autocomplete="off" autofocus="" pattern="[a-z]" title="solo letras">
            <label>Siglas de la materia:</label><input type="text" name="siglas1" id="siglas1" autocomplete="off">
            <select name="combogrado">
                <option selected>Grado</option>
                <%
                Statement st0 = Conexiondb.conexiones.createStatement();
                ResultSet rs0 = st0.executeQuery("select grado from grado");
                Vector vec0 = new Vector();
                while(rs0.next()){
                    vec0.add(rs0.getInt("grado"));
                }
                for(int i=0;i<vec0.size();i++){%> 
                <option value="<%=vec0.get(i).toString()%>"><%=vec0.get(i).toString()%></option> 
                <%}%>
                
                %>   
                
            </select>

            
            <p><input type="submit" name="agregarmateria" id="agregarmateria" value="Agregar materia"></p>    
            <B><a href="ModificardatosMateria.jsp"> Modificar datos</a></B>
         </form>
        </nav>
        
        <article>
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
            
        </article>
        
        <footer>
            <ul>
                <li><a href="Menu.jsp">Salir</a></li>
            </ul>
        </footer>
    </body>
</html>
