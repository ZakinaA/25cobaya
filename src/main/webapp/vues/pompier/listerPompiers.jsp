<%-- 
    Document   : listerPompiers.jsp
    Created on : 15 mars 2024, 16:50:49
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pompier"%>
<%@page import="model.Caserne"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SDIS WEB</title>
    </head>
    <body>
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
                color: #003366;
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
        <h1>Liste des pompiers du Calvados</h1>
            <%
                ArrayList<Pompier> lesPompiers = (ArrayList)request.getAttribute("pLesPompiers");
            %>
            <table>  
            <thead>
                <tr>             
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Caserne</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                        for (Pompier p : lesPompiers)
                        {              
                            out.println("<tr><td>");
                            out.println(p.getId());
                            out.println("</a></td>");

                            out.println("<td><a href ='../ServletPompier/consulter?idPompier="+ p.getId()+ "'>");
                            out.println(p.getNom());
                            out.println("</td>");;

                            out.println("<td>");
                            out.println(p.getPrenom());
                            out.println("</td>");
                           
                            out.println("<td>");
                            out.println(p.getUneCaserne().getNom());
                            out.println("</td>");
                        }
                    %>
                </tr>
            </tbody>
        </table>
    </body>
    </body>
</html>
