
<%@page import="dao.FichaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executa Excluir Ficha</title>
    </head>
    <body>
        <%
            try {
                FichaDAO fich = new FichaDAO();
                fich.excluir(Integer.parseInt(request.getParameter("id_Ficha")));
                response.sendRedirect("princialu.jsp");
                } catch (Exception erro) {
                    throw new RuntimeException("Erro 28: "+erro);
                }
        %>
    </body>
</html>
