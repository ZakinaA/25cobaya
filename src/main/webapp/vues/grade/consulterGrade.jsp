<%-- 
    Document   : consulterGrade
    Created on : 24 avr. 2025, 15:26:30
    Author     : TS1SIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.GradePompier"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Détail du Grade</title>
        <style>
            /* Global styles */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }

            .container {
                max-width: 900px;
                margin: 0 auto;
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #e60000; /* Red color similar to the lister page */
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #e60000; /* Red background for headers */
                color: white;
            }

            td {
                background-color: #f9f9f9;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            .message {
                font-size: 1.2rem;
                text-align: center;
                margin-top: 20px;
                color: #e74c3c; /* Error color similar to the lister page */
            }

            .btn-back {
                display: inline-block;
                padding: 10px 20px;
                background-color: #e60000; /* Red color for buttons */
                color: white;
                text-decoration: none;
                border-radius: 5px;
                margin-top: 20px;
                text-align: center;
            }

            .btn-back:hover {
                background-color: #c70000; /* Darker red for hover effect */
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h1>Détail du Grade</h1>

            <%
                GradePompier grade = (GradePompier) request.getAttribute("pGrade");
                if (grade != null) {
            %>
                <table>
                    <tr>
                        <th>ID :</th>
                        <td><%= grade.getId() %></td>
                    </tr>
                    <tr>
                        <th>Grade :</th>
                        <td><%= grade.getGrade() %></td>
                    </tr>
                    <tr>
                        <th>Catégorie :</th>
                        <td><%= grade.getCategorie() %></td>
                    </tr>
                </table>
                <a href="lister" class="btn-back">Retour à la liste des grades</a>
            <%
                } else {
            %>
                <p class="message">Aucun grade sélectionné. Veuillez essayer à nouveau.</p>
                <a href="lister" class="btn-back">Retour à la liste des grades</a>
            <%
                }
            %>
        </div>

    </body>
</html>