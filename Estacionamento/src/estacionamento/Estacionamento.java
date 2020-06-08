/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estacionamento;

import javax.swing.JOptionPane;

/**
 *
 * @author olivi
 */
public class Estacionamento {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DadosEstaciona carro1 = new DadosEstaciona();
        
        JOptionPane.showMessageDialog(null, "Olá! Bem vindo ao Estacionamento Carritos e Bolotas");
        carro1.setPlaca(JOptionPane.showInputDialog("Qual a placa do carro?"));
        carro1.setModelo(JOptionPane.showInputDialog("Qual o modelo do carro?"));
        carro1.setHoraEntrada(Double.parseDouble(JOptionPane.showInputDialog("Que hora (sem os minutos) entrou?")));
        carro1.setMinEntrada(Double.parseDouble(JOptionPane.showInputDialog("Em quantos minutos entrou?")));
        carro1.setHoraSaida(Double.parseDouble(JOptionPane.showInputDialog("Em que horas (sem os minutos) está sendo realizada a saída?")));
        carro1.setMinSaida(Double.parseDouble(JOptionPane.showInputDialog("Em quantos minutos está sendo realizada a saída?")));
        carro1.setPreco(Double.parseDouble(JOptionPane.showInputDialog("Qual preço deve sre cobrado por hora?")));
        
        JOptionPane.showMessageDialog(null, "Obrigada por confiar no Carritos e Bolotas\n\n NOTA FISCAL:\n" +
                " Placa: " + carro1.getPlaca() + "\n Modelo: " + carro1.getModelo() + 
                "\n Entrada: " + carro1.getHoraEntrada() + "h" + carro1.getMinEntrada() + "min" +
                "\n Saída: " + carro1.getHoraSaida() + "h" + carro1.getMinSaida() + "min" + 
                "\n Total de horas (cheia): " + carro1.arredondar(carro1.subtracao(carro1.getHoraEntrada(), carro1.getMinEntrada(), carro1.getHoraSaida(), carro1.getMinSaida()))
        + "\n Preço por hora: " + carro1.getPreco() + "\n Total a pagar: " + carro1.precofinal( carro1.arredondar(carro1.subtracao(carro1.getHoraEntrada(), carro1.getMinEntrada(), carro1.getHoraSaida(), carro1.getMinSaida())), carro1.getPreco() ) );
        
        
    }
    
}
