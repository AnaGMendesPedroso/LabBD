/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelTest;

import model.Cadastro;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author felipecaggi
 */
public class CadastroTest {
    
    public CadastroTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void hello() {
    
        String login = "Felipe";
        String senha = "123456";
        
        Cadastro cadastro = new Cadastro();
        
        cadastro.cadastrarUsuario(login, senha);
        
    }
    
    public void hello2() {
        String login = "Felipe";
        String senha = "123456";
        
        Cadastro cadastro = new Cadastro();
        
        System.out.println("RESULTADO: " + cadastro.validarUsuario(login, senha) );
    }
}
