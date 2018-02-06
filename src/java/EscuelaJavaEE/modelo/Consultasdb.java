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
        finally{
            st.close();
        }
        
        return false;
    }//Actualizar materia
    
    //Bloque materias
    
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
    }//tabla
    
        public boolean operacionagregarmateria(String nombre, String siglas, int grado) throws SQLException{
            Statement st = null;
            try{
                st = conexiones.createStatement();
                String agregar="insert into materia (nombre, siglas, grado)values('"+nombre+"', '"+siglas+"', '"+grado+"')";
                st.executeUpdate(agregar);
                return true;
            }//try
            catch(SQLException f){
                f.getMessage();
            }//catch
            catch(NumberFormatException w){
                w.getMessage();
            }
            finally{
                st.close();
            }//finally
            
            return false;
        }//operacionagregarmateria
    
        public boolean operacioneliminarmateria(int id) throws SQLException{
            Statement st = null;
            ResultSet rs = null;
            
            try{
                st = conexiones.createStatement();
                String uno = "select nombre from materia where id = '"+id+"'";
                String dos = "delete from materia where id='"+id+"'";
                rs = st.executeQuery(uno);
                
                if(rs.next()){
                    st.executeUpdate(dos);
                    return true;
                }

            }//try
            catch(SQLException d){
                d.getMessage();
            }//catch
            catch(NumberFormatException d){
                d.getMessage();
            }
            
            finally{
                rs.close();
                st.close();
            }//finally
            
            return false;
        }//operacioneliminarmateria
    
        public static Materia1 Consultarmateria(int id) throws SQLException, NumberFormatException{
        Statement st1 = null;
        ResultSet rs1 = null;
        //int n = Integer.parseInt(numerocontrol);
        Materia1 materia = null;
        try{
            st1 = conexiones.createStatement();
            String consulta="select id, nombre, siglas, grado from materia where id='"+id+"';";
            rs1 = st1.executeQuery(consulta);
                 
            while(rs1.next()){    
                materia = new Materia1();
                materia.setId(rs1.getInt("id"));
                materia.setNombre(rs1.getString("nombre"));
                materia.setSiglas(rs1.getString("siglas"));
                materia.setGrado(rs1.getInt("grado"));
                
                }//while
          
            
        }//try//try
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
        
        return materia;
    }//static materia1

        public boolean Actualizarmateria (int id, String nombre, String siglas, int grado) throws SQLException{
        Statement st = null;
        
        try{
            String actualizar ="update materia set nombre = '"+nombre+"', siglas = '"+siglas+"', grado = '"+grado+"' where id = '"+id+"'";
            st = conexiones.createStatement();
            st.executeUpdate(actualizar);
            return true;            
        }//try
        catch(SQLException s){
            s.getMessage();
        }//catch
        catch(NumberFormatException w){
            w.getMessage();
        }
        finally{
            st.close();
        }
        
        return false;
    }//Actualizar materia
        
    
    
    //bloque aula
        
        public boolean agregaraula(String nombreaula, String nombredificio) throws SQLException{
            Statement st = null;
             try{
                 st = conexiones.createStatement();
                 String agregar = "insert into aula(nombre, edificio) values('"+nombreaula+"', '"+nombredificio+"')";
                 st.executeUpdate(agregar);
                 return true;
                 
             }//try
            catch(SQLException s){
                s.getMessage();
            }//
            finally{
                 st.close();
             }
            
            return false;
        }//agregaraula
    
    
        //////
        
        public static Aula1 Consultaraula(int id) throws SQLException, NumberFormatException{
        Statement st1 = null;
        ResultSet rs1 = null;
    
        Aula1 aula = null;
        try{
            st1 = conexiones.createStatement();
            String consulta="select id, nombre, edificio from aula where id='"+id+"';";
            rs1 = st1.executeQuery(consulta);
                 
            while(rs1.next()){    
                aula = new Aula1();
                aula.Setid(rs1.getInt("id"));
                aula.Setnombreaula(rs1.getString("nombre"));
                aula.Setnombredificio(rs1.getString("edificio"));
 
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
        
        return aula;
    }//static aula1
    /////////////////////////
        
        
        public static LinkedList<Aula1> getAulas() throws SQLException{
        Statement st1 = null;
        ResultSet rs1 = null;
        LinkedList<Aula1> listaula =new LinkedList<Aula1>();
        
        try{ 
                st1 = conexiones.createStatement();
                String consulta="select id, nombre, edificio from aula;";
                rs1 = st1.executeQuery(consulta);
                
                while(rs1.next()){
                Aula1 aula = new Aula1();
                aula.Setid(rs1.getInt("id"));
                aula.Setnombreaula(rs1.getString("nombre"));
                aula.Setnombredificio(rs1.getString("edificio"));
                listaula.add(aula);
               
                }//while
        }//try
        catch(SQLException w){
            w.getMessage();
        }//catch
        finally{
            rs1.close();
            st1.close();
            
        }//finally
        return listaula;
    }//tablalumnos
    
        
            
    public boolean eliminaraulas(int id) throws SQLException{
       String c="delete from aula where id='"+id+"'";
       String c2 ="select * from aula where id='"+id+"'";
     
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
        
        
        
    
        public boolean Actualizaraula (int id, String nombre, String edificio) throws SQLException{
        Statement st = null;
        
        try{
            String actualizar ="update aula set nombre = '"+nombre+"', edificio = '"+edificio+"' where id = '"+id+"'";
            st = conexiones.createStatement();
            st.executeUpdate(actualizar);
            return true;            
        }//try
        catch(SQLException s){
            s.getMessage();
        }//catch
        catch(NumberFormatException w){
            w.getMessage();
        }
        finally{
            st.close();
        }
        
        return false;
    }//Actualizar aula
    
    
    
    
    
    
    
}//class
