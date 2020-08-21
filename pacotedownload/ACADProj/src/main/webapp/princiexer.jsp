
<%@page import="java.util.ArrayList"%>
<%@page import="model.Exercicio"%>
<%@page import="dao.ExercicioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Exercicio</title>
    </head>
    <body>
        <form action="princiexer.jsp" method="post">
            <label>Nome do Exercicio:</label></br>
            <input type="text" name="nome_Exercicio" value="" size="60" />
            <input type="submit" value="OK" /></br>
        </form>
        <%
            try {
                out.print("<table border=1>");
                out.print("<tr>");
                out.print("<th>CODIGO</th><th>NOME</th><th>GRUPO</th><th>ABRIR</th><th>EDITAR</th><th>EXCLUIR</th>");
                out.print("<tr>");
                ExercicioDAO exe = new ExercicioDAO();
                if (request.getParameter("nome_Exercicio")==""||request.getParameter("nome_Exercicio")==null) {
                    ArrayList<Exercicio>lista = exe.listarTodos();
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_Exercicio()+"</td>");
                        out.print("<td>"+lista.get(num).getNome_Exercicio()+"</td>");
                        out.print("<td>"+lista.get(num).getGrupo_Exercicio()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarExercicio.jsp?id_Exercicio="+lista.get(num).getId_Exercicio()+"&nome_Exercicio="+lista.get(num).getNome_Exercicio()+"&obs_Exercicio="+lista.get(num).getObs_Exercicio()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirExercicio.jsp?id_Exercicio="+lista.get(num).getId_Exercicio()+"&nome_Exercicio="+lista.get(num).getNome_Exercicio()+"'>CLIQUE</a></td>");
                    }
                        
                    } else {
                            ArrayList<Exercicio> lista = exe.listarTodosNome(request.getParameter("nome_Exercicio"));
                            for(int num=0;num<lista.size();num++){
                                out.print("<tr>");
                                out.print("<td>"+lista.get(num).getId_Exercicio()+"</td>");
                                out.print("<td>"+lista.get(num).getNome_Exercicio()+"</td>");
                                out.print("<td>"+lista.get(num).getGrupo_Exercicio()+"</td>");
                                out.print("<td>Clique</td>");
                                out.print("<td><a href='alterarExercicio.jsp?id_Exercicio="+lista.get(num).getId_Exercicio()+"&nome_Exercicio="+lista.get(num).getNome_Exercicio()+"&obs_Exercicio="+lista.get(num).getObs_Exercicio()+"'>CLIQUE</a></td>");
                                out.print("<td><a href='excluirExercicio.jsp?id_Exercicio="+lista.get(num).getId_Exercicio()+"&nome_Exercicio="+lista.get(num).getNome_Exercicio()+"'>CLIQUE</a></td>");
                            }
                    }
                out.print("</table>");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 10: "+erro);
                }
        %>
        <a href = 'inserirExercicio.jsp'>Novo Exercicio</a><br>
        <a href = 'index.html'>Inicio</a>
    </body>
</html>


