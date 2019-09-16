<%-- 
    Document   : listaDeDiscos
    Created on : 12/09/2019, 21:09:23
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.disco"%>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <center>
                <h1>Lista de Discos</h1>
                <table border ="1">
                    <tr>
                        <th>Índice</th>
                        <th>Disco</th>
                        <th>Gravadora</th>
                        <th>Data Lançamento</th>
                        <th>Opções</th>
                    </tr>
                    <% for (disco disco : dbDisco.getdisco()) {%>
                    <tr>
                        <td><%=dbDisco.getdisco().indexOf(disco)%></td>
                        <td><%=disco.getNomeDisco()%></td>
                        <td><%=disco.getNomeGravadora()%></td>
                        <td><%=disco.getDataDisco()%></td>
                        <td><a href="alterarDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Alterar</a>
                        <a href="removerDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Remover</a></td>
                    </tr>
                    <%}%>
                </table>
                <br/>
                <a href="incluirDisco.jsp">Incluir Disco</a>
                <a href="home.jsp"><h3>Home</h3></a>
            </center>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
