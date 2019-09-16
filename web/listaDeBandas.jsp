<%-- 
    Document   : listaDeBandas
    Created on : 12/09/2019, 21:07:00
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.banda"%>
<%@page import="br.com.fatecpg.projeto3.dbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Bandas</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h1><center>Bandas</center></h1>
            <center><table border ="1">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>Genero</th>
                        <th>Ano</th>
                        <th>Opções</th>
                    </tr>
                    <% for (banda banda : dbBanda.getBanda()) {%>
                    <tr>
                        <td><%=dbBanda.getBanda().indexOf(banda)%></td>
                        <td><%=banda.getNome()%></td>
                        <td><%=banda.getGenero()%></td>
                        <td><%=banda.getAno()%></td>
                        <td><a href="alterarBanda.jsp?index=<%=dbBanda.getBanda().indexOf(banda)%>">Alterar</a>
                        <a href="removerBanda.jsp?index=<%=dbBanda.getBanda().indexOf(banda)%>">Remover</a></td>

                    </tr>
                    <%}%>

                </table></center>
            <center> <br/><br/>         
                <h3> <a href="home.jsp">Home</a> </h3>
                <h3><a href="incluirBanda.jsp">Incluir</a> </h3>             
            </center>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
