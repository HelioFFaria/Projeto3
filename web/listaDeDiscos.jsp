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
                <th>Alterar Disco</th>
                <th>Remover Disco</th>
                <th>Incluir Disco</th>
            </tr>
            <% for(disco disco: dbDisco.getdisco()){%>
            <tr>
                <td><%=dbDisco.getdisco().indexOf(disco)%></td>
                <td><%=disco.getNomeDisco()%></td>
                <td><%=disco.getNomeGravadora()%></td>
                <td><%=disco.getDataDisco()%></td>
                <td><a href="alterarDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Alterar Disco</a></td>
                <td><a href="removerDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Remover Disco</a></td>
                <td><a href="incluirDisco.jsp">Incluir Disco</a></td>
            </tr>
            <%}%>
        </table>
        <br/>
        <a href="home.jsp"><h3>Home</h3></a>
    </body></center>
</html>
