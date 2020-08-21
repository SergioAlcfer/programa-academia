
<%@page import="java.util.ArrayList"%>
<%@page import="model.ExerciciosFicha"%>
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Exercicios Ficha</title>
    </head>
    <body>
        <form action="princiexerFicha.jsp" method="post">
            <label>ID da Ficha:</label></br>
            <input type="text" name="id_Ficha" value="" size="" />
            <input type="submit" value="OK" /></br>
        </form>
        <%
            try {
                out.print("<table border=1>");
                out.print("<tr>");
                out.print("<th>CODIGO</th><th>IDFICHA</th><th>EXERCICIOS</th><th>SÉRIE</th><th>REPETIÇÃO</th><th>PESO</th><th>LETRA</th><th>ABRIR</th><th>EDITAR</th><th>EXCLUIR</th>");
                out.print("<tr>");
                ExerciciosFichaDAO exe = new ExerciciosFichaDAO();
                ArrayList<ExerciciosFicha> lista = exe.listarTodosFicha(Integer.parseInt(request.getParameter("id_Ficha")));
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getExercicios_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getSerie_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getRepeticao_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getPeso_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getLetra_ExerciciosFicha()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "&serie_ExerciciosFicha="+lista.get(num).getSerie_ExerciciosFicha()+
                        "&repeticao_ExerciciosFicha="+lista.get(num).getRepeticao_ExerciciosFicha()+
                        "&peso_ExerciciosFicha="+lista.get(num).getPeso_ExerciciosFicha()+
                        "&letra_ExerciciosFicha="+lista.get(num).getLetra_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                        }
               
                /*
                if (request.getParameter("id_Ficha")==""||request.getParameter("id_Ficha")==null) {
                    ArrayList<ExerciciosFicha>lista = exe.listarTodos();
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getExercicios_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getSerie_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getRepeticao_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getPeso_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getLetra_ExerciciosFicha()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "&serie_ExerciciosFicha="+lista.get(num).getSerie_ExerciciosFicha()+
                        "&repeticao_ExerciciosFicha="+lista.get(num).getRepeticao_ExerciciosFicha()+
                        "&peso_ExerciciosFicha="+lista.get(num).getPeso_ExerciciosFicha()+
                        "&letra_ExerciciosFicha="+lista.get(num).getLetra_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                    }
                        
                    } else {
                    ArrayList<ExerciciosFicha> lista = exe.listarTodosFicha(Integer.parseInt(request.getParameter("id_Ficha")));
                    for(int num=0;num<lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getId_Ficha()+"</td>");
                        out.print("<td>"+lista.get(num).getExercicios_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getSerie_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getRepeticao_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getPeso_ExerciciosFicha()+"</td>");
                        out.print("<td>"+lista.get(num).getLetra_ExerciciosFicha()+"</td>");
                        out.print("<td>Clique</td>");
                        out.print("<td><a href='alterarExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "&serie_ExerciciosFicha="+lista.get(num).getSerie_ExerciciosFicha()+
                        "&repeticao_ExerciciosFicha="+lista.get(num).getRepeticao_ExerciciosFicha()+
                        "&peso_ExerciciosFicha="+lista.get(num).getPeso_ExerciciosFicha()+
                        "&letra_ExerciciosFicha="+lista.get(num).getLetra_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                        out.print("<td><a href='excluirExerciciosFicha.jsp?id_ExerciciosFicha="+lista.get(num).getId_ExerciciosFicha()+
                        "&id_Ficha="+lista.get(num).getId_Ficha()+
                        "&exercicios_ExerciciosFicha="+lista.get(num).getExercicios_ExerciciosFicha()+
                        "'>CLIQUE</a></td>");
                        }
                 }
                 */
                out.print("</table>");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 10: "+erro);
                }
        %>
        <a href = 'inserirExerciciosFicha.jsp'>Novo Exercicio</a><br>
    </body>
</html>


