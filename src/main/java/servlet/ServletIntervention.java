/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import database.DaoIntervention;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

/**
 *
 * @author TS1SIO
 */

@WebServlet(name = "ServletIntervention", urlPatterns = {"/ServletIntervention"})
public class ServletIntervention extends HttpServlet {

     Connection cnx ;
            
    @Override
    public void init()
    {     
        System.out.println("Servlet init");
        ServletContext servletContext=getServletContext();
        cnx = (Connection)servletContext.getAttribute("connection");    
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = request.getRequestURI();
        
        //Recup et affichage des eleves
        if(url.equals("/sdisweb/ServletIntervention/lister"))
        {
            ArrayList lesInterventions = DaoIntervention.getLesInterventions(cnx);
            request.setAttribute("pLesInterventions", lesInterventions);
            System.out.println("Lister les interventions - nombres d'interventions récupérés " + lesInterventions.size());
            getServletContext().getRequestDispatcher("/vues/intervention/listerIntervention.jsp").forward(request, response);
            }
        
        /*if(url.equals("/PoudlardWeb/ServletEleve/consulter"))
        {
            int idEleve= Integer.parseInt((String)request.getParameter("idEleve"));
            Eleve unEleve = DaoEleve.getEleveById(cnx, idEleve);
            request.setAttribute("pUnEleve", unEleve);
            getServletContext().getRequestDispatcher("/vues/eleve/consulter.jsp").forward(request, response);
            }
        
        if(url.equals("/PoudlardWeb/ServletEleve/addEleve"))
        {
            ArrayList lesMaisons = DaoMaison.getLesMaisons(cnx);
            request.setAttribute("pLesMaisons", lesMaisons);
            this.getServletContext().getRequestDispatcher("/vues/eleve/addEleve.jsp").forward(request, response);
        }*/

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
