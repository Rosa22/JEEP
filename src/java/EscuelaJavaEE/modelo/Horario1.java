package EscuelaJavaEE.modelo;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rosac
 */
public class Horario1 {
    private int id;
    private String materia;
    private String dia;
    private String hora;
    private String aula;

    
    public Horario1(){
        this(0,"", "", "", "");
    }
    public Horario1(int id,String materia, String dia, String hora, String aula){
        this.id = id;
        this.materia = materia;
        this.dia = dia;
        this.hora = hora;
        this.aula = aula;

    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id= id;
    }
    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getAula() {
        return aula;
    }

    public void setAula(String aula) {
        this.aula = aula;
    }
    
    
}//class Horario
