<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("listaDeMusica.jsp");
    }
    if (request.getParameter("add") != null) {
        String nome = request.getParameter("Nome");
        String genero = request.getParameter("Genero");
        String Ano = request.getParameter("Ano");
        dbMusica.getMusica().add(new musica(nome, genero, Ano));
        response.sendRedirect("listaDeMusicas.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Música</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">

    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1"><br/>
            <h4><center>Cadastro de musica</center></h4><br/>

            <form>
                <div>
                    Nome:<br/>
                    <input type="text" name="Nome"/>
                </div><br/>
                <div>
                    Genero:<br/>
                    <input type="text" name="Genero"/>
                </div><br/>
                <div>
                    Ano:<br/>
                    <input type="text" name="Ano"/> 
                </div><br/><br/>
                <input class="btn-custom" type="submit" name="add" value="Cadastrar"/><br/><br/>    
                </center>   
            </form><br/><br/> 
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>