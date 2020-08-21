<%@page import="dao.ProfessorDAO"%>
<%@page import="model.Professor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Alterar Professor</title>
    </head>
    <body>
        <%
            try {
                Professor pro = new Professor();
                ProfessorDAO prof = new ProfessorDAO();
                if (request.getParameter("nome_Professor").equals("")||request.getParameter("senha_Professor").equals("")) {
                    response.sendRedirect("principrof.jsp");
                    } else {
                        pro.setId_Professor(Integer.parseInt(request.getParameter("id_Professor")));
                        pro.setNome_Professor(request.getParameter("nome_Professor"));
                        pro.setSenha_Professor(request.getParameter("senha_Professor"));
                        prof.alterar(pro);
                        response.sendRedirect("principrof.jsp");
                    }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 17"+erro);
                }
        %>
    </body>
</html>