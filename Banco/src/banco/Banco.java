/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package banco;

import javax.swing.JOptionPane;

/**
 *
 * @author olivi
 */
public class Banco {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ClasseBanco dados = new ClasseBanco();
        
        dados.setAgencia(Integer.parseInt(JOptionPane.showInputDialog("Digite os números da sua agência")));
        dados.setNumConta(Integer.parseInt(JOptionPane.showInputDialog("Digite o número da conta")));
        dados.setSenha(JOptionPane.showInputDialog("Insira a sua senha"));
        
        dados.logar(dados.getAgencia(), dados.getNumConta(), dados.getSenha());
        
     
        
    }
    
}
