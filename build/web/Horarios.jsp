<%-- 
    Document   : Horarios
    Created on : 8/02/2018, 04:26:45 PM
    Author     : rosac
--%>

<%@page import="EscuelaJavaEE.modelo.Materia1"%>
<%@page import="java.util.LinkedList"%>
<%@page import="EscuelaJavaEE.modelo.Consultasdb"%>
<%@page import="EscuelaJavaEE.modelo.Horario1"%>
<%@page import="EscuelaJavaEE.modelo.Aula1"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="EscuelaJavaEE.modelo.Conexiondb"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1>Horario!</h1>
        <hr>
        <form action="Agregarhorario" method="post">
            <hr>
            <select name="combomateria" id="combomateria">
                <option value="combomateria" selected>Materia</option>
                <%
                Statement st0 = Conexiondb.conexiones.createStatement();
                ResultSet rs0 = st0.executeQuery("select nombre from materia");
                Vector vec0 = new Vector();
                while(rs0.next()){
                    vec0.add(rs0.getString("nombre"));
                }
                for(int i=0;i<vec0.size();i++){%> 
                <option value="<%=vec0.get(i).toString()%>"><%=vec0.get(i).toString()%></option> 
                <%}%>
                %>    
            </select>
             
            <select name="dia1">
                <option value="Dia">Dia</option>
                <option value="Lunes">Lunes</option>
                <option value="Martes">Martes</option>
                <option value="Miercoles">Miercoles</option>
                <option value="Jueves">Jueves</option>
                <option value="Viernes">Viernes</option>
                <option value="Sabado">Sabado</option>
            </select>
            
            <label>Horario:</label><input type="texto" name="horario1" id="horario1">
             
            <select name="comboaula" id="comboaula">
                <option value="comboaula" selected>Aula</option>
                <%
                Statement st00 = Conexiondb.conexiones.createStatement();
                ResultSet rs00 = st00.executeQuery("select nombre from aula");
                Vector vec00 = new Vector();
                while(rs00.next()){
                    vec00.add(rs00.getString("nombre"));
                }
                for(int i=0;i<vec00.size();i++){%> 
                <option value="<%=vec00.get(i).toString()%>"><%=vec00.get(i).toString()%></option> 
                <%}%>
                %>    
            </select>


            <p><input type="submit" name="agregarhorario" id="agregarhorario" value="Agregar horario"></p>
            <B><a href="Menu.jsp">Salir</a></B>      
            <B><a href="ModificardatosHorario.jsp"> Modificar datos de los horarios </a></B>
      
            <table border="2" align="center" cellspacing="8">
            <th align="center" valign="middle">Base de datos Horarios</th>
            <tr>
            <td><br>ID</br></td>
            <td><br>Materia</br></td>
            <td><br>Dia</br></td>
            <td><br>Horario</br></td>
            <td><br>Aula</br></td>
            </tr>
            <%
             LinkedList<Horario1> listahorario = Consultasdb.getHorarios();  
             for(int i = 0; i < listahorario.size(); ++i){
                out.println("<tr>");
                out.println("<td>"+listahorario.get(i).getId()+"</td>");
                out.println("<td>" + listahorario.get(i).getMateria()+"</td>");
                out.println("<td>" + listahorario.get(i).getDia()+"</td>");
                out.println("<td>" + listahorario.get(i).getHora()+"</td>");
                out.println("<td>" + listahorario.get(i).getAula()+"</td>");
                out.println("</tr>");
                
             }//for
             
            %>
            </table>
            
        </form>
        
        
        
        
        
        
        
    </body>
</html>
