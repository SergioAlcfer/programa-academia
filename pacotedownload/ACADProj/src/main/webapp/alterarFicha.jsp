
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Ficha</title>
    </head>
    <body>
        <form action="executa_alterar_ficha.jsp" method="post">
            
            <label>Codigo: </label><br/>
            <input type="text" name="id_Ficha" value="<%=request.getParameter("id_Ficha")%>" /><br/>
            
            <label>Aluno: </label><br/>
            <input type="text" name="id_Aluno" value="<%=request.getParameter("id_Aluno")%>" /><br/>
            
            <label>Professor: </label><br/>
            <input type="text" name="id_Professor" value="<%=request.getParameter("id_Professor")%>" /><br/>
            
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>
