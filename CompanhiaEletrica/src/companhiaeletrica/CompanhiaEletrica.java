/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package companhiaeletrica;

import javax.swing.JOptionPane;

/**
 *
 * @author olivi
 */
public class CompanhiaEletrica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        DadosContaLuz tangerina = new DadosContaLuz();
        
        tangerina.setLeituraAnterior(Double.parseDouble(JOptionPane.showInputDialog(null, "Insira o valor da leitura anterior" )));
        tangerina.setLeituraAtual(Double.parseDouble(JOptionPane.showInputDialog(null, "Insira o valor da leitura atual" )));
        
        tangerina.setTe(0.29);
        tangerina.setTusd(0.30);
        
        tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior());
        tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe());
        tangerina.verificaBandeira(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe()));
        tangerina.finalPrice(tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe()), tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.verificaBandeira(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe())));
        tangerina.conta(tangerina.getLeituraAtual() , tangerina.getLeituraAnterior() , tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.getTusd() , tangerina.getTe()), tangerina.nomeBandeira(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe())) , tangerina.finalPrice(tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe()), tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.verificaBandeira(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()), tangerina.cobranca(tangerina.subtracao(tangerina.getLeituraAtual(), tangerina.getLeituraAnterior()) , tangerina.getTusd(), tangerina.getTe()))));
        
    }
    
}
