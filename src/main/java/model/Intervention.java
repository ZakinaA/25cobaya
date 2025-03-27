/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TS1SIO
 */
public class Intervention {
    private int id;
    private String dateAppel ;
    private String heureArrivee;
    private String duree ;
    private String lieu;

    public Intervention() {
    }

    public Intervention(int id) {
        this.id = id;
    }

    public Intervention(int id, String dateAppel) {
        this.id = id;
        this.dateAppel = dateAppel;
    }

    public Intervention(int id, String dateAppel, String heureArrivee) {
        this.id = id;
        this.dateAppel = dateAppel;
        this.heureArrivee = heureArrivee;
    }

    public Intervention(int id, String dateAppel, String heureArrivee, String duree) {
        this.id = id;
        this.dateAppel = dateAppel;
        this.heureArrivee = heureArrivee;
        this.duree = duree;
    }

    public Intervention(int id, String dateAppel, String heureArrivee, String duree, String lieu) {
        this.id = id;
        this.dateAppel = dateAppel;
        this.heureArrivee = heureArrivee;
        this.duree = duree;
        this.lieu = lieu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDateAppel() {
        return dateAppel;
    }

    public void setDateAppel(String dateAppel) {
        this.dateAppel = dateAppel;
    }

    public String getHeureArrivee() {
        return heureArrivee;
    }

    public void setHeureArrivee(String heureArrivee) {
        this.heureArrivee = heureArrivee;
    }

    public String getDuree() {
        return duree;
    }

    public void setDuree(String duree) {
        this.duree = duree;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }
}
