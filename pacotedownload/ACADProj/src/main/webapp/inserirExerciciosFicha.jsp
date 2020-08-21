<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Exercicios Ficha</title>
    </head>
    <body>
        <form action="executa_inserir_exerciciosFicha.jsp" method="post">
            <!-- 
            <label>Código: </label><br/>
            <input type="text" name="id_ExerciciosFicha" value="" /><br/>
            -->
            <label>ID da Ficha:  </label><br/>
            <input type="text" name="id_Ficha" value="" /><br/>
            
            <label>Exercicio:  </label><br/>
            <input type="text" name="exercicios_ExerciciosFicha" value="" /><br/>
            
            <label>Serie  </label><br/>
            <input type="text" name="serie_ExerciciosFicha" value="" /><br/>
            
            <label>Repetição  </label><br/>
            <input type="text" name="repeticao_ExerciciosFicha" value="" /><br/>
            
            <label>Peso  </label><br/>
            <input type="text" name="peso_ExerciciosFicha" value="" /><br/>
            
            <label>Letra  </label><br/>
            <input type="text" name="letra_ExerciciosFicha" value="" /><br/>
            
            <input type="submit" value="OK" /><br/>
            <a href="index.html">Cancelar</a>
        </form>    
    </body>
</html>