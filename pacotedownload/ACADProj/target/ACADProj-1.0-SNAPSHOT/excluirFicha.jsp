<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Ficha</title>
    </head>
    <body>
        <form action="executa_excluir_ficha.jsp" method="post">
            
            <label>Codigo: </label><br/>
            <input type="text" name="id_Ficha" value="<%=request.getParameter("id_Ficha")%>" /><br/>
            
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>
