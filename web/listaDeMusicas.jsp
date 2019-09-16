<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Músicas</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h1><center>Musica</center></h1>
            <center>
                <table border ="1">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>Genero</th>
                        <th>Ano</th>
                        <th>Opções</th>
                    </tr>
                    <% for (musica musica : dbMusica.getMusica()) {%>
                    <tr>
                        <td><%=dbMusica.getMusica().indexOf(musica)%></td>
                        <td><%=musica.getNome()%></td>
                        <td><%=musica.getGenero()%></td>
                        <td><%=musica.getAno()%></td>
                        <td><a href="alterarMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">Alterar</a>
                        <a href="removerMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">Remover</a></td>

                    </tr>
                    <%}%>
                </table>
            </center>
            <center> <br/><br/>         
                <h3> <a href="home.jsp">Home</a> </h3>
                <h3><a href="incluirMusica.jsp">Incluir</a> </h3>             
            </center>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
