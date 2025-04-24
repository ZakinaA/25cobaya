<%-- 
    Document   : consulterIntervention
    Created on : 24 avr. 2025, 10:55:47
    Author     : TS1SIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pompier"%>
<%@page import="model.Caserne"%>
<%@page import="model.Intervention"%>
<%@page import="model.Situation"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SDIS WEB</title>
        <style>
            /* Global Styles */
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f4f4;
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
                font-size: 32px;
                color: #003366;
                margin-top: 20px;
                text-align: center;
            }

            table {
                width: 70%;
                margin: 20px auto;
                border-collapse: collapse;
                background-color: #ffffff;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            td {
                padding: 15px;
                text-align: left;
                border-bottom: 2px solid #ddd;
            }

            td:first-child {
                font-weight: bold;
                color: #003366;
            }

            tr:hover {
                background-color: #f5f5f5;
            }

            footer {
                background-color: #003366;
                color: white;
                text-align: center;
                padding: 15px;
                font-size: 14px;
                position: fixed;
                bottom: 0;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <%
            Intervention i = (Intervention)request.getAttribute("pUneIntervention");
        %>
        <h1>Consultation de l'intervention</h1>
        <table>
            <tr>
                <td>Id : </td><td><% out.println(i.getId()); %></td>
            </tr>
            
            <tr>
                <td>Date d'appel : </td><td><% out.println(i.getDateAppel()); %></td>
            </tr>
            
            <tr>
                <td>Heure d'arrivée : </td><td><% out.println(i.getHeureArrivee()); %></td>
            </tr>
            
            <tr>
                <td>Durée : </td><td><% out.println(i.getDuree()); %></td>
            </tr>
            
            <tr>
                <td>Lieu : </td><td><% out.println(i.getLieu()); %></td>
            </tr>
            
            <tr>
                <td>Situation : </td><td><%  out.println(i.getLesSituations());%></td>
            </tr>
        </table>
    </body>
</html>