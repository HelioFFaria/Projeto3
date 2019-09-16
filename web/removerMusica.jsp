<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("Cancelar")!=null){
    response.sendRedirect("listaDeMusicas.jsp");
}if(request.getParameter("remove")!= null){
    int index = Integer.parseInt(request.getParameter("index"));
    dbMusica.getMusica().remove(index);
    response.sendRedirect("listaDeMusicas.jsp");
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover musica</title>
    </head>
    <body>
        <h1><center>Remover musica</center></h1>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <% musica musica = dbMusica.getMusica().get(index);%>
        <form><center>
           Indice: <br/>
           <%=index%> <br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           Nome:<br/>
            <input type="text" name="nome" value="<%=musica.getNome()%>"/><br/>
           Genero:<br/>
            <input type="text" name="nome" value="<%=musica.getGenero()%>"/><br/>
           Ano:<br/>
            <input type="text" name="nome" value="<%=musica.getAno()%>"/><br/><br/>
           
           <input type="submit" name="remove" value=" Remover"/><br/><br/>
           <input type="submit" name="Cancelar" value ="Cancelar"/>
           
            </center>        
        </form>
           <%}catch(Exception ex){%>
        <h3> Erro ao processar formulario</h3>
        <%}%>

       
    </body>
</html>
