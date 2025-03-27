<%-- 
    Document   : ajouterPompier
    Created on : 18 mars 2024, 13:30:47
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Caserne"%>
<%@page import="form.FormPompier"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SDIS WEB</title>
    </head>
    <body>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
                margin: 0;
                padding: 0;
            }

            h1 {
                color: #d32f2f;
                margin-top: 20px;
            }

            form {
                background: #fff;
                max-width: 400px;
                margin: 20px auto;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: left;
            }

            label {
                font-weight: bold;
                display: block;
                margin-top: 10px;
            }

            input, select {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"] {
                background-color: #d32f2f;
                color: white;
                border: none;
                padding: 10px;
                margin-top: 15px;
                cursor: pointer;
                font-size: 16px;
                width: 100%;
            }

            input[type="submit"]:hover {
                background-color: #b71c1c;
            }
        </style>
        <h1>NOUVEAU POMPIER</h1>
        
            <%
                FormPompier form = (FormPompier)request.getAttribute("form");
            %>
        
        <form class="form-inline" action="ajouter" method="POST">
            <label for="nom">NOM : </label>
            <input id="nom" type="text" name="nom" size="30" maxlength="30">
            </br>
            <label for="prenom">PRENOM : </label>
            <input id="prenom" type="text" name="prenom" size="30" maxlength="30">      
            </br>
            <label for="caserne">Caserne : </label>
            <select name="idCaserne">
                <%
                    ArrayList<Caserne> lesCasernes = (ArrayList)request.getAttribute("pLesCasernes");
                    if (lesCasernes != null ){
                        for (int i = 0; i < lesCasernes.size(); i++) {
                            Caserne c = lesCasernes.get(i);
                            out.println("<option value='" + c.getId() + "'>" + c.getNom() + "</option>");
                    }
                    }else{
                        out.println("<option value=''>Aucune caserne disponible</option>");}
                %>
            </select>
            <label for="dateNaissance"> DATE DE NAISSANCE : </label>
            <input id="dateNaiss" type="date" name="dateNaiss">
            <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        
        
        
        
    </body>
</html>


