/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EscuelaJavaEE.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import javax.swing.JOptionPane;

/**
 *
 * @author rosac
 */
public class Consultasdb extends Conexiondb {
    
    
    public boolean Autenticacion(String user, String pass) throws SQLException{
        Statement st = null;
        ResultSet rs = null;
        try{
            st = conexiones.createStatement();
            String consulta ="select * from usuarios where nombreu='"+user+"' and clave='"+pass+"'";
            rs = st.executeQuery(consulta);
             if(rs.next()){
                 return true;
             }//if
        }//try
        catch(SQLException a){
            a.printStackTrace();
        }//catch
        
        finally{
            rs.close();
            st.close();
        }
        
       return false;
    }//metodo autenticacion
    
    
    public boolean operacionalumnosagregar( int numerocontrol, String nombre, String calle, int numero, String colonia, int cp, String correo, String telefono, int grado, String grupo) throws SQLException{
       Statement st = null;
        try{
            st = conexiones.createStatement();
            String agregardb ="insert into alumno (numerocontrol, nombre, calle, numero, colonia, cp, email, telefono, grado, grupo) values ('"+numerocontrol+"', '"+nombre+"', '"+calle+"', '"+numero+"', '"+colonia+"','"+cp+"' ,'"+correo+"', '"+telefono+"', '"+grado+"', '"+grupo+"') ";  
            if(nombre.length() != 0 && calle.length() != 0 && colonia.length() != 0 && correo.length() != 0 && telefono.length() != 0 && grupo.length() != 0){
                st.executeUpdate(agregardb);
            return true;
            }
    
        }//try
        catch(SQLException b){
            b.getMessage();
        }//catch
        catch(NumberFormatException w){
            w.getMessage();
        }
        finally{
            st.close();
        }//finally
        return false;
    }//metodo operacionesalumnos

    
    //public boolean tablalumnos() throws SQLException{
    public static LinkedList<Alumno1> getAlumnos() throws SQLException{
        Statement st1 = null;
        ResultSet rs1 = null;
        LinkedList<Alumno1> listaAlumnos=new LinkedList<Alumno1>();
        
        try{ 
                st1 = conexiones.createStatement();
                String consulta="select numerocontrol, nombre, calle, numero, colonia, cp, email, telefono, grado, grupo from alumno;";
                rs1 = st1.executeQuery(consulta);
                
                while(rs1.next()){
                Alumno1 alumno = new Alumno1();
                alumno.setNumerocontrol(rs1.getInt("numerocontrol"));
                alumno.setNombre(rs1.getString("nombre"));
                alumno.setCalle(rs1.getString("calle"));
                alumno.setNumero(rs1.getInt("numero"));
                alumno.setColonia(rs1.getString("colonia"));
                alumno.setCp(rs1.getInt("cp"));
                alumno.setEmail(rs1.getString("email"));
                alumno.setTelefono(rs1.getString("telefono"));
                alumno.setGrado(rs1.getInt("grado"));
                alumno.setGrupo(rs1.getString("grupo"));
                listaAlumnos.add(alumno);
                }//while
        }//try
        catch(SQLException w){
            w.getMessage();
        }//catch
        finally{
            rs1.close();
            st1.close();
            
        }//finally
        return listaAlumnos;
    }//tablalumnos
    
    
    
    ///bloque eliminar alumnos
    
    public boolean eliminaralumnos(int numerocontrol) throws SQLException{
       String c="delete from alumno where numerocontrol='"+numerocontrol+"'";
       String c2 ="select * from alumno where numerocontrol='"+numerocontrol+"'";
     
        try(Statement st = conexiones.createStatement(); ResultSet rs = st.executeQuery(c2)) {
           
            if(rs.next()){
                st.executeUpdate(c);
                return true;
            }//if 
            
           
        }//try
        catch(SQLException s){
            s.getMessage();
        }//
        catch(NumberFormatException s){
            s.getMessage();
        }
        
        return false;
    }//eliminaralumnos
    

    public static Alumno1 Consultaralumno(int numerocontrol) throws SQLException, NumberFormatException{
        Statement st1 = null;
        ResultSet rs1 = null;
        //int n = Integer.parseInt(numerocontrol);
        Alumno1 alumno = null;
        try{
            st1 = conexiones.createStatement();
            String consulta="select numerocontrol, nombre, calle, numero, colonia, cp, email, telefono, grado, grupo from alumno where numerocontrol='"+numerocontrol+"';";
            rs1 = st1.executeQuery(consulta);
                 
            while(rs1.next()){    
                alumno = new Alumno1();
                alumno.setNumerocontrol(rs1.getInt("numerocontrol"));
                alumno.setNombre(rs1.getString("nombre"));
                alumno.setCalle(rs1.getString("calle"));
                alumno.setNumero(rs1.getInt("numero"));
                alumno.setColonia(rs1.getString("colonia"));
                alumno.setCp(rs1.getInt("cp"));
                alumno.setEmail(rs1.getString("email"));
                alumno.setTelefono(rs1.getString("telefono"));
                alumno.setGrado(rs1.getInt("grado"));
                alumno.setGrupo(rs1.getString("grupo"));
                System.out.print(numerocontrol);
                System.out.println(consulta);
                }//while
          
            
        }//try
        catch(SQLException q){
            q.getMessage();
        }//catch
        catch(NumberFormatException g){
            g.getMessage();
        }
        finally{
            rs1.close();
            st1.close();
        }//finally
        
        return alumno;
    }//static Alumno1
    
    
    public boolean Actualizaralumno (int numerocontrol, String nombre, String calle, int numero, String colonia, int cp, String correo, String telefono, int grado, String grupo) throws SQLException{
        Statement st = null;
        
        try{
            String actualizar ="update alumno set numerocontrol = '"+numerocontrol+"', nombre = '"+nombre+"', calle = '"+calle+"', numero = '"+numero+"' , colonia = '"+colonia+"', cp = '"+cp+"', email = '"+correo+"', telefono = '"+telefono+"', grado = '"+grado+"', grupo = '"+grupo+"' where numerocontrol = '"+numerocontrol+"'";
            st = conexiones.createStatement();
            st.executeUpdate(actualizar);
            return true;            
        }//try
        catch(SQLException s){
            s.getMessage();
        }//catch
        
        return false;
    }//Actualizar alumno
    
    
        public static LinkedList<Materia1> getMaterias() throws SQLException{
        Statement st1 = null;
        ResultSet rs1 = null;
        LinkedList<Materia1> listamateria =new LinkedList<Materia1>();
        
        try{ 
                st1 = conexiones.createStatement();
                String consulta="select id, nombre, siglas, grado from materia;";
                rs1 = st1.executeQuery(consulta);
                
                while(rs1.next()){
                Materia1 materia = new Materia1();
                materia.setId(rs1.getInt("id"));
                materia.setNombre(rs1.getString("nombre"));
                materia.setSiglas(rs1.getString("siglas"));
                materia.setGrado(rs1.getInt("grado"));
                listamateria.add(materia);
               
                }//while
        }//try
        catch(SQLException w){
            w.getMessage();
        }//catch
        finally{
            rs1.close();
            st1.close();
            
        }//finally
        return listamateria;
    }//tablalumnos
    
    
    
    
    
    
    
    
    
    
    
    
    
}//class
