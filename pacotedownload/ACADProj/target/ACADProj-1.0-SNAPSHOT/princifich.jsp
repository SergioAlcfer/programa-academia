
<%@page import="java.util.ArrayList"%>
<%@page import="model.Ficha"%>
<%@page import="dao.FichaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Ficha</title>
    </head>
    <body>
        <form action="princifich.jsp" method="post">
            <label>Aluno:</label></br>
            <input type="text" name="nome_Aluno" value="<%=request.getParameter("nome_Aluno")%>" /><br/>
            <label>Codigo:</label></br>
            <input type="text" name="id_Aluno" value="<%=request.getParameter("id_Aluno")%>" /><br/>
            <a href = 'novaFicha.jsp?id_Aluno=<%=request.getParameter("id_Aluno")%>&nome_Aluno=<%=request.getParameter("nome_Aluno")%>'>Nova Ficha</a><br>
        </form>
        <%
            try {
                out.print("<table border=1>");
                out.print("<tr>");
                out.print("<th>DATA DA FICHA</th><th>CODIGO DA FICHA</th><th>CODIGO DO ALUNO</th><th>CODIGO DO PROFESSOR</th><th>ABRIR</th><th>EDITAR</th><th>EXCLUIR</th>");
                out.print("<tr>");
                FichaDAO fich = new FichaDAO();
                ArrayList<Ficha> lista = fich.listarTodosNome(Integer.parseInt(request.getParameter("id_Aluno")));
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getData_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Aluno()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Professor()+"</td>");
                        out.print("<td><a href='princiexerFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='alterarFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"&id_Aluno="+lista.get(num).getId_Aluno()+"&id_Professor="+lista.get(num).getId_Professor()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"'>CLIQUE</a></td>");
                    }
                /* if (request.getParameter("id_Ficha")==""||request.getParameter("id_Ficha")==null) {
                    ArrayList<Ficha>lista = fich.listarTodos();
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getData_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Aluno()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Professor()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"&id_Aluno="+lista.get(num).getId_Aluno()+"&id_Professor="+lista.get(num).getId_Professor()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"'>CLIQUE</a></td>");
                    }
                        
                    } else {
                            ArrayList<Ficha> lista = fich.listarTodosNome(Integer.parseInt("id_Aluno"));
                            for(int num=0;num<lista.size();num++){
                                out.print("<tr>");
                                out.print("<td>"+lista.get(num).getData_Ficha()+"</td>");
                                out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                                out.print("<td>"+lista.get(num).getId_Aluno()+"</td>");
                                out.print("<td>"+lista.get(num).getId_Professor()+"</td>");
                                out.print("<td>Clique</td>");
                                out.print("<td><a href='alterarFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"&id_Aluno="+lista.get(num).getId_Aluno()+"&id_Professor="+lista.get(num).getId_Professor()+"'>CLIQUE</a></td>");
                                out.print("<td><a href='excluirFicha.jsp?id_Ficha="+lista.get(num).getId_Ficha()+"'>CLIQUE</a></td>");
                            }
                    }*/
                out.print("</table>");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 20: "+erro);
                }
        %>
        <a href = 'index.html'>Inicio</a>
    </body>
</html>

