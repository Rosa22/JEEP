<%-- 
    Document   : Mostrargrado
    Created on : 6/02/2018, 04:14:29 PM
    Author     : rosac
--%>

<%@page import="EscuelaJavaEE.modelo.Grado1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <h1>Consulta!</h1>
        <% Grado1 grado =(Grado1)request.getAttribute("grado"); %>
        <hr />
        <form action="Actualizargrado" method="post">
        </p>
        <label>id:</label><input type="texto" name="gradoid1" id="gradoid1" value="<%= grado.getid()%>" readonly="readonly" >
        <label>Grado:</label><input type="number" name="nombregrado1" id="nombregrado1" value="<%= grado.getgrado() %>" >
        <p><input type="submit" name="modificargrado" id="modificargrado" value="Modificar grado"></p> 
        </form>
         <hr />
         <p><a href="ModificardatosGrado.jsp"><input type="submit" name="salir" id="salir" value="Salir" ></a></p>
        <hr />
       
        
        
        
    </body>
</html>
