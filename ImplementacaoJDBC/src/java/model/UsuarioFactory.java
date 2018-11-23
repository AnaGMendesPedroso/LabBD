/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author anapedroso
 */
public class UsuarioFactory extends AbstractFactory {

    public UsuarioFactory() {
        super();
    }

    public boolean salva(String login, String senha) {
        try {
            Statement statement = conn.createStatement();
            String sql = "INSERT INTO USUARIO (login, senha) VALUES ('"
                    + login + "', '" + senha + "')";

            System.out.println(sql);
            statement.executeUpdate(sql);
        } catch (SQLException ex) {
            System.out.println("Erro ao salvar : " + ex);
            return false;
        }
        return true;
    }

    public boolean validarUsuario(String login, String senha) {
        Usuario user;
        List<Usuario> lista = new ArrayList();
        boolean teste;
        try {
            Statement statement = conn.createStatement();
            String sql = "SELECT login, senha FROM USUARIO WHERE USUARIO.LOGIN = '"
                    + login + "'";
            System.out.println(sql);

            ResultSet resultado = statement.executeQuery(sql);
            while (resultado.next()) {
                String loginr = resultado.getString("LOGIN");
                String senhar = resultado.getString("SENHA");
                user = new Usuario(loginr, senha);

                lista.add(user);
            }
            if (lista.isEmpty()) {
                throw new IllegalArgumentException("Usuario não cadastrado");
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao validar: " + ex);
            return teste = false;
        } catch (IllegalArgumentException e) {
            System.out.println("Não existe esse usuário no BD");
            return teste = false;
        }
        return teste = true;
    }
}
