
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page import="model.ExerciciosFicha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Excluir Exercicios Ficha</title>
    </head>
    <body>
        <%
            try {
                ExerciciosFichaDAO exer = new ExerciciosFichaDAO();
                exer.excluir(Integer.parseInt(request.getParameter("id_ExerciciosFicha")));
                response.sendRedirect("princiexerFicha.jsp");
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
