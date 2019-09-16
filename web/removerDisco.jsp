<%-- 
    Document   : removerDisco
    Created on : 12/09/2019, 21:26:50
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.disco" %>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("Cancelar") != null) {
        response.sendRedirect("listaDeDiscos.jsp");
    }
    if (request.getParameter("remove") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        dbDisco.getdisco().remove(index);
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
            <h1><center>Remover Disco</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <% disco disco = dbDisco.getdisco().get(index);%>
            <form>
                <center>
                    Índice: <br/>
                    <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    Nome Disco:<br/>
                    <input type="text" name="nome" value="<%=disco.getNomeDisco()%>"/><br/>
                    Nome Gravadora:<br/>
                    <input type="text" name="nome" value="<%=disco.getNomeGravadora()%>"/><br/>
                    Data Lançamento:<br/>
                    <input type="text" name="nome" value="<%=disco.getDataDisco()%>"/><br/><br/>

                    <input type="submit" name="remove" value=" Remover"/><br/><br/>
                    <input type="submit" name="Cancelar" value ="Cancelar"/></center> 
            </form>
            <%} catch (Exception ex) {%>
            <h3><center>Erro ao processar formulário</center></h3>
                    <%}%>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>