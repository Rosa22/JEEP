<%-- 
    Document   : Alumnos
    Created on : 24/01/2018, 08:52:08 PM
    Author     : rosac
--%>


<%@page import="EscuelaJavaEE.modelo.Conexiondb"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Vector"%>
<%@page import="EscuelaJavaEE.modelo.Grupo1"%>
<%@page import="java.util.LinkedList"%>
<%@page import="EscuelaJavaEE.modelo.Alumno1"%>
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
        
        <header> Alumnos!</header>
       
        
        <nav>
            <form action="Agregaralumno" method="post">
            <label>Numero de control:</label><input type="texto" name="nc1" id="nc1" value="0">
            <label>Alumno:</label><input type="texto" name="alumno" id="alumno" value= >
            <label>Calle:</label><input type="texto" name="calle" id="calle">
            <label>Numero:</label><input type="texto" name="numero" id="numero" value="0">
            <p><label>Colonia:</label><input type="texto" name="colonia" id="colonia">
            <label>Codigo Postal:</label><input type="texto" name="cp" id="cp" value="0">
            <label>Correo:</label><input type="texto" name="correo" id="correo">
            <label>Telefono de contacto:</label><input type="texto" name="telefono" id="telefono">
            <select name="combogrado" id="combogrado">
                <option value="Grado?" selected>Grado</option>
                <%
                Statement st0 = Conexiondb.conexiones.createStatement();
                ResultSet rs0 = st0.executeQuery("select grado from grado");
                Vector vec0 = new Vector();
                while(rs0.next()){
                    vec0.add(rs0.getInt("grado"));
                }
                for(int i=0;i<vec0.size();i++){%> 
                <option value="<%=(i+1)%>"><%=vec0.get(i).toString()%></option> 
                <%}%>
                
                %>   
                
            </select>
            
            <select name="combonombre" id="combonombre1">        
                <option value="Grupo?" selected>Grupo</option> 
                <%
                Statement st = null;
                st = Conexiondb.conexiones.createStatement();
                ResultSet rs = st.executeQuery("select grupo from grupo");
                Vector vec=new Vector(); 
                    while(rs.next()){ 
                vec.add(rs.getString("grupo")); }     
                    for(int i=0;i<vec.size();i++){%> 
                <option value="<%=(i+1)%>"><%=vec.get(i).toString()%></option> 
                <%}%> 
            </select> 
                
                
            <p><input type="submit" name="agregaralumno" id="agregaralumno" value="Agregar"></p>
           
            <B><a href="ModificardatosAlumnos.jsp"> Modificar datos</a></B>
           </form>
        </nav>
            
         <article>
            
        <table border="2" align="center" cellspacing="8">
        <caption> Registros</caption>
        <tr>
            <td><br>ID</br></td>
            <td><br>#control</br></td>
            <td><br>nombre</br></td>
            <td><br>calle</br></td>
            <td><br>numero</br></td>
            <td><br>colonia</br></td>
            <td><br>cp</br></td>
            <td><br>correo</br></td>
            <td><br>telefono</br></td>
            <td><br>grado</br></td>
            <td><br>grupo</br></td>
        </tr>
        <%
          LinkedList<Alumno1> lista = Consultasdb.getAlumnos();
          for(int i = 0; i< lista.size(); ++i){
              out.println("<tr>");
              out.println("<td>"+lista.get(i).getId()+"</td>");
              out.println("<td>"+lista.get(i).getNumerocontrol()+"</td>");
              out.println("<td>"+lista.get(i).getNombre()+"</td>");
              out.println("<td>"+lista.get(i).getCalle()+"</td>");
              out.println("<td>"+lista.get(i).getNumero()+"</td>");
              out.println("<td>"+lista.get(i).getColonia()+"</td>");
              out.println("<td>"+lista.get(i).getCp()+"</td>");
              out.println("<td>"+lista.get(i).getEmail()+"</td>");
              out.println("<td>"+lista.get(i).getTelefono()+"</td>");
              out.println("<td>"+lista.get(i).getGrado()+"</td>");
              out.println("<td>"+lista.get(i).getGrupo()+"</td>");
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
