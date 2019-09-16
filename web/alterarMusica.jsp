<%@page import="br.com.fatecpg.projeto3.musica"%>
<%@page import="br.com.fatecpg.projeto3.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("Cancelar")!=null){
     response.sendRedirect("listaDeMusica.jsp");
 }
 if(request.getParameter("set")!=null){
     int index = Integer.parseInt(request.getParameter("index"));
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbMusica.getMusica().set(index, new musica(nome,genero,Ano));
     response.sendRedirect("listaDeMusica.jsp");   
 }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar musica</title>
    </head>
    <body>
        <h1><center>Alterar musica</center></h1>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%musica musica = dbMusica.getMusica().get(index);%>            
        <form><center>
            <br>
           Indice: <br/>
           <%=index%> <br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           Nome:<br/>
           <input type="text" name="Nome" value=" <%=musica.getNome()%>"/><br/>
           Genero:<br/>
           <input type="text" name="Genero" value="<%=musica.getGenero()%>"/><br/>
           Ano:<br/>
           <input type=" text" name="Ano" value="<%=musica.getAno()%>"/><br/><br/>
           
           <input type="submit" name="set" value="Alterar"/><br/><br/>
           <input type="submit" name="Cancelar" value ="Cancelar"/>  
           
            </center>      
        </form>
           <%}catch(Exception ex){%>
        <h3> Erro ao processar formulario</h3>
        <%}%>
        
    </body>
</html>

