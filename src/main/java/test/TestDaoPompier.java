/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import database.ConnexionBdd;
import database.DaoPompier;
import java.sql.Connection;
import model.Caserne;
import model.Pompier;

/**
 *
 * @author zakina
 */
public class TestDaoPompier {
    
    public static void main (String args[]){
        
        Connection cnx = ConnexionBdd.ouvrirConnexion();
        System.out.println ("Nombre de pompiers=" + DaoPompier.getLesPompiers(cnx).size());
        
        System.out.println ("Le pompier 1 s'appelle =" + DaoPompier.getPompierById(cnx,1).getNom());
        
        Pompier p = new Pompier();
        p.setNom("CHAUVEL");
        p.setPrenom("Jules");
        p.setBip("2");
        p.setUneCaserne(new Caserne(1));
        
        // p = DaoPompier.addPompier(cnx, p); //
        System.out.println("le nouveau pompier a reçu l id = " + p.getId());
        System.out.println("le nouveau pompier a reçu l bip = " + p.getBip());
        
    }
    
}
