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
public class DadosContaLuz {
    public double leituraAtual;
    public double leituraAnterior;
    public double tusd;
    public double te;

    public double getLeituraAtual() {
        return leituraAtual;
    }

    public void setLeituraAtual(double leituraAtual) {
        this.leituraAtual = leituraAtual;
    }

    public double getLeituraAnterior() {
        return leituraAnterior;
    }

    public void setLeituraAnterior(double leituraAnterior) {
        this.leituraAnterior = leituraAnterior;
    }

    public double getTusd() {
        return tusd;
    }

    public void setTusd(double tusd) {
        this.tusd = tusd;
    }

    public double getTe() {
        return te;
    }

    public void setTe(double te) {
        this.te = te;
    }
    
    
    public double subtracao (double leituraAtual, double leituraAnterior){
        double sub;
        sub = this.leituraAtual - this.leituraAnterior;
        return sub;
    }
    
    public double cobranca (double sub, double tusd, double te){
        double lima, limao, limoeiro, kiwi;
        limoeiro= sub*this.te;
        lima= sub*this.tusd;
        kiwi= (lima+limoeiro);
        limao=(kiwi*0.25)+kiwi;
        return limao;
    }
    
    public double verificaBandeira (double sub, double limao){
       double bandeira;
       String flag;
       
        if(sub<=100){
            flag = "verde";
            bandeira = 0;
        }
        else if(sub>=101 && sub<=150){
            flag= "amarela";
            bandeira = 0.01343;
            
        }
        else if (sub>150 && sub<=200){
            flag = "vermelho 1";
            bandeira= 0.04169;
          
        }
        else {
            flag = "vermelho 2";
            bandeira = 0.06243;
        }
    return bandeira;
    }
    
    public String nomeBandeira (double sub, double limao){
       double bandeira;
       String flag;
       
        if(sub<=100){
            flag = "verde";
            bandeira = 0;
        }
        else if(sub>=101 && sub<=150){
            flag= "amarela";
            bandeira = 0.01343;
            
        }
        else if (sub>150 && sub<=200){
            flag = "vermelho 1";
            bandeira= 0.04169;
          
        }
        else {
            flag = "vermelho 2";
            bandeira = 0.06243;
        }
    return flag;
    }
    
    public double finalPrice (double limao, double sub, double bandeira){
        double cereja, fruta, banana;
        cereja = sub*bandeira;
        fruta = limao+(cereja*0.25)+ cereja;
        return fruta;
    }
    
    public void conta (double leituraAnterior, double leituraAtual, double sub, double limao, String flag, double fruta){
        JOptionPane.showMessageDialog(null, "CONTA DE LUZ \n\n Leitura Anterior: " + this.leituraAnterior 
        + "\n Leitura Atual: " + this.leituraAtual + "\n Subtração: " + sub + "\n Valor com taxas: " +
                limao + "\n Bandeira: " + flag + "\n Valor a pagar: " + fruta);
    }
}
