<%-- 
    Document   : restrita
    Created on : 13/10/2020, 12:34:37
    Author     : olivi
--%>
<%@page import="java.sql.*"%>
<%@page import="config.Conexao"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
        <title>Projeto JAVA WEB</title>
    </head>
    <body>
        
        <%--
            String usuarioSessao = (String) session.getAttribute("usuarioSessao");
                    out.println("Olá: &nbsp; <b> " + usuarioSessao + "</b>&nbsp;");
                    out.println("<hr>");
                    if(usuarioSessao == null){
                        response.sendRedirect("index.jsp");
                    }
        --%>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Lista de Usuários</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <!--<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>-->
                    </li>
                    <!--COM BASE NO COISO DO BARBO-->
                </ul>
                    <!--COM BASE NO COISO DO BARBO-->
                   <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>-->
                <form class="form-inline my-2 my-lg-0">
                    <%--
                    String usuarioSessao = (String) session.getAttribute("usuarioSessao");
                    out.println("Olá: &nbsp; <b> " + usuarioSessao + "</b>&nbsp;");
                    out.println("<hr>");
                    if(usuarioSessao == null){
                        response.sendRedirect("index.jsp");
                    }
                    
                    %>--%>
                    <!--COM BASE NO COISO DO BARBO-->
                    <%--
                        out.println("Olá " + usuarioSessao + " &nbsp;");
                    --%>
                    <!--COM BASE NO COISO DO BARBO-->
                    
                    <a href="logout.jsp">
                        <input type="button" class="btn btn-outline-danger my-2 my-sm-0" value="SAIR" />
                    </a>
                </form>
            </div>
        </nav>
                    <div class="container">
                        <div class="row mt-4 mb-4">
                            <button type="button" class="btn-info" data-toggle="modal" data-target="#modalInserir">Novo Usuário</button>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" name="txtbuscar" placeholder="Digite um nome" aria-label="Search">
                                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar</button>
                            </form>
                        </div>
                            
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Nível</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Statement statamento = null;
                                    ResultSet resultado = null;
                                    String id_usuario = "";
                                    String nome_usuario= "";
                                    String email_usuario ="";
                                    String senha_usuario="";
                                    String nivel_usuario="";
                                    

                                     try{
                                         statamento = new Conexao().conectar().createStatement();
                                         resultado = statamento.executeQuery("SELECT * FROM  usuarios");
                                         while (resultado.next()){
                                             %>
                                            <tr>
                                                <td><%=resultado.getString(1)%></td>
                                                <td><%=resultado.getString(2)%></td>
                                                <td><%=resultado.getString(3)%></td>
                                                
                                                <td><%=resultado.getString(5)%></td>
                                            </tr>
                                            <%
                                         }
                                     }
                                     catch(Exception e){
                                         out.println(e);
                                         
                                     }
                                %>
                                    
                                
                            </tbody>
                        </table>
                    </div>
                                
                               </body>
</html>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <form>
      <div class="modal-body">
        
          <div class="form-group">
            <label for="nome">Nome</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="senha">Senha</label>
            <input type="password" class="form-control" id="exampleInputPassword1">
          </div>
          
          <div class="form-group">
              <label for="nivel">Nível</label>
              <select class="form-control" name="nivel" id="nivel">
                 <option value="comum">Comum</option>
                 <option value="adm">Administrador</option>
              </select>
          </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
              <button type="submit" class="btn-salvar">Salvar</button>
            </div>
        </form>

    </div>
  </div>
</div>
    
    <%
        if(request.getParameter("btn-salvar")!=null){
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String nivel = request.getParameter("nivel");
            
            
            
            try{
                statamento = new Conexao().conectar().createStatement();
                // Aqui vai o select -> executeQuery
                
                resultado = statamento.executeQuery("SELECT * FROM usuario WHERE email = '"+email+"' ");
                while (resultado.next()){
                    resultado.getRow();
                    if (resultado.getRow()>0){
                        out.print("<script>alert('Usuário já cadastrado');</script>");
                        return;
                    }
                }
                
                //
                statamento.executeUpdate("INSERT INTO usuarios (nome, email, senha, nivel)VALUES ('"+nome+"', '"+email+"', '"+senha+"', '"+nivel+"')");
                response.sendRedirect("restrita.jsp");
            }
            
            catch (Exception e) {
                out.println(e);
            }
        }
    %>