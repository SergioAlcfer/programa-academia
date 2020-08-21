<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Aluno</title>
    </head>
    <body>
        <form action="executa_excluir_aluno.jsp" method="post">
            
            <label>Código: </label><br/>            
            <input type="text" name="id_Aluno" value="<%=request.getParameter("id_Aluno")%>" /><br/>
            
            <label>Nome:  </label><br/>
            <input type="text" name="nome_Aluno" value="<%=request.getParameter("nome_Aluno")%>" /><br/>
            
            <label>Senha:  </label><br/>
            <input type="password" name="senha_Aluno" value="<%=request.getParameter("senha_Aluno")%>" />
            
            <input type="submit" value="OK" /><br/>
            <a href="princialu.jsp">Cancelar</a>
        </form>    
    </body>
</html>
