
<%@page import="dao.ExercicioDAO"%>
<%@page import="model.Exercicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Alterar Exercicio</title>
    </head>
    <body>
        <%
            try {
                Exercicio exe = new Exercicio();
                ExercicioDAO exer = new ExercicioDAO();
                if(request.getParameter("nome_Exercicio").equals("")){
                    response.sendRedirect("princiexer.jsp");
                }else{
                    exe.setNome_Exercicio(request.getParameter("nome_Exercicio"));
                    exe.setObs_Exercicio(request.getParameter("obs_Exercicio"));
                    exe.setGrupo_Exercicio(request.getParameter("grupo_Exercicio"));
                    exe.setId_Exercicio(Integer.parseInt(request.getParameter("id_Exercicio")));
                    exer.alterar(exe);
                    response.sendRedirect("princiexer.jsp");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
