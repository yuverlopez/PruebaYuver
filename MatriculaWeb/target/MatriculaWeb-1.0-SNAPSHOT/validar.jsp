<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="dto.Usuario"%>
<%
    String logi= request.getParameter("logi");
    String pass= request.getParameter("pass");
    
    Usuario usu= new Usuario("",logi,pass);
    
    UsuarioDAO usuDAO= new UsuarioDAO();
    usu=usuDAO.existeConLoginYPass(usu);
    String resultado;
    if(usu!=null){
        Gson gson= new GsonBuilder().create();
        resultado="{\"data\":[" +gson.toJson(usu)+"]}";
        out.print(resultado.trim());
    }
    else{
        resultado="{\"data\":}";
        out.print(resultado.trim());
    }
%>