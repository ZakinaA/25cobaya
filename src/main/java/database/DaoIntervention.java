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
import model.Situation;

/**
 *
 * @author TS1SIO
 */
public class DaoIntervention {

    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;

    // Récupérer toutes les interventions avec leurs situations
        public static ArrayList<Intervention> getLesInterventions(Connection cnx) {
    ArrayList<Intervention> lesInterventions = new ArrayList<Intervention>();
    try {
        // Requête pour récupérer les interventions avec leurs situations
        requeteSql = cnx.prepareStatement(
                "SELECT intervention.id AS i_id, intervention.dateAppel AS i_dateAppel, " +
                        "intervention.heureArrivee AS i_heureArrivee, intervention.duree AS i_duree, " +
                        "intervention.lieu AS i_lieu, situation.id AS s_id, situation.libelle AS s_lib " +
                        "FROM intervention " +
                        "JOIN situation ON intervention.situation_id = situation.id"
        );
        resultatRequete = requeteSql.executeQuery();

        // Récupération de toutes les interventions avec leurs situations
        while (resultatRequete.next()) {
            Intervention i = new Intervention();
            i.setId(resultatRequete.getInt("i_id"));
            i.setDateAppel(resultatRequete.getString("i_dateAppel"));
            i.setHeureArrivee(resultatRequete.getString("i_heureArrivee"));
            i.setDuree(resultatRequete.getString("i_duree"));
            i.setLieu(resultatRequete.getString("i_lieu"));

            // Création de la situation associée à cette intervention
            Situation s = new Situation();
            s.setId(resultatRequete.getInt("s_id"));
            s.setLibelle(resultatRequete.getString("s_lib"));
            // Ajout de la situation à la liste des situations de l'intervention
            ArrayList<Situation> situations = new ArrayList<>();
            situations.add(s);
            i.setLesSituations(situations);

            // Log pour vérifier que la situation a bien été ajoutée
            System.out.println("Ajout de la situation : " + s.getLibelle() + " pour l'intervention ID : " + i.getId());

            lesInterventions.add(i);
        }

    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("La requête de getLesInterventions a généré une erreur");
    }
    return lesInterventions;
}

    public static Intervention getInterventionById(int id, Connection cnx) {
    Intervention uneIntervention = null;
    try {
        String req = "SELECT * FROM intervention WHERE id = ?";
        PreparedStatement ps = cnx.prepareStatement(req);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            uneIntervention = new Intervention(
                rs.getInt("id"),
                rs.getString("dateAppel"),
                rs.getString("heureArrivee"),
                rs.getString("duree"),
                rs.getString("lieu")
            );
            // Ajoute ici aussi uneSituation si nécessaire
        }

        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return uneIntervention;
}
}
