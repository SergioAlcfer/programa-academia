
<%@page import="model.ExerciciosFicha"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Ficha</title>
    </head>
    <body>
        <form action="executa_inserir_ficha.jsp"  method="post">
            <!--
            <label>Codigo: </label><br/>
            <input type="text" name="id_Ficha" value="" /><br/>
            -->
            
            <label>Nome: </label><br/>
            <input type="text" name="nome_Aluno" value="<%=request.getParameter("nome_Aluno")%>" /><br/>
            
            
            <label>Codigo: </label><br/>
            <input type="text" name="id_Aluno" value="<%=request.getParameter("id_Aluno")%>" /><br/>
            
            <label>Professor: </label><br/>
            <input type="text" name="id_Professor" value="1" /><br/>
            
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>
