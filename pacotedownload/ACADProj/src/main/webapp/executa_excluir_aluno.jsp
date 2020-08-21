
<%@page import="dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Excluir Aluno</title>
    </head>
    <body>
        <%
            try {
                AlunoDAO alu = new AlunoDAO();
                alu.excluir(Integer.parseInt(request.getParameter("id_Aluno")));
                response.sendRedirect("princialu.jsp");
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 9: "+erro);
                }
        %>
    </body>
</html>
