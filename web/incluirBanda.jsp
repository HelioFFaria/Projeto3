<%-- 
    Document   : incluirBanda
    Created on : 13/09/2019, 04:18:24
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.banda"%>
<%@page import="br.com.fatecpg.projeto3.dbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("cancelar")!=null){
     response.sendRedirect("listaDeBandas.jsp");
 }
 if(request.getParameter("add")!=null){
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbBanda.getBanda().add(new banda(nome,genero,Ano));
     response.sendRedirect("listaDeBandas.jsp");   
 }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Banda</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h1><center>Cadastro de Banda</center></h1>
            <h2> <center>Incluir Banda </center></h2>
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
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
