<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("Cancelar") != null) {
        response.sendRedirect("listaDeMusicas.jsp");
    }
    if (request.getParameter("remove") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        dbMusica.getMusica().remove(index);
        response.sendRedirect("listaDeMusicas.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Música</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h4><center><br/>Remover Música</center></h4><br/>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <% musica musica = dbMusica.getMusica().get(index);%>
            <form>
                <div>
                    Indice:
                    <%=index%> 
                    <input type="hidden" name="index" value="<%=index%>"/>
                </div>
                <div>
                    Nome: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=musica.getNome()%></span>
                </div><br/>
                <div>
                    Gênero:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=musica.getGenero()%></span>
                </div><br/>
                <div>
                    Ano:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=musica.getAno()%></span>
                </div><br/><br/>

                <input class="btn-custom" type="submit" name="remove" value=" Remover"/><br/><br/>

            </form>
            <%} catch (Exception ex) {%>
            <h3> Erro ao processar formulario</h3>
            <%}%>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
