<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Aluno</title>
    </head>
    <body>
        <form action="executa_inserir_aluno.jsp" method="post">
            <!-- 
            <label>Código: </label><br/>
            <input type="text" name="id_Aluno" value="" /><br/>
            -->
            <label>Nome:  </label><br/>
            <input type="text" name="nome_Aluno" value="" /><br/>
            
            <label>Senha:  </label><br/>
            <input type="password" name="senha_Aluno" value="" />
            
            <input type="submit" value="OK" /><br/>
            <a href="principal.jsp">Cancelar</a>
        </form>    
    </body>
</html>
