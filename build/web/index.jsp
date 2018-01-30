<%-- 
    Document   : index
    Created on : 24/01/2018, 05:40:16 PM
    Author     : rosac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body background ="mar.jpg">
        <h1 align ="center">Prototipo escuela</h1>
        <h2 align ="center"> Inciar sesion </h2>
        <hr/>
        <form action="Validaciones" method="post" align="center" >
            <b><label> Nombre de usuario:<input type="texto" name="user" id="user" ></label></b>
            <b><label> Clave del usuario:<input type="password" name="pass" id="pass"></label></b>
            <input type="submit" name="entrar" id="entrar" value="Entrar">

        </form>
        <hr/>  
    </body>
</html>
