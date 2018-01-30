/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EscuelaJavaEE.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author rosac
 */
public class Conexiondb {
    
    private static final String user="root";
    private static final String pass="123";
    private static final String host="localhost";
    private static final String port="3306";
    private static final String database="escuela1";
    private static final String driver="com.mysql.jdbc.Driver";
    private static final String url="jdbc:mysql://" +host +":"+port+"/"+database;
    public static Connection conexiones;
    
    
    public Conexiondb(){
    
    try{
        Class.forName(driver);
        conexiones = DriverManager.getConnection(url, user, pass);
        }//try 
    catch(SQLException a){
         a.printStackTrace();
         }//catch
     catch(ClassNotFoundException e){
        e.printStackTrace();
        }//catch
        
    }//constructor
    
}//class
