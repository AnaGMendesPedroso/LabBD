/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UsuarioFactory;

/**
 *
 * @author anapedroso
 */
public class UsuarioServlet extends HttpServlet {

    UsuarioFactory userfactory = new UsuarioFactory();

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
        } else if (request.getRequestURI().endsWith("/passo2a")) {
            jsp = "/passo2a.jsp";
        } else if (request.getRequestURI().endsWith("/passo2b")) {
            jsp = "/passo2b.jsp";
        } else if (request.getRequestURI().endsWith("/passo2c")) {
            jsp = "/passo2c.jsp";
        } else if (request.getRequestURI().endsWith("/passo3")) {
            jsp = "/passo3.jsp";
        } else if (request.getRequestURI().endsWith("/passo4")) {
            jsp = "/passo4.jsp";
        } else if (request.getRequestURI().endsWith("/passo5")) {
            jsp = "/passo5.jsp";
        } else if (request.getRequestURI().endsWith("/passo6")) {
            cadastraUsuario(request);
            jsp = "/passo6.jsp";
        } else if (request.getRequestURI().endsWith("/passo7")) {
            jsp = "/passo7.jsp";
        } else if (request.getRequestURI().endsWith("/passo8")) {
            validaUsuario(request);
            jsp = "/passo8.jsp";
        }
        if (request.getRequestURI().endsWith("/index")) {
            jsp = "/index.jsp";
        }

        request.getRequestDispatcher(jsp).forward(request, response);

    }

    public void cadastraUsuario(HttpServletRequest request) {
        String login = request.getParameter("login");
        String senha = request.getParameter("password");

        boolean sucesso = userfactory.salva(login, senha);
        if (sucesso) {
            request.setAttribute("mensagem", "O usuário " + login + " foi salvo com sucesso!");
        } else {
            request.setAttribute("mensagem", "Falha ao salvar o usuário");
        }

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

    private void validaUsuario(HttpServletRequest request) {
        String login = request.getParameter("login");
        String senha = request.getParameter("password");

        boolean sucesso = userfactory.validarUsuario(login, senha);

        if (sucesso) {
            request.setAttribute("mensagem", "Bem-vindo " + login + "!");
        } else {
            request.setAttribute("mensagem", "Não conseguimos conectar com o usuário " + login + "! Verifique se o login e senha estão corretos");
        }
    }

}
