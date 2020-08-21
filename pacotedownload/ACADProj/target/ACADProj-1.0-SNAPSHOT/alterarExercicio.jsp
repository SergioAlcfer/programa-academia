<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Exercicio</title>
    </head>
    <body>
        <form action="executa_alterar_exercicio.jsp" method="post">
            
            <label>Código: </label><br/>            
            <input type="text" name="id_Exercicio" value="<%=request.getParameter("id_Exercicio")%>" /><br/>
            
            <label>Nome:  </label><br/>
            <input type="text" name="nome_Exercicio" value="<%=request.getParameter("nome_Exercicio")%>" /><br/>
            
            <label>Obs  </label><br/>
            <input type="text" name="obs_Exercicio" value="<%=request.getParameter("obs_Exercicio")%>" />
            
            <!--
            <label>Grupo  </label><br/>
            <input type="text" name="obs_Exercicio" value="<%=request.getParameter("grupo_Exercicio")%>" />
            -->
            <label>Grupo:  </label>
             <select name="grupo_Exercicio">
                 <option>Selecione</option>
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
