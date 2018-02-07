/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EscuelaJavaEE.modelo;

/**
 *
 * @author rosac
 */
public class Grado1 {
    
    private int id;
    private int grado;
    
    public Grado1(){
        this(0,0);
    }
    
    public Grado1(int id, int grado){
        this.id = id;
        this.grado = grado;
        
    }
    
    public void setid(int id){
        this.id = id;
    }
    public int getid(){
        return id;
    }
    public void setgrado(int grado){
        this.grado= grado;
    }
    public int getgrado(){
        return grado;
    }
    
    
    
}//class grado1
