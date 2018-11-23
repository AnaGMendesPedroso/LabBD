/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this tsessionplate file, choose Tools | Tsessionplates
 * and open the tsessionplate in the editor.
 */
package model;

import entity.Usuario;

import org.hibernate.Session;

/**
 *
 * @author felipecaggi
 */
public class Cadastro {
    
    public void cadastrarUsuario(String login, String senha) {

        Session session = HibernateUtil.getSession();
                
        session.getTransaction().begin();
        
        Usuario usuario = new Usuario(login, senha);
        
        session.persist(usuario);
        
        session.getTransaction().commit();
        
        session.close();
        
    }
    
    public boolean validarUsuario(String login, String senha) {

        Session session = HibernateUtil.getSession();
                        
        Usuario usuario = (Usuario) session.get(Usuario.class, senha);
        
        session.close();
        
        return usuario.getSenha().equals(senha);
        
    }
    
}
