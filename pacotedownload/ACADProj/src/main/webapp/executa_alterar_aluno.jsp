
<%@page import="dao.AlunoDAO"%>
<%@page import="model.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Alterar Aluno</title>
    </head>
    <body>
        <%
            try {
                Aluno alu = new Aluno();
                AlunoDAO alun = new AlunoDAO();
                if(request.getParameter("nome_Aluno").equals("")||request.getParameter("senha_Aluno").equals("")){
                    response.sendRedirect("princialu.jsp");
                }else{
                    alu.setId_Aluno(Integer.parseInt(request.getParameter("id_Aluno")));
                    alu.setNome_Aluno(request.getParameter("nome_Aluno"));
                    alu.setSenha_Aluno(request.getParameter("senha_Aluno"));
                    alun.alterar(alu);
                    response.sendRedirect("princialu.jsp");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 8: "+erro);
                }
        %>
    </body>
</html>
