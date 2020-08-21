
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page import="model.ExerciciosFicha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Inserir Exercicios Ficha</title>
    </head>
    <body>
        <%
            try {
                ExerciciosFicha exe = new ExerciciosFicha();
                ExerciciosFichaDAO exer = new ExerciciosFichaDAO();
                if(request.getParameter("exercicios_ExerciciosFicha").equals("")){
                    response.sendRedirect("index.html");
                }else{
                    exe.setId_Ficha(Integer.parseInt(request.getParameter("id_Ficha")));
                    exe.setExercicios_ExerciciosFicha(request.getParameter("exercicios_ExerciciosFicha"));
                    exe.setSerie_ExerciciosFicha(request.getParameter("serie_ExerciciosFicha"));
                    exe.setRepeticao_ExerciciosFicha(request.getParameter("repeticao_ExerciciosFicha"));
                    exe.setPeso_ExerciciosFicha(request.getParameter("peso_ExerciciosFicha"));
                    exe.setLetra_ExerciciosFicha(request.getParameter("letra_ExerciciosFicha"));
                    exer.inserir(exe);
                    response.sendRedirect("princiexerFicha.jsp");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
