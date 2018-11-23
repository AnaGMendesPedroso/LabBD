/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author anapedroso
 */
public abstract class AbstractFactory {
    private final String database = "jdbc:derby://localhost:1527/labbd";
    private final String user = "aluno0";
    private final String password = "aluno0";
    
     protected Connection conn;

    public AbstractFactory() {
        try {

            conn = DriverManager.getConnection(database + ";user="
                    + user + ";password=" + password);

            System.out.println("Conectado!");

        } catch (SQLException ex) {
            System.out.println("Ocorreu um erro. " + ex);
        }
    }
}
