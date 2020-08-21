<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Exercicios Ficha</title>
    </head>
    <body>
        <form action="executa_excluir_exerciciosFicha.jsp" method="post">
            
            <label>Código: </label><br/>
            <input type="text" name="id_ExerciciosFicha" value="<%=request.getParameter("id_ExerciciosFicha")%>" /><br/>
            
            <label>ID da Ficha:  </label><br/>
            <input type="text" name="id_Ficha" value="<%=request.getParameter("id_Ficha")%>" /><br/>
            
            <label>Exercicio:  </label><br/>
            <input type="text" name="exercicios_ExerciciosFicha" value="<%=request.getParameter("exercicios_ExerciciosFicha")%>" /><br/>
            
            <input type="submit" value="OK" /><br/>
            
            <a href="princiexerFicha.jsp">Cancelar</a>
        </form>    
    </body>
</html>
