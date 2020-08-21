
<%@page import="java.util.ArrayList"%>
<%@page import="model.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Professor</title>
    </head>
    <body>
        <form action="principrof.jsp" method="post">
            <label>Nome do Professor:</label></br>
            <input type="text" name="nome_Professor" value="" size="60" />
            <input type="submit" value="OK" /></br>
        </form>
        <%
            try {
                out.print("<table border=1>");
                out.print("<tr>");
                out.print("<th>CODIGO</th><th>NOME</th><th>ABRIR</th><th>EDITAR</th><th>EXCLUIR</th>");
                out.print("<tr>");
                ProfessorDAO pro = new ProfessorDAO();
                if (request.getParameter("nome_Professor")==""||request.getParameter("nome_Professor")==null) {
                    ArrayList<Professor>lista = pro.listarTodos();
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_Professor()+"</td>");
                        out.print("<td>"+lista.get(num).getNome_Professor()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarProfessor.jsp?id_Professor="+lista.get(num).getId_Professor()+"&nome_Professor="+lista.get(num).getNome_Professor()+"&senha_Professor="+lista.get(num).getSenha_Professor()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirProfessor.jsp?id_Professor="+lista.get(num).getId_Professor()+"&nome_Professor="+lista.get(num).getNome_Professor()+"'>CLIQUE</a></td>");
                    }
                        
                    } else {
                            ArrayList<Professor> lista = pro.listarTodosNome(request.getParameter("nome_Professor"));
                            for(int num=0;num<lista.size();num++){
                                out.print("<tr>");
                                out.print("<td>"+lista.get(num).getId_Professor()+"</td>");
                                out.print("<td>"+lista.get(num).getNome_Professor()+"</td>");
                                out.print("<td>Clique</td>");
                                out.print("<td><a href='alterarProfessor.jsp?id_Professor="+lista.get(num).getId_Professor()+"&nome_Professor="+lista.get(num).getNome_Professor()+"&senha_Professor="+lista.get(num).getSenha_Professor()+"'>CLIQUE</a></td>");
                                out.print("<td><a href='excluirProfessor.jsp?id_Professor="+lista.get(num).getId_Professor()+"&nome_Professor="+lista.get(num).getNome_Professor()+"'>CLIQUE</a></td>");
                             }
                    }
                out.print("</table>");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 20: "+erro);
                }
        %>
        <a href = 'inserirProfessor.jsp'>Novo Professor</a><br>
        <a href = 'index.html'>Inicio</a>
    </body>
</html>

