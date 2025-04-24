<%-- 
    Document   : listerGradePompier
    Created on : 24 avr. 2025, 15:30:35
    Author     : TS1SIO
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.GradePompier" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Grades de Pompier</title>
    
    <style>
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
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #e60000;
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
            background-color: #e60000;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Liste des Grades de Pompier</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Grade</th>
                    <th>Catégorie</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    ArrayList<GradePompier> lesGrades = (ArrayList) request.getAttribute("pLesGrades");
                    for (GradePompier grade : lesGrades) {
                %>
                <tr>
                    <td><%= grade.getId() %></td>
                    <td><%= grade.getGrade() %></td>
                    <td><%= grade.getCategorie() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>


