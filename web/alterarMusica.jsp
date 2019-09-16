<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("Cancelar") != null) {
        response.sendRedirect("listaDeMusicas.jsp");
    }
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("Nome");
        String genero = request.getParameter("Genero");
        String Ano = request.getParameter("Ano");
        dbMusica.getMusica().set(index, new musica(nome, genero, Ano));
        response.sendRedirect("listaDeMusicas.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Música</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h4><center><br/>Alterar Música</center></h4><br/>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%musica musica = dbMusica.getMusica().get(index);%>            
            <form>
                <div>
                    Indice: <br/>
                    <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                </div>
                <div> 
                    Nome:<br/>
                    <input type="text" name="Nome"  required style="color: #8219ab; padding: 5px;" value="<%=musica.getNome()%>"/>
                </div><br/>
                <div>
                    Gênero:<br/>
                    <input type="text" name="Genero" required style="color: #8219ab; padding: 5px;" value="<%=musica.getGenero()%>"/>
                </div><br/>
                <div>
                    Ano:<br/>
                    <input type=" text" name="Ano" required style="color: #8219ab; padding: 5px;" value="<%=musica.getAno()%>"/>
                </div><br/><br/>

                <input class="btn-custom" type="submit" name="set" value="Alterar"/><br/><br/>


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

