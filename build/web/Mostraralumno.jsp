<%-- 
    Document   : Mostaralumno
    Created on : 28/01/2018, 10:25:50 PM
    Author     : rosac
--%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="EscuelaJavaEE.modelo.Conexiondb"%>
<%@page import="EscuelaJavaEE.modelo.Alumno1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/hojaestilos.css"/>
    </head>
    <body>
        <h1>Consulta!</h1>
        <% Alumno1 alumno =(Alumno1)request.getAttribute("alumno"); %>
        <hr />
        <form action="Actualizaralumno" method="post">
        </p>
        <label>ID:</label><input type="texto" name="idc3" id="idc3" value="<%= alumno.getId()%>" readonly="readonly">
        <label>Numero de control</label><input type="texto" name="numeroc3" id="numeroc3" value="<%= alumno.getNumerocontrol() %>">
        <label>Alumno:</label><input type="texto" name="alumno" id="alumno" value="<%= alumno.getNombre() %>" >
        <label>Calle:</label><input type="texto" name="calle" id="calle" value="<%= alumno.getCalle() %>">
        <label>Numero:</label><input type="texto" name="numero" id="numero" value="<%= alumno.getNumero() %>">
        <label>Colonia:</label><input type="texto" name="colonia" id="colonia" value="<%= alumno.getColonia() %>">
        <p><label>Codigo postal:</label><input type="texto" name="cp" id="cp" value="<%= alumno.getCp()%>">
        <label>Correo:</label><input type="texto" name="correo" id="correo" value="<%= alumno.getEmail() %>">
        <label>Telefono de contacto:</label><input type="texto" name="telefono" id="telefono" value="<%= alumno.getTelefono() %>">
         <select name="combogrado" id="combogrado" >
             <option><%=alumno.getGrado()%></option>
                <%
                Statement st0 = Conexiondb.conexiones.createStatement();
                ResultSet rs0 = st0.executeQuery("select grado from grado");
                Vector vec0 = new Vector();
                while(rs0.next()){
                    vec0.add(rs0.getInt("grado"));}
                for(int i=0;i<vec0.size();i++){%> 
                <option value="<%=(i+1)%>"><%=vec0.get(i).toString()%></option> 
                <%}%>   
            </select>
            <%/////////////////////////////////////////%>
           <select name="combogrup">        
               <option><%= alumno.getGrupo() %></option> 
               <%
                Statement st = Conexiondb.conexiones.createStatement();
                ResultSet rs = st.executeQuery("select grupo from grupo");
                Vector vec=new Vector(); 
                    while(rs.next()){ vec.add(rs.getString("grupo")); }     
                    for(int i=0;i<vec.size();i++){%>
                    <% //<option value="<%=vec.get(i).toString()%>"><%=(i+1) %></option>
                    
           <option value="<%=vec.get(i).toString()%>"><%=vec.get(i).toString() %></option> 
                    
               <%} %>
                %>
            </select> 
            
            

        <p><input type="submit" name="modificaralumno" id="modificaralumno" value="Modificar alumno"></p>
        </form>
        <hr />
        <p><a href="Alumnos.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr />
        
    </body>
    
    
    
    
</html>
