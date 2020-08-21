
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="executa_excluir_professor.jsp" method="post">
            <label>Codigo</label><br/>
            <input type="text" name="id_Professor" value="<%=request.getParameter("id_Professor")%>"/><br/>
            
            <label>Nome</label><br/>
            <input type="text" name="nome_Professor" value="<%=request.getParameter("nome_Professor")%>"/><br/>
            
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>
