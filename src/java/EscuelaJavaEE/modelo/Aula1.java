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
public class Aula1 {
    private int id;
    private String nombreaula;
    private String nombredificio;
    
    public Aula1(){
        this(0,"", "");
    }
    
    public Aula1(int id, String nombreaula, String nombredificio){
        this.id = id;
        this.nombreaula = nombreaula;
        this.nombredificio = nombredificio;  
    }
    public void Setid(int id){
        this.id = id;
    }
    public int Getid(){
        return id;
    }
    
    public void Setnombreaula(String nombreaula){
        this.nombreaula = nombreaula;
    }
    public String Getnombreaula(){
        return nombreaula;
    }
    
    public void Setnombredificio(String nombredificio){
        this.nombredificio = nombredificio;
    }
    
    public String Getnombredificio(){
        return nombredificio;
    }
    
    
}//class aula1
