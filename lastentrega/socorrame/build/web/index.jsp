<%-- 
    Document   : index
    Created on : 10/12/2020, 01:38:48
    Author     : olivi
--%>

<%@page import="java.sql.*"%>
<%@page import="config.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
       
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <title>Produtos</title>
        
        <%
         
            
            
        %>
    </head>
    <body>
        <h1>Lojinha Barro!</h1>
        <%
          //  con = DriverManager.getConnection("jdbc:mysql://localhost/produtos_pwii?user=root&password=");
            //st=con.createStatement();
            //rs=st.executeQuery("");
        %>
        
       <div class="container">
                        <div class="row mt-4 mb-4">
                            <a href="novo_produto.jsp">
                                <input type="button" class="btn-info" value="Cadastrar Produto" />
                            </a>
                            <form class="form-inline my-2 my-lg-0" method="post">
                                <input class="form-control mr-sm-2" type="search" name="txtbuscar" placeholder="Digite um nome" aria-label="Search">
                                <button class="btn btn-outline-info my-2 my-sm-0" type="submit" name="btn_buscar">Buscar</button>
                            </form>
                        </div>
                            
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">Preço</th>
                                    <th scope="col">Quantidade no Estoque</th>
                                    <th scope="col">Ações</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Statement st = null;
                                    ResultSet rs = null;
                                    
                                    try{
                                         st = new Conexao().conectar().createStatement();
                                         if (request.getParameter("btn_buscar")!=null){
                                             String busca = '%' + request.getParameter("txtbuscar") + '%';
                                             rs = st.executeQuery("SELECT * FROM produto WHERE nome LIKE '" + busca + "' ");
                                         }
                                         else{
                                             rs=st.executeQuery("SELECT * FROM produto ");
                                         }
                                         
                                         while (rs.next()){
                                             %>
                                             <tr>
                                                 <td><%= rs.getString(1)%></td>
                                                 <td><%= rs.getString(2)%></td>
                                                 <td><%= rs.getString(3)%></td>
                                                 <td><%= rs.getString(4)%></td>
                                                 <td>
                                                     <a href="index.jsp?funcao=excluir&id=<%= rs.getString(1)%>" class="btn btn-outline-info my-2 my-sm-0 btn-danger">Excluir</a>
                                                     <a href="atualizar.jsp?funcao=atualizar&id=<%= rs.getString(1)%>" class="btn btn-outline-info my-2 my-sm-0 btn-secondary">Alterar</a>
                                                     
                                                 </td>
                                             </tr> 
                                         
                                          <%
                                     }
                                }
                                     catch(Exception e){
                                         out.println(e);
                                         
                                     }
                                %>
                                
                                <%
                    if (request.getParameter("funcao")!= null && request.getParameter("funcao").equals("excluir")){
                        String id=request.getParameter("id");
                        try{
                            st = new Conexao().conectar().createStatement();
                            st.executeUpdate("DELETE FROM produto WHERE id = '" + id + "' ");
                            response.sendRedirect("index.jsp");
                        
                        }
                        catch (Exception e){
                            out.println(e);
                            
                        }
                    }
                
                %>
                                    
                                
                            </tbody>
                        </table>
                    </div>
                                
                
    </body>
</html>
