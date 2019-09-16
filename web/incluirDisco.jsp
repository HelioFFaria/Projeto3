<%-- 
    Document   : incluirDisco
    Created on : 12/09/2019, 21:25:23
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.disco" %>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("listaDeDiscos.jsp");
    }
    if (request.getParameter("add") != null) {
        String nomeDisco = request.getParameter("nomeDisco");
        String nomeGravadora = request.getParameter("nomeGravadora");
        String dataDisco = request.getParameter("dataDisco");
        dbDisco.getdisco().add(new disco(nomeDisco, nomeGravadora, dataDisco));
        response.sendRedirect("listaDeDiscos.jsp");
    }
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div>
            <h1><center>Incluir Disco</center></h1>
            <form>
                <center>

                    Nome:<br/>
                    <input type="text" name="nomeDisco"/><br/>
                    Gravadora:<br/>
                    <input type="text" name="nomeGravadora"/><br/>
                    Data Lançamento:<br/>
                    <input type="text" name="dataDisco"/><br/></br>
                    <input type="submit" name="cancelar" value="Cancelar"/><br/></br>
                    <input type="submit" name="add" value="Incluir"/>
                </center>
            </form>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
