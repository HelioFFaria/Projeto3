<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("cancelar")!=null){
     response.sendRedirect("listaDeMusica.jsp");
 }
 if(request.getParameter("add")!=null){
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbMusica.getMusica().add(new musica(nome,genero,Ano));
     response.sendRedirect("listaDeMusicas.jsp");   
 }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir musica</title>
        
    </head>
    <body>
        <h1><center>Cadastro de musica</center></h1>
        <h2> <center>Incluir musica </center></h2>
        <form><center>
            Nome:<br/>
            <input type="text" name="Nome"/><br/>
            Genero:<br/>
            <input type="text" name="Genero"/><br/>
            Ano:<br/>
            <input type="text" name="Ano"/> <br/><br/>
            <input type="submit" name="add" value="Incluir"/><br/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/>      
             
            </center>   
        </form><br/><br/>              

    </body>
</html>
