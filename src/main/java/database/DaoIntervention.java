/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Intervention;

/**
 *
 * @author TS1SIO
 */
public class DaoIntervention {
    
    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;
    
    public static ArrayList<Intervention> getLesInterventions(Connection cnx){
        
        ArrayList<Intervention> lesInterventions = new ArrayList<Intervention>();
        try{
            requeteSql = cnx.prepareStatement("select intervention.id as i_id, intervention.dateAppel as i_dateAppel, intervention.heureArrivee as i_heureArrivee, intervention.duree as i_duree, intervention.lieu as i_lieu" +
                         " from intervention");
            resultatRequete = requeteSql.executeQuery();
            
            while (resultatRequete.next()){
                
                Intervention i = new Intervention();
                    i.setId(resultatRequete.getInt("i_id"));
                    i.setDateAppel(resultatRequete.getString("i_dateAppel"));
                    i.setHeureArrivee(resultatRequete.getString("i_heureArrivee"));
                    i.setDuree(resultatRequete.getString("i_duree"));
                    i.setLieu(resultatRequete.getString("i_lieu"));
                
                lesInterventions.add(i);
            }
           
        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesInterventions e généré une erreur");
        }
        return lesInterventions;
    }
    
}
