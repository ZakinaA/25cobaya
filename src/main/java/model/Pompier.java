/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author zakina
 */
public class Pompier {
    
    private int id;
    private String bip ;
    private String nom;
    private String prenom ;
    private String dateNaissance;
    private Caserne uneCaserne ;

    public Pompier() {
    }

    public Pompier(int id) {
        this.id = id;
    }

    public Pompier(int id, String bip) {
        this.id = id;
        this.bip = bip;
    }

    public Pompier(int id, String bip, String nom) {
        this.id = id;
        this.bip = bip;
        this.nom = nom;
    }

    public Pompier(int id, String bip, String nom, String prenom) {
        this.id = id;
        this.bip = bip;
        this.nom = nom;
        this.prenom = prenom;
    }

    public Pompier(int id, String bip, String nom, String prenom, String dateNaissance) {
        this.id = id;
        this.bip = bip;
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
    }

    public Pompier(int id, String bip, String nom, String prenom, String dateNaissance, Caserne uneCaserne) {
        this.id = id;
        this.bip = bip;
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.uneCaserne = uneCaserne;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBip() {
        return bip;
    }

    public void setBip(String bip) {
        this.bip = bip;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public Caserne getUneCaserne() {
        return uneCaserne;
    }

    public void setUneCaserne(Caserne uneCaserne) {
        this.uneCaserne = uneCaserne;
    }
}
