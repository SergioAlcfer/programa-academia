<%@page import="java.util.ArrayList"%>
<%@page import="model.Exercicio"%>
<%@page import="dao.ExercicioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Ficha</title>
    </head>
    <body>
        <form action="executa_inserir_ficha.jsp" method="post">
            <!--
            <label>Codigo: </label><br/>
            <input type="text" name="id_Ficha" value="" /><br/>
            -->
            
            <label>Aluno: </label><br/>
            <input type="text" name="id_Aluno" value="" /><br/>
            
            <label>Professor: </label><br/>
            <input type="text" name="id_Professor" value="" /><br/>
            
            <label>Exercicios: </label><br/>
            
            <select name="exercicios_Ficha">
            <%
             ExercicioDAO exe = new ExercicioDAO();
             ArrayList<Exercicio>lista = exe.listarTodos();
             for(int num=0;num<lista.size();num++){
                %>
                <option><%=lista.get(num).getNome_Exercicio()%></option>
                <%
                    }
            %>
            </select>
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>