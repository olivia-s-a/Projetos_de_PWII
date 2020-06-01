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
public class ClasseBanco {
    public int numConta;
    public int agencia;
    public String nome;
    private String senha;
    private double saldo;
    private boolean logado;

    public int getNumConta() {
        return numConta;
    }

    public void setNumConta(int numConta) {
        this.numConta = numConta;
    }

    public int getAgencia() {
        return agencia;
    }

    public void setAgencia(int agencia) {
        this.agencia = agencia;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public boolean isLogado() {
        return logado;
    }

    public void setLogado(boolean logado) {
        this.logado = logado;
    }
    
    public boolean logar (int agencia, int numConta, String senha){
        if (agencia == 1234 && numConta == 1 && "abc123".equals(senha)){
            this.logado = true;
           /* JOptionPane.showMessageDialog(null, "LOGADO!");
            JOptionPane.showMessageDialog(null, "Valor da variável logado: " + this.isLogado());*/
            
            atual(this.logado);
        }
        else{
           /* if(agencia != 1234){
                JOptionPane.showMessageDialog(null, "agencia" + agencia);
            }
            if(numConta != 1){
                JOptionPane.showMessageDialog(null, numConta);
            }
            if(senha != "abc123"){
                JOptionPane.showMessageDialog(null, senha);
            }*/
            JOptionPane.showMessageDialog(null, "DADOS INCORRETOS!");
            this.logado = false;
            
        }
        return this.logado;
    }
    
    public void atual (boolean logado){
        if (logado == true){
           
            int decisao1, errei=0;
 
            
            while(errei==0){
                
            decisao1  = Integer.parseInt(JOptionPane.showInputDialog(" Para ver o saldo digite 1. Para realizar um depósito digite 2. Para realizar um saque" +
                    " digite 3. Para sair 4"));
        
            switch (decisao1){
                case 1:
                    consultarSaldo(this.logado);
                    errei=1;
                    break;

                case 2:
                    depositar(Double.parseDouble(JOptionPane.showInputDialog("Você quer depositar quantos reais?")), this.logado);
                    errei=1;
                    break;
                    
                case 3:
                    sacar(Double.parseDouble(JOptionPane.showInputDialog("Quanto sacar?")), this.logado);
                    errei=1;
                  
                    break;  
                    
                    
                case 4:
                    JOptionPane.showMessageDialog(null, "Adeus"); 
                    errei=1;
                    System.exit(0);
                default:
                    JOptionPane.showMessageDialog(null, "Escolhe é 1, 2, 3, 4. Só."); 
                    break;
            }
            }
        }
    }
        
    public void sacar (double menosmoney, boolean logado){
       if (this.saldo>= menosmoney){              
               this.saldo = this.saldo - menosmoney;
       }
       else{
            JOptionPane.showMessageDialog(null, "Você não tem essa quantidade para realizar o saque");
        }
        
        int erro=0;
         
         while(erro ==0){
            String d2 = JOptionPane.showInputDialog("Deseja realizar outra operação? (S/N)");
                    
                    switch (d2){
                        case "S":
                            atual(this.logado);
                            erro =1;
                            break;
                            
                        case "N":
                            JOptionPane.showMessageDialog(null, "Adeus");
                            erro =1;
                            System.exit(0);
                            break;
                            
                        default: 
                            JOptionPane.showMessageDialog(null, "É só S ou N");
                            break;
                    }
         }
        
    }
    
    public void depositar (double paradep, boolean logado){
                    this.saldo = this.saldo + paradep;
                
                    
                  int erro=0;
         
         while(erro ==0){
            String d2 = JOptionPane.showInputDialog("Deseja realizar outra operação? (S/N)");
                    
                    switch (d2){
                        case "S":
                            atual(this.logado);
                            erro =1;
                            break;
                            
                        case "N":
                            JOptionPane.showMessageDialog(null, "Adeus");
                            erro =1;
                            System.exit(0);
                            break;
                            
                        default: 
                            JOptionPane.showMessageDialog(null, "É só S ou N");
                            break;
                    }
         }
        
    }
    
    public void consultarSaldo (boolean logado){
         JOptionPane.showMessageDialog(null, "Saldo atual: R$" + getSaldo());
                    
         int erro=0;
         
         while(erro ==0){
            String d2 = JOptionPane.showInputDialog("Deseja realizar outra operação? (S/N)");
                    
                    switch (d2){
                        case "S":
                            atual(this.logado);
                            erro =1;
                            break;
                            
                        case "N":
                            JOptionPane.showMessageDialog(null, "Adeus");
                            erro =1;
                            System.exit(0);
                            break;
                            
                        default: 
                            JOptionPane.showMessageDialog(null, "É só S ou N");
                            break;
                    }
         }
    }
    
}
