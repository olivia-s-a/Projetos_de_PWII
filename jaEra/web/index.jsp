<%-- 
    Document   : index
    Created on : 05/10/2020, 13:14:08
    Author     : olivi
--%>

<%@page import="java.sql.*"%> <%--<%@page import="java.sql.Connection"%> --> e pq mudou? Pra não ter que importar todas as vezes que for usar um método diferente--%>
<%@page import="config.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    //Connection conexao = null; Este pode ser apagado, pois agora há uma classe java chamada Conexao.java, dentro de config, que fará este trabalho para nós
    Statement statamento = null;
    ResultSet resultado = null;
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Ninguém Virou Jantar</h1>
        
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="text"  name="usuario" class="form-control">
            </div>
            <div class="form-group">
                <label for="exampleInputSenha">Senha</label>
                <input type="password"  name="senha" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Logar</button>
        </form>
            
        
            <p class="text-muted mt-4">
                <%
                    String user = request.getParameter("usuario");
                    String pass = request.getParameter("senha");
                    String nomeUsuario="";
                    String usuario ="";
                    String senha = "";
                    String nivel="";
                    int i=0;
                    
                    
            
                    try{
                      //   Class.forName("com.mysql.jdbc.Driver"); Esta e a linha de baixo podem ser apagadas pq já têm no config/Conexao.java
                        // conexao = DriverManager.getConnection("jdbc:mysql://localhost/aula_java?user=root&password=");
                         statamento= new Conexao().conectar().createStatement();
                         resultado=statamento.executeQuery("SELECT * FROM usuarios WHERE email = '"+user+"' and senha = '"+pass+"' ");
                         while (resultado.next()){
                           //  out.println(resultado.getString(2) + " / ");
                           usuario = resultado.getString(3);
                           senha = resultado.getString(4);
                           nomeUsuario = resultado.getString(2);
                           nivel = resultado.getString(5);
                           resultado.last();
                           i =resultado.getRow();
                           
                         }

                     }
                     catch (Exception e) {
                         out.println(e);
                     }
                    
                     if((user == null) || (pass ==  null)){
                         out.println("PREENCHA OS DADOS");
                         
                     }
                     else{
                         if(i>0){
                           //out.println("LOGADO COM SUCESSO");
                           session.setAttribute("nomeUsuario", nomeUsuario);
                           session.setAttribute("nivel", nivel);
                           response.sendRedirect("usuario.jsp");  
                           
                         }
                         else {
                             out.println("DADOS INCORRETOS");
                         }
                     }



            
            
        
        %>
                
            </p>
        
        </div>
    </body>
</html>
