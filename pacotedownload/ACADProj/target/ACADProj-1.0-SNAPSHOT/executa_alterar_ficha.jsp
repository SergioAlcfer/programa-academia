<%@page import="dao.FichaDAO"%>
<%@page import="model.Ficha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Alterar Ficha</title>
    </head>
    <body>
        <%
            try {
                Ficha fich = new Ficha();
                FichaDAO prd = new FichaDAO();
                if(request.getParameter("id_Ficha").equals("")||request.getParameter("id_Ficha").equals("")){
                    response.sendRedirect("index.html");
                }else{
                    fich.setId_Ficha(Integer.parseInt(request.getParameter("id_Ficha")));
                    fich.setId_Aluno(Integer.parseInt(request.getParameter("id_Aluno")));
                    fich.setId_Professor(Integer.parseInt(request.getParameter("id_Professor")));

                    prd.alterar(fich);
                    response.sendRedirect("index.html");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
