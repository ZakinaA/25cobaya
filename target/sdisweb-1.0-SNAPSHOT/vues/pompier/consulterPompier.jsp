<%-- 
    Document   : consulterPompier
    Created on : 18 mars 2024, 12:03:07
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pompier"%>
<%@page import="model.Caserne"%>
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
            Pompier p = (Pompier)request.getAttribute("pPompier");
        %>
        <h1>Bienvenue <%  out.println(p.getPrenom());%>  <%  out.println(p.getNom());%></h1>
        <table>
            <tr>
                <td>Nom : </td><td><% out.println(p.getNom()); %></td>
            </tr>
            
            <tr>
                <td>Prénom : </td><td><% out.println(p.getPrenom()); %></td>
            </tr>
            
            <tr>
                <td>Date de naissance : </td><td><% out.println(p.getDateNaissance()); %></td>
            </tr>
            
            <tr>
                <td>Numero Bip : </td><td><% out.println(p.getBip()); %></td>
            </tr>
            
            <tr>
                <td>Caserne : </td><td><%  out.println(p.getUneCaserne().getNom());%></td>
            </tr>
        </table>
    </body>
</html>
