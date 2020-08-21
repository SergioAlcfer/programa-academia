<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Exercicio</title>
    </head>
    <body>
        <form action="executa_inserir_exercicio.jsp" method="post">
            <!-- 
            <label>Código: </label><br/>
            <input type="text" name="id_Exercicio" value="" /><br/>
            -->
            <label>Nome:  </label><br/>
            <input type="text" name="nome_Exercicio" value="" /><br/>
            
            <label>Obs.:  </label><br/>
            <input type="text" name="obs_Exercicio" value="" /><br/>
            
             <label>Grupo:  </label>
             <select name="grupo_Exercicio">
                 <option>Peitorais</option>
                 <option>Costas</option>
                 <option>Pernas</option>
                 <option>Ombro</option>
                 <option>Biceps</option>
                 <option>Triceps</option>
                 <option>Abdomem</option>
                 <option>Outros</option>
             </select><br/>
             
            <input type="submit" value="OK" /><br/>
            <a href="princiexer.jsp">Cancelar</a>
        </form>    
    </body>
</html>