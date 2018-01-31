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
public class Materia1 {
    private int id;
    private String nombre;
    private String siglas;
    private int grado;
    
    public Materia1(){
        this(0,"", "", 0);
    }
    
    public Materia1(int id, String nombre, String siglas, int grado){
        this.id = id;
        this.nombre = nombre;
        this.siglas = siglas;
        this.grado = grado;
    }
    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSiglas() {
        return siglas;
    }

    public void setSiglas(String siglas) {
        this.siglas = siglas;
    }

    public int getGrado() {
        return grado;
    }

    public void setGrado(int grado) {
        this.grado = grado;
    }
    
    
    
    
    
}//class
