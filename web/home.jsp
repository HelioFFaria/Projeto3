<%-- 
    Document   : home
    Created on : 12/09/2019, 21:04:32
    Author     : helio
--%>



<%@page import="br.com.fatecpg.projeto3.dbDisco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    <%@include file="WEB-INF/jspf/header.jspf"%>
    </head>
    <body><center>
        <h1>Listas</h1>
        <a href="listaDeBandas.jsp">Lista de Bandas</a><br/><br/>
        <a href="listaDeDiscos.jsp">Lista de Discos</a><br/><br/>
        <a href="listaDeMusicas.jsp">Lista de Músicas</a><br/><br/><br/><br/><br/>
        
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body></center>
</html>
