/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EscuelaJavaEE.servlets;

import EscuelaJavaEE.modelo.Consultasdb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rosac
 */
public class Actualizaralumno extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, NumberFormatException {
        response.setContentType("text/html;charset=UTF-8");
       
       int id = Integer.parseInt(request.getParameter("idc3"));
       int n = Integer.parseInt(request.getParameter("numeroc3"));
       String nombre = request.getParameter("alumno");
       String calle = request.getParameter("calle");
       int n2 = Integer.parseInt(request.getParameter("numero"));
       String colonia = request.getParameter("colonia");
       int n3 = Integer.parseInt(request.getParameter("cp"));
       String correo = request.getParameter("correo");
       String telefono = request.getParameter("telefono");
       int n4 = Integer.parseInt(request.getParameter("combogrado"));
       String grupo = request.getParameter("combogrup");
       System.out.println(n4);
       System.out.println(grupo);
       
         Consultasdb conexiones = new Consultasdb();

       if(conexiones.Actualizaralumno(id, n, nombre, calle, n2, colonia, n3, correo, telefono, n4, grupo)) {
           response.sendRedirect("ModificardatosAlumnos.jsp");
            }//if
            else{
                 response.sendRedirect("Error.jsp");
             }//else      
       
         
       
    }//processRequest

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Actualizaralumno.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Actualizaralumno.class.getName()).log(Level.SEVERE, null, ex);
        }
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
