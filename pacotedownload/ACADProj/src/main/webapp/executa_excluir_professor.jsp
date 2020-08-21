<%@page import="dao.ProfessorDAO"%>
<%@page import="model.Professor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Excluir Professor</title>
    </head>
    <body>
        <%
            try {
                ProfessorDAO prof = new ProfessorDAO();
                prof.excluir(Integer.parseInt(request.getParameter("id_Professor")));
                response.sendRedirect("principrof.jsp");
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 19"+erro);
                }
        %>
    </body>
</html>