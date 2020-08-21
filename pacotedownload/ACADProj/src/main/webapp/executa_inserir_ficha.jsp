
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="dao.FichaDAO"%>
<%@page import="model.Ficha"%>
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
                    response.sendRedirect("inserirExerciciosFicha.jsp");
                }
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 7: "+erro);
                }
        %>
    </body>
</html>
