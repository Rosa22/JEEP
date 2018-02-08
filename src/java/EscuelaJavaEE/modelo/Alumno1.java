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
public class Alumno1 {
    private int id;
    private int numerocontrol;
    private String nombre;
    private String calle;
    private int numero;
    private String colonia;
    private int cp;
    private String email;
    private String telefono;
    private int grado;
    private String grupo;
    
    public Alumno1(){
        this(0,0, "","", 0, "", 0,"", "", 0, "");
    }
    
    public Alumno1(int id,int numerocontrol, String nombre,String calle, int numero, String colonia, int cp, String email,String telefono, int grado, String grupo){
        this.numerocontrol = numerocontrol;
        this.nombre = nombre;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.cp = cp;
        this.email = email;
        this.telefono = telefono;
        this.grado = grado;
        this.grupo = grupo;
    }//constructor

    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public int getNumerocontrol(){
        return numerocontrol;
    }
    public void setNumerocontrol(int numerocontrol){
        this.numerocontrol = numerocontrol;
    }
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public String getCalle(){
        return calle;
    }
    public void setCalle(String calle){
        this.calle = calle;
    }
    public int getNumero(){
        return numero;
    }
    public void setNumero(int numero){
        this.numero = numero;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getGrado() {
        return grado;
    }

    public void setGrado(int grado) {
        this.grado = grado;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    
    
}//class

