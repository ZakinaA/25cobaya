/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TS1SIO
 */
public class Situation {
    private int id;
    private String libelle ;
    private Intervention uneIntervention ;

    public Situation() {
    }

    public Situation(int id) {
        this.id = id;
    }

    public Situation(int id, String libelle) {
        this.id = id;
        this.libelle = libelle;
    }

    public Situation(int id, String libelle, Intervention uneIntervention) {
        this.id = id;
        this.libelle = libelle;
        this.uneIntervention = uneIntervention;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    
    public Intervention getUneIntervention() {
        return uneIntervention;
    }

    public void setUneIntervention(Intervention uneIntervention) {
        this.uneIntervention = uneIntervention;
    }
}
