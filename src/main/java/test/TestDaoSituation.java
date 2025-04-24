/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import database.ConnexionBdd;
import database.DaoSituation;
import java.sql.Connection;

/**
 *
 * @author TS1SIO
 */
public class TestDaoSituation {
    public static void main(String[] args) {
        
        //Connection à la base de données
        Connection cnx = ConnexionBdd.ouvrirConnexion();
        
        // Récupérer et afficher le nombre d'interventions
        System.out.println("Nombre de situation=" + DaoSituation.getLesSituations(cnx).size());
        
        // Récuperer et afficher le lieu de l'intervention avec l'id 1
        //System.out.println("L'intervention 1 se déroule =" + DaoIntervention.getLesInterventions(cnx, 1).getLieu());
        
    }
        
}
