<%-- 
    Document   : alterarDisco
    Created on : 12/09/2019, 21:24:31
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.disco" %>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    if (request.getParameter("Cancelar") != null) {
        response.sendRedirect("listaDeDiscos.jsp");
    }
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nomeDisco = request.getParameter("nomeDisco");
        String nomeGravadora = request.getParameter("nomeGravadora");
        String dataDisco = request.getParameter("dataDisco");
        dbDisco.getdisco().set(index, new disco("nomeDisco", "nomeGravadora", "dataDisco"));
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
            <h1><center>Alterar Disco</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%disco disco = dbDisco.getdisco().get(index);%>            
            <form>
                <center>
                    Índice:<br/>
                    <%=index%><br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    Nome Disco:<br/>
                    <input type="text" name="Nome Disco" value="<%=disco.getNomeDisco()%>"/><br/>
                    Nome Gravadora:<br/>
                    <input type="text" name="Nome Gravadora" value="<%=disco.getNomeGravadora()%>"/><br/>
                    Data Lançamento:<br/>
                    <input type="text" name="Data Lançamento" value="<%=disco.getDataDisco()%>"/><br/><br/>

                    <input type="submit" name="Cancelar" value ="Cancelar"/>  
                    <input type="submit" name="set" value="Alterar"/><br/>
                </center>
            </form>
            <%} catch (Exception ex) {%>
            <h3><center>Erro ao processar formulario</center></h3>
                    <%}%>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
