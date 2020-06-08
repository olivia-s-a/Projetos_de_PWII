/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estacionamento;

import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author olivi
 */
public class DadosEstaciona {
    public String placa;
    public String modelo;
    public double horaEntrada;
    public double minEntrada;
    public double horaSaida;
    public double minSaida;
    private double preco;

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public double getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(double horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public double getMinEntrada() {
        return minEntrada;
    }

    public void setMinEntrada(double minEntrada) {
        this.minEntrada = minEntrada;
    }

    public double getHoraSaida() {
        return horaSaida;
    }

    public void setHoraSaida(double horaSaida) {
        this.horaSaida = horaSaida;
    }

    public double getMinSaida() {
        return minSaida;
    }

    public void setMinSaida(double minSaida) {
        this.minSaida = minSaida;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public double subtracao (double horaEntrada, double minEntrada, double horaSaida, double minSaida){
        
        double totalEntrada = this.horaEntrada + (this.minEntrada/60);
        double totalSaida=this.horaSaida + (this.minSaida/60);
        double resultado= totalSaida-totalEntrada;  
        return resultado;
    }
   
    public double arredondar(double resultado){
      double arren = Math.ceil(resultado);
      return arren;
    }
    
    public double precofinal (double arren, double preco){
        double socorro = preco*arren;
        return socorro;        
    }
}
