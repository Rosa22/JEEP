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
        <link rel="stylesheet" href="css/hojaestilos.css"/>
        <title>JSP Page</title>
        
        <style>
            
            li {
                float: left;
                }
                
                
            ul {
                 list-style-type: none;
                 margin: 0;
                 padding: 0;
                 overflow: hidden;
                 background-color: #333333;
                }
                
            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 36px;
                text-decoration: none;
                font-family: sans-serif;
                font-size: large;
                }
            
                
              li a:hover {
                background-color: #111111;
               } 

              a:visited{
                color: white;
                background-color: transparent;    
                }
            
        </style>
  
    </head>
    <body>
        <header>Iniciar sesion</header>
        <nav></nav>
        <article>
            <fieldset>
                <legend>Ingresa los datos:</legend>
                <form action="Validaciones" method="post" align="center" >
                <p><b><label> Nombre del usuario:<input type="texto" name="user" id="user" ></label></b></p>
                <p><b><label> Clave del usuario:<input type="password" name="pass" id="pass"></label></b></p>
                <p><input type="submit" name="entrar" id="entrar" value="Entrar"></p>
                </form>
            </fieldset>
        </article>
            
            
        <article>
             <img alt="paisaje" src="mar.jpg"> 
        </article>
            
            
            
        <footer> 
            <ul>
                <li><a href="index.html">Salir</a></li>
            </ul>
        </footer>
        
        
    </body>
</html>
