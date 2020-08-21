
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="dao.FichaDAO"%>
<%@page import="model.Ficha"%>
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page import="model.ExerciciosFicha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Inserir Ficha</title>
    </head>
    <body>
        <%
            try {
                Ficha fich = new Ficha();
                FichaDAO prd = new FichaDAO();
                if(request.getParameter("id_Aluno").equals("")||request.getParameter("id_Professor").equals("")){
                    response.sendRedirect("princifich.jsp");
                }else{
                    fich.setId_Aluno(Integer.parseInt(request.getParameter("id_Aluno")));
                    
                    fich.setId_Professor(Integer.parseInt(request.getParameter("id_Professor")));
                    
                    Calendar c = Calendar.getInstance();
                    Date date = c.getTime();
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
                    fich.setData_Ficha(sdf.format(date));

                    prd.inserir(fich);
                }
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
                
                FichaDAO fich = new FichaDAO();
                ArrayList<Ficha> lista = fich.listarTodos();
                
                try {
                ExerciciosFicha exe = new ExerciciosFicha();
                ExerciciosFichaDAO exer = new ExerciciosFichaDAO();
                
                for(int x=0;x<70;x++){
                    if ((request.getParameter("exercicios_ExerciciosFicha"+Integer.toString(x)))!="EXERCICIO") {
                        exe.setId_Ficha(lista.get(lista.size()-1).getId_Ficha());
                        exe.setExercicios_ExerciciosFicha(request.getParameter("exercicios_ExerciciosFicha"+Integer.toString(x)));
                        exe.setSerie_ExerciciosFicha(request.getParameter("serie_ExerciciosFicha"+Integer.toString(x)));
                        exe.setRepeticao_ExerciciosFicha(request.getParameter("repeticao_ExerciciosFicha"+Integer.toString(x)));
                        exe.setPeso_ExerciciosFicha(request.getParameter("peso_ExerciciosFicha"+Integer.toString(x)));
                        exe.setLetra_ExerciciosFicha(request.getParameter("letra_ExerciciosFicha"+Integer.toString(x)));
                        exer.inserir(exe);
                        } 
                }
                    response.sendRedirect("index.html");
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 8: "+erro);
                }
        %>
    </body>
</html>
