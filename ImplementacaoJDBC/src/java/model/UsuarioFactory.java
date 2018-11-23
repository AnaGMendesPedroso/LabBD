/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author anapedroso
 */
public class UsuarioFactory extends AbstractFactory {

    public UsuarioFactory() {
        super();
    }
    
    public boolean salva(String login, String senha){
        try{
            Statement statement = conn.createStatement();
            String sql =  "INSERT INTO USUARIO (login, senha) VALUES ('"
                    + login + "', '"+ senha + "')";
            
            System.out.println(sql);
           statement.executeUpdate(sql);
        }catch (SQLException ex){
            System.out.println("Erro ao salvar : " + ex);
            return false;
        }
        return true;
    }
    
    public boolean validarUsuario(String login, String senha){
        try{
            Statement statement = conn.createStatement();
            String sql = "SELECT * FROM USUARIO WHERE '"
                    + login + "' IN (SELECT * FROM USUARIO)";
            System.out.println(sql);
           boolean resul = statement.execute(sql);
        }catch (SQLException ex){
            System.out.println("Erro ao validar: " + ex);
            return false;
        }
        return true;
    }
}
