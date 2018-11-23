/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import model.Cadastro;

/**
 *
 * @author felipecaggi
 */
public class GeneralServlet extends HttpServlet {
    
    //Cadastro cadastro = new Cadastro();
    
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
            throws ServletException, IOException {
        String jsp = null;
        
        if (request.getRequestURI().endsWith("/passo1")) {
            jsp = "/passo1.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo2_1")) {
            jsp = "/passo2-1.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo2_2")) {
            jsp = "/passo2-2.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo2_3")) {
            jsp = "/passo2-3.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo3")) {
            jsp = "/passo3.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo4")) {
            jsp = "/passo4.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo5")) {
            jsp = "/passo5.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo6")) {
            cadastraUsuario(request);
            jsp = "/passo6.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo7")) {
            jsp = "/passo7.jsp";
        }
        else if (request.getRequestURI().endsWith("/passo8")) {
            validaUsuario(request);
            jsp = "/passo8.jsp";
        }
        if (request.getRequestURI().endsWith("/home")) {
            jsp = "/home.jsp";
        }
        
        request.getRequestDispatcher(jsp).forward(request, response);

    }
    
    public void cadastraUsuario(HttpServletRequest request) {
        String login = request.getParameter("login");
        String senha = request.getParameter("password");
                
        cadastro.cadastrarUsuario(login, senha);
    }
    
    public void validaUsuario(HttpServletRequest request) {
        String login = request.getParameter("login");
        String senha = request.getParameter("password");
                
        boolean sucesso = cadastro.validarUsuario(login, senha);
        
        if (sucesso)
            request.setAttribute("mensagem", "Bem-vindo " + login + "!");
        else
            request.setAttribute("mensagem", "Não conseguimos conectar com o usuário " + login + "! Verifique se o login e senha estão corretos");
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
