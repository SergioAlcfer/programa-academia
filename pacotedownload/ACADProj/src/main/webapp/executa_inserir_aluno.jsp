
<%@page import="dao.AlunoDAO"%>
<%@page import="model.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Inserir Aluno</title>
    </head>
    <body>
        <%
            try {
                Aluno alu = new Aluno();
                AlunoDAO prd = new AlunoDAO();
                if(request.getParameter("nome_Aluno").equals("")||request.getParameter("senha_Aluno").equals("")){
                    response.sendRedirect("princialu.jsp");
                }else{
                    alu.setNome_Aluno(request.getParameter("nome_Aluno"));
                    alu.setSenha_Aluno(request.getParameter("senha_Aluno"));
                    prd.inserir(alu);
                    response.sendRedirect("princialu.jsp");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
