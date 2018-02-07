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
public class Grupo1 {
    
    private int id;
    private String grupo;
    
    public Grupo1(){
        this(0,"");
    }
    public Grupo1(int id, String grupo){
        this.id = id;
        this.grupo = grupo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    
    
}//class grupo
