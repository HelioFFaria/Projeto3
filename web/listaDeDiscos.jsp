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
        <title>Álbuns</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <center><br/>
                    <h3>Álbuns</h3><br/>
                <table border ="1">
                    <thead>
                    <tr>
                        <th>Índice</th>
                        <th>Disco</th>
                        <th>Gravadora</th>
                        <th>Data Lançamento</th>
                        <th>Opções</th>
                    </tr>
                    </thead>
                    <% for (disco disco : dbDisco.getdisco()) {%>
                    <tbody
                    <tr>
                        <td><%=dbDisco.getdisco().indexOf(disco)%></td>
                        <td><%=disco.getNomeDisco()%></td>
                        <td><%=disco.getNomeGravadora()%></td>
                        <td><%=disco.getDataDisco()%></td>
                        <td class="1"><a href="alterarDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Alterar</a>
                        <a href="removerDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">Remover</a></td>
                    </tr>
                    <%}%>
                    </tbody>
                </table>
                
            </center><br/><br/>
            <a href="incluirDisco.jsp"><button class="btn-custom" type="button">Cadastrar</button></a>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
