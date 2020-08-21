
<%@page import="java.util.ArrayList"%>
<%@page import="model.Aluno"%>
<%@page import="dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Aluno</title>
    </head>
    <body>
        <form action="princialu.jsp" method="post">
            <label>Nome do Aluno:</label></br>
            <input type="text" name="nome_Aluno" value="" size="60" />
            <input type="submit" value="OK" /></br>
        </form>
        <%
            try {
                out.print("<table border=1>");
                out.print("<tr>");
                out.print("<th>CODIGO</th><th>NOME</th><th>ABRIR</th><th>EDITAR</th><th>EXCLUIR</th>");
                out.print("<tr>");
                AlunoDAO alu = new AlunoDAO();
                if (request.getParameter("nome_Aluno")==""||request.getParameter("nome_Aluno")==null) {
                    ArrayList<Aluno>lista = alu.listarTodos();
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_Aluno()+"</td>");
                        out.print("<td>"+lista.get(num).getNome_Aluno()+"</td>");
                        //out.print("<td>Clique</td>");
                        out.print("<td><a href='princifich.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='alterarAluno.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"&senha_Aluno="+lista.get(num).getSenha_Aluno()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirAluno.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"'>CLIQUE</a></td>");
                    }
                        
                    } else {
                            ArrayList<Aluno> lista = alu.listarTodosNome(request.getParameter("nome_Aluno"));
                            for(int num=0;num<lista.size();num++){
                                out.print("<tr>");
                                out.print("<td>"+lista.get(num).getId_Aluno()+"</td>");
                                out.print("<td>"+lista.get(num).getNome_Aluno()+"</td>");
                                //out.print("<td>Clique</td>");
                                out.print("<td><a href='princifich.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"'>CLIQUE</a></td>");
                                out.print("<td><a href='alterarAluno.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"&senha_Aluno="+lista.get(num).getSenha_Aluno()+"'>CLIQUE</a></td>");
                                out.print("<td><a href='excluirAluno.jsp?id_Aluno="+lista.get(num).getId_Aluno()+"&nome_Aluno="+lista.get(num).getNome_Aluno()+"'>CLIQUE</a></td>");
                             }
                    }
                out.print("</table>");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 10: "+erro);
                }
        %>
        <a href = 'inserirAluno.jsp'>Novo Aluno</a><br>
        <a href = 'index.html'>Inicio</a>
    </body>
</html>

