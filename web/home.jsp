<%-- 
    Document   : home
    Created on : 12/09/2019, 21:04:32
    Author     : helio
--%>
<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page import="br.com.fatecpg.projeto3.dbBanda"%>
<%@page import="br.com.fatecpg.projeto3.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body style="background-color: #EBEBEB !important;">
        <div>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </div>
        <div style="background-color: #FFF">
            <div class="container1"><br/><br/><br/>  
                <div class="row">
                    <div class="col sbase">
                        <img src="img/alex.png" class="avatar"/><br/>
                        <p class="a"><span>Alex Vaz</span><br/>
                        INTERFACE</p>
                    </div>
                    <div class="col sbase">
                        <img src="img/helio.png" class="avatar"/><br/>
                        <p class="a"><span>Helio Faria</span><br/>
                            MÚSICAS</p>
                    </div>
                    <div class="col sbase">                   
                        <img src="img/julio.png" class="avatar"/><br/>
                        <p class="a"><span>Julio Takeda</span><br/>
                            ÁLBUNS</p>
                    </div>
                    <div class="col sbase">
                        <img src="img/thales.png" class="avatar"/><br/>
                        <p class="a"><span>Tales Parisotto</span><br/>
                            BANDAS</p>
                    </div> 
                </div>
            </div>
        </div><br/><br/><br/>
        <div class="container1">
            <div class="row">
                <div class="col module-border-wrap sbase" ><br/>
                    <a href="listaDeMusicas.jsp">
                            <img src="img/musica.png" class="avatar1"/><br/>
                    </a>
                    <p class="a"><span>Músicas disponíveis</span><br/>
                        <%=dbMusica.getMusica().size()%></p>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col module-border-wrap sbase"><br/>
                    <a href="listaDeDiscos.jsp">
                        <img src="img/album.png" class="avatar1"/><br/>
                    </a>
                    <p class="a"><span>Álbuns disponíveis</span><br/>
                        <%=dbDisco.getdisco().size()%></p>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col module-border-wrap sbase"><br/>
                    <a href="listaDeBandas.jsp">
                        <img src="img/banda.png" class="avatar1"/><br/>
                    </a>
                    <p class="a"><span>Bandas disponíveis</span><br/>
                        <%=dbBanda.getBanda().size()%></p>
                </div>
            </div><br/><br/><br/>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>

