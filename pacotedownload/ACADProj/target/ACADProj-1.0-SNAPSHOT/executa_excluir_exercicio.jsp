
<%@page import="dao.ExercicioDAO"%>
<%@page import="model.Exercicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Excluir Exercicio</title>
    </head>
    <body>
        <%
            try {
                ExercicioDAO exer = new ExercicioDAO();
                exer.excluir(Integer.parseInt(request.getParameter("id_Exercicio")));
                response.sendRedirect("princiexer.jsp");
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
