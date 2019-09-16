<%-- 
    Document   : removerBanda
    Created on : 13/09/2019, 04:20:04
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.banda"%>
<%@page import="br.com.fatecpg.projeto3.dbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("Cancelar")!=null){
    response.sendRedirect("listaDeBandas.jsp");
}if(request.getParameter("remove")!= null){
    int index = Integer.parseInt(request.getParameter("index"));
    dbBanda.getBanda().remove(index);
    response.sendRedirect("listaDeBandas.jsp");
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Banda</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h4><center><br/>Remover Banda</center></h4><br/>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <% banda banda = dbBanda.getBanda().get(index);%>
            <form>
               
                <div>
                    Nome:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=banda.getNome()%></span>
                </div><br/>
                <div>
                    Genero:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=banda.getGenero()%></span>
                </div><br/>
                <div>
                    Ano:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color: #8219ab"><%=banda.getAno()%></span>
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
