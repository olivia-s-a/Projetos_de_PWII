<%-- 
    Document   : atualizar
    Created on : 11/12/2020, 03:54:37
    Author     : olivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="config.Conexao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar</title>
        
        <%
            Statement st = null;
            ResultSet rs = null;
        %>
    </head>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="css.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
                            <%
        int id_novo;
        String nome_novo="";
        String preco_novo="";
        String estoque_novo = "";   
      
      
            id_novo =Integer.parseInt(request.getParameter("id"));
            try{
                 st = new Conexao().conectar().createStatement();
                 rs= st.executeQuery("SELECT * FROM produto WHERE id= '" + id_novo   + "'");
                       
                 while (rs.next()){
                       nome_novo = rs.getString(2);
                      preco_novo = rs.getString(3);
                      estoque_novo= rs.getString(4);
                                                      
                }                     
                        }
                        catch (Exception e){
                            out.println(e);
                            
                        }
                    
                
                %>
				<h3>Atualizar Produto</h3>
				
			</div>
			<div class="card-body">
				<form action="" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" name= "nome" value="<%=nome_novo %>" class="form-control" placeholder="n o m e">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" name="preco" value="<%=preco_novo %>" class="form-control" placeholder="p r e ç o">
					</div>
                                    
                                        <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" name="estoque" value="<%=estoque_novo %>" class="form-control" placeholder="q u a n t i d a d e   e m   e s t o q u e">
					</div>

                                        <div class="form-group">
                                            <button type="submit" name="btn-atualizar" class="btn float-right login_btn btn-primary">Atualizar</button>
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a href="index.jsp">Voltar</a>
				</div>
			</div>
		</div>
	</div>
</div>
                                       
				
			
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a href="index.jsp">Voltar</a>
				</div>
			</div>


    
    <%
        if(request.getParameter("btn-atualizar")!=null){
            int id = id_novo;
            String nome = request.getParameter("nome");
            String preco = request.getParameter("preco");
            String estoque = request.getParameter("estoque");
            double p = Double.parseDouble(preco);
            int est = Integer.parseInt(estoque);
                      
            try{
                st = new Conexao().conectar().createStatement();
               st.executeUpdate ("UPDATE produto SET nome = '" + nome + "', preco = '" + p + "', estoque = '" 
                        + est + "' WHERE id = '"+ id + "' ");
                response.sendRedirect("index.jsp");
            }
            
            catch (Exception e){
                out.println(e);
                
            }
        }
       
   %>
                                        
       
    
    
</body>
</html>
    
