<%-- 
    Document   : usuario
    Created on : 13/10/2020, 12:10:46
    Author     : olivi
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuário</h1>
        <%
            String nome = (String) session.getAttribute("nomeUsuario");
            out.println(nome);
            String level = (String) session.getAttribute("nivel");
            out.println(" || " + level);
            
          
                
          
            
            
            if (nome==null){
                response.sendRedirect("index.jsp");
           
            }      

           if (level.equals("adm")){
                %>
                <br>
                <a href="restrita.jsp">Ir para restrita</a>
                
                <%
            }
        %>
        <br>
        <a href="logout.jsp">Sair</a>
    </body>
</html>
