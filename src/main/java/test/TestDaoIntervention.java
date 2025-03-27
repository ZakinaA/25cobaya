/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import database.ConnexionBdd;
import database.DaoIntervention;
import java.sql.Connection;
import model.Intervention;

/**
 *
 * @author TS1SIO
 */
public class TestDaoIntervention {
    
        public static void main(String[] args) {
        
        //Connection à la base de données
        Connection cnx = ConnexionBdd.ouvrirConnexion();
        
        // Récupérer et afficher le nombre d'interventions
        System.out.println("Nombre d'intervention=" + DaoIntervention.getLesInterventions(cnx).size());
        
        // Récuperer et afficher le lieu de l'intervention avec l'id 1
        //System.out.println("L'intervention 1 se déroule =" + DaoIntervention.getLesInterventions(cnx, 1).getLieu());
        
        Intervention i = new Intervention();
        i.setId(6);
        i.setDateAppel("2025-03-27");
        i.setHeureArrivee("3h30");
        i.setLieu("Caen");
        
        // p = DaoPompier.addPompier(cnx, p); //
        System.out.println("la nouvelle intervention à pour id = " + i.getId());
        System.out.println("Le lieu de la nouvelle intervention est = " + i.getLieu());
    }
        
}
