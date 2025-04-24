<%-- 
    Document   : listerIntervention
    Created on : 27 mars 2025, 16:51:08
    Author     : TS1SIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Intervention"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APPLICATION DE GESTION SDIS CALVADOS</title>
        <style>
            /* Global Styles */
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
                color: #333;
            }

            header {
                background-color: #003366;  /* Dark Blue */
                color: white;
                padding: 20px;
                text-align: center;
                font-size: 26px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

            h1 {
                font-size: 36px;
                color: white; /* Changer la couleur du titre en blanc */
                text-align: center;
                margin-top: 20px;    
            }


            /* Table Styles */
            table {
                width: 90%;
                margin: 20px auto;
                border-collapse: collapse;
                background-color: #ffffff;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            th, td {
                padding: 15px;
                text-align: left;
                border-bottom: 2px solid #ddd;
            }

            th {
                background-color: #ff5722; /* Orange-Red */
                color: white;
                font-size: 18px;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            tr:hover {
                background-color: #ffeb3b; /* Light Yellow on Hover */
            }

            /* Link Styles */
            a {
                text-decoration: none;
                color: #003366;
                font-weight: bold;
            }

            a:hover {
                color: #ff5722; /* Change to Orange-Red on Hover */
            }

            /* Footer Styles */
            footer {
                background-color: #003366;
                color: white;
                text-align: center;
                padding: 15px;
                position: fixed;
                bottom: 0;
                width: 100%;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Liste des interventions du Calvados</h1>
        </header>

        <%
            // Récupérer la liste des interventions depuis l'attribut de requête
            ArrayList<Intervention> lesInterventions = (ArrayList) request.getAttribute("pLesInterventions");
        %>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Date appel</th>
                    <th>Heure arrivée</th>
                    <th>Durée</th>
                    <th>Lieu</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Vérifier si la liste d'interventions est vide
                    if (lesInterventions != null && !lesInterventions.isEmpty()) {
                        // Parcourir la liste des interventions
                        for (Intervention i : lesInterventions) {
                %>
                    <tr>
                    <%  
                           out.println("<td><a href='../ServletIntervention/consulter?id=" + i.getId() + "'>");
                           out.println(i.getId());
                           out.println("</a></td>");

                            out.println("<td>");
                            out.println(i.getDateAppel());
                            out.println("</td>");;

                            out.println("<td>");
                            out.println(i.getHeureArrivee());
                            out.println("</td>");
                           
                            out.println("<td>");
                            out.println(i.getDuree());
                            out.println("</td>");
                            
                            out.println("<td>");
                            out.println(i.getLieu());
                            out.println("</td>");
                    %>
                </tr>
                <%
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="5" style="text-align: center;">Aucune intervention disponible.</td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <footer>
            SDIS CALVADOS &copy; 2025 - Tous droits réservés
        </footer>
    </body>
</html>
