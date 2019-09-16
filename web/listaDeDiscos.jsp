<%-- 
    Document   : listaDeDiscos
    Created on : 12/09/2019, 21:09:23
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.disco" %>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Discos</title>
    </head>
    <body><center>
        <h1>Lista de Discos</h1>
        <table border ="1">
            <tr>
                <th>Índice</th>
                <th>Disco</th>
                <th>Gravadora</th>
                <th>Data Lançamento</th>
            </tr>
            <% for(disco disco: dbDisco.getdisco()){%>
            <tr>
                <td><%=dbDisco.getdisco().indexOf(disco)%></td>
                <td><%=disco.getNomeDisco()%></td>
                <td><%=disco.getNomeGravadora()%></td>
                <td><%=disco.getDataDisco()%></td>
            </tr>
            <%}%>
        </table>
        <a href="incluirDisco.jsp"><h3>Incluir Disco</h3></a>
        <a href="alterarDisco.jsp"><h3>Alterar Disco</h3></a>
        <a href="removerDisco.jsp"><h3>Remover Disco</h3></a><br/>
        <a href="home.jsp"><h2>Home</h2></a><br/>
    </body></center>
</html>
