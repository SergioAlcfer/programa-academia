<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Exercicio</title>
    </head>
    <body>
        <form action="executa_excluir_exercicio.jsp" method="post">
            
            <label>Código: </label><br/>            
            <input type="text" name="id_Exercicio" value="<%=request.getParameter("id_Exercicio")%>" /><br/>
            
            <label>Nome:  </label><br/>
            <input type="text" name="nome_Exercicio" value="<%=request.getParameter("nome_Exercicio")%>" /><br/>
            
            <input type="submit" value="OK" /><br/>
            
            <a href="princiexer.jsp">Cancelar</a>
        </form>    
    </body>
</html>
