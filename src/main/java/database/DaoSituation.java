/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author TS1SIO
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Intervention;
import model.Situation;

public class DaoSituation {
    
    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;
    
    public static ArrayList<Situation> getLesSituations(Connection cnx){
        
        ArrayList<Situation> lesSituations = new ArrayList<Situation>();
        try{
            requeteSql = cnx.prepareStatement("select situation.id as s_id, situation.libelle as s_libelle from situation");
            resultatRequete = requeteSql.executeQuery();
            
            while (resultatRequete.next()){
                
                Situation s = new Situation();
                    s.setId(resultatRequete.getInt("s_id"));
                    s.setLibelle(resultatRequete.getString("s_libelle"));
                
                lesSituations.add(s);
            }
           
        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesSituations a généré une erreur");
        }
        return lesSituations;
    }
    public static ArrayList<Situation> getSituationsByIntervention(Connection cnx, int interventionId) {
    ArrayList<Situation> lesSituations = new ArrayList<>();
    try {
        // Requête pour récupérer les situations associées à l'intervention
        PreparedStatement requeteSql = cnx.prepareStatement(
                "SELECT situation.id AS s_id, situation.libelle AS s_libelle " +
                        "FROM situation " +
                        "JOIN intervention_situation ON situation.id = intervention_situation.situation_id " +
                        "WHERE intervention_situation.intervention_id = ?"
        );
        requeteSql.setInt(1, interventionId);
        ResultSet resultatRequete = requeteSql.executeQuery();

        // Récupérer toutes les situations liées à cette intervention
        while (resultatRequete.next()) {
            Situation s = new Situation();
            s.setId(resultatRequete.getInt("s_id"));
            s.setLibelle(resultatRequete.getString("s_libelle"));
            lesSituations.add(s);
        }

    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("La requête pour récupérer les situations a généré une erreur");
    }
    return lesSituations;
}
}
