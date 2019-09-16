<%-- 
    Document   : alterarBanda
    Created on : 12/09/2019, 21:27:13
    Author     : helio
--%>


<%@page import="br.com.fatecpg.projeto3.banda"%>
<%@page import="br.com.fatecpg.projeto3.dbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("Cancelar")!=null){
     response.sendRedirect("listaDeBandas.jsp");
 }
 if(request.getParameter("set")!=null){
     int index = Integer.parseInt(request.getParameter("index"));
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbBanda.getBanda().set(index, new banda(nome,genero,Ano));
     response.sendRedirect("listaDeBandas.jsp");   
 }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Banda</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="container1">
            <h1><center>Alterar Banda</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%banda banda = dbBanda.getBanda().get(index);%>            
            <form>
                <center>
                    <br>
                    Indice: <br/>
                    <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    Nome:<br/>
                    <input type="text" name="Nome" value=" <%=banda.getNome()%>"/><br/>
                    Genero:<br/>
                    <input type="text" name="Genero" value="<%=banda.getGenero()%>"/><br/>
                    Ano:<br/>
                    <input type=" text" name="Ano" value="<%=banda.getAno()%>"/><br/><br/>

                    <input type="submit" name="set" value="Alterar"/><br/><br/>
                    <input type="submit" name="Cancelar" value ="Cancelar"/>  

                </center>      
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

