<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Músicas</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h3><center><br/>Música</center></h3><br/>
            <center>
                <table border ="1">
                    <thead>
                        <tr>
                            <th>Índice</th>
                            <th>Nome</th>
                            <th>Gênero</th>
                            <th>Ano</th>
                            <th>Opções</th>
                        </tr>
                    </thead>
                    <% for (musica musica : dbMusica.getMusica()) {%>
                    <tbody
                        <tr>
                            <td><%=dbMusica.getMusica().indexOf(musica)%></td>
                            <td><%=musica.getNome()%></td>
                            <td><%=musica.getGenero()%></td>
                            <td><%=musica.getAno()%></td>
                            <td class="1"><a href="alterarMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">Alterar</a>
                                <a href="removerMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">Remover</a></td>
                        </tr>
                    
                    <%}%>
                    </tbody>
                </table>
            </center><br/><br/>       
            <a href="incluirMusica.jsp"><button class="btn-custom" type="button">Cadastrar</button></a>            
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
