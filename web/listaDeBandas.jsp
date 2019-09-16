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
        <title>Bandas</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h3><center><br/>Bandas</center></h3><br/>
            <center><table border ="1">
                    <thead
                        <tr>
                            <th>Índice</th>
                            <th>Nome</th>
                            <th>Gênero</th>
                            <th>Ano</th>
                            <th>Opções</th>
                        </tr>
                    </thead>
                    <% for (banda banda : dbBanda.getBanda()) {%>
                    <tbody>
                        <tr>
                            <td><%=dbBanda.getBanda().indexOf(banda)%></td>
                            <td><%=banda.getNome()%></td>
                            <td><%=banda.getGenero()%></td>
                            <td><%=banda.getAno()%></td>
                            <td class="1"><a href="alterarBanda.jsp?index=<%=dbBanda.getBanda().indexOf(banda)%>">Alterar</a>
                                <a href="removerBanda.jsp?index=<%=dbBanda.getBanda().indexOf(banda)%>">Remover</a></td>

                        </tr>
                    
                    <%}%>
                    </tbody>
                </table></center><br/><br/>      
            <a href="incluirBanda.jsp"><button class="btn-custom" type="button">Cadastrar</button></a>             
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
