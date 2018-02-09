<%-- 
    Document   : Mostrarhorario
    Created on : 8/02/2018, 10:37:39 PM
    Author     : rosac
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="EscuelaJavaEE.modelo.Conexiondb"%>
<%@page import="java.sql.Statement"%>
<%@page import="EscuelaJavaEE.modelo.Horario1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Horario1 horario =(Horario1)request.getAttribute("horario"); %>
        <hr> 
        <form action="Actualizarhorario" method="post">
        <label>ID:</label><input type="texto" name="id0" id="id0" value="<%= horario.getId() %>" readonly="readonly">
            
            <select name="combomateria0" id="combomateria0">
                <option value="combomateria0" selected><%= horario.getMateria() %></option>
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
             
            <select name="dia0" id="dia0">
                <option value="Dia"><%= horario.getDia() %></option>
                <option value="Lunes">Lunes</option>
                <option value="Martes">Martes</option>
                <option value="Miercoles">Miercoles</option>
                <option value="Jueves">Jueves</option>
                <option value="Viernes">Viernes</option>
                <option value="Sabado">Sabado</option>
            </select>
            
                <label>Horario:</label><input type="texto" name="horario0" id="horario0" value="<%= horario.getHora() %>">
             
            <select name="comboaula0" id="comboaula0">
                <option value="comboaula0" selected><%= horario.getAula() %></option>
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


            <p><input type="submit" name="modificarhorario" id="modificarhorario" value="Modificar horario"></p>
            <B><a href="Horarios.jsp">Salir</a></B>      
        
        
        
        
    </body>
</html>
