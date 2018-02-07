<%-- 
    Document   : Grados
    Created on : 6/02/2018, 01:57:09 PM
    Author     : rosac
--%>
<%@page import="EscuelaJavaEE.modelo.Grado1"%>
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
        <h1>Grados!</h1>
        
        <form action="Agregargrado" method="post">
            <label>Grado:</label><input type="number" name="grados1" id="grados1">
            <p><input type="submit" name="agregargrado" id="agregargrado" value="Agregar grado"></p>
            <B><a href="Menu.jsp">Salir</a></B>      
            <B><a href="ModificardatosGrado.jsp"> Modificar datos de los grados </a></B>
      
            <table border="2" align="center" cellspacing="8">
            <th align="center" valign="middle">Base de datos Grados</th>
            <tr>
            <td><br>Id del grado</br></td>
            <td><br>Grado</br></td>
          
            <%
              LinkedList<Grado1> listgrados = Consultasdb.getGrados();
                for(int i = 0; i < listgrados.size(); ++i){
                out.println("<tr>");
                out.println("<td>"+listgrados.get(i).getid()+"</td>");
                out.println("<td>" + listgrados.get(i).getgrado()+"</td>");
                out.println("</tr>");  
                }
                
            %>
            </tr>
            
            </table>
            
        </form>
        
        
        
        
        
        
        
        
        
    </body>
</html>
