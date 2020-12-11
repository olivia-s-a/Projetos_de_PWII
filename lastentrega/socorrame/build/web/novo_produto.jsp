<%-- 
    Document   : novo_produto
    Created on : 10/12/2020, 23:17:09
    Author     : olivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="config.Conexao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Produto</title>
        
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
				<h3>Novo produto</h3>
				
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" id="nome" name= "nome" class="form-control" placeholder="n o m e">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" id="preco" name="preco" class="form-control" placeholder="p r e ç o">
					</div>
                                    
                                        <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" id="estoque" name="estoque" class="form-control" placeholder="q u a n t i d a d e   e m   e s t o q u e">
					</div>

                                        <div class="form-group">
                                            <button type="submit" name="btn-salvar" class="btn float-right login_btn btn-primary">Salvar</button>
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
    
    <%
        if(request.getParameter("btn-salvar")!=null){
            String nome = request.getParameter("nome");
            String preco = request.getParameter("preco");
            String estoque = request.getParameter("estoque");
            
            try{
                st= new Conexao().conectar().createStatement();
                
                rs= st.executeQuery("SELECT * FROM produto WHERE nome = '" + nome + "' ");
                while (rs.next()){
                    rs.getRow();
                    if(rs.getRow()>0){
                        out.print("<script> alert('Produto já cadastrado');</script>");
                        return; 
                    }
                }
                
                st.executeUpdate("INSERT INTO produto (nome, valor_uni, estoque) " + "VALUES ('" + nome + "', '" 
                    + preco + "', '" + estoque + "')");
                response.sendRedirect("index.jsp");
                
                
            }
            
            catch (Exception e){
                out.println(e);
                
            }
        }
       
   %>
</body>
</html>
    </body>
</html>
