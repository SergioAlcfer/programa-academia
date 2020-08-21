<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Exercicios Ficha</title>
    </head>
    <body>
        <form action="executa_alterar_exerciciosFicha.jsp" method="post">
             
            <label>Código: </label><br/>
            <input type="text" name="id_ExerciciosFicha" value="<%=request.getParameter("id_ExerciciosFicha")%>" /><br/>
            
            <label>ID da Ficha:  </label><br/>
            <input type="text" name="id_Ficha" value="<%=request.getParameter("id_Ficha")%>" /><br/>
            
            <label>Exercicio:  </label><br/>
            <input type="text" name="exercicios_ExerciciosFicha" value="<%=request.getParameter("exercicios_ExerciciosFicha")%>" /><br/>
            
            <label>Serie  </label><br/>
            <input type="text" name="serie_ExerciciosFicha" value="<%=request.getParameter("serie_ExerciciosFicha")%>" /><br/>
            
            <label>Repetição  </label><br/>
            <input type="text" name="repeticao_ExerciciosFicha" value="<%=request.getParameter("repeticao_ExerciciosFicha")%>" /><br/>
            
            <label>Peso  </label><br/>
            <input type="text" name="peso_ExerciciosFicha" value="<%=request.getParameter("peso_ExerciciosFicha")%>" /><br/>
            
            <label>Letra  </label><br/>
            <input type="text" name="letra_ExerciciosFicha" value="<%=request.getParameter("letra_ExerciciosFicha")%>" /><br/>
            
            
            <input type="submit" value="OK" /><br/>
            <a href="princiexerFicha.jsp">Cancelar</a>
        </form>    
    </body>
</html>