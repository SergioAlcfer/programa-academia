
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="executa_inserir_professor.jsp" method="post">
            <!--
            <label>Código</label><br/>
            <input type="text" name="id_Professor"/><br/>
            -->
            
            <label>Nome</label><br/>
            <input type="text" name="nome_Professor"/><br/>
            
            <label>Senha</label><br/>
            <input type="password" name="senha_Professor"/><br/>
            
            <input type="submit" value="OK" />
            
        </form>
        <a href = 'principrof.jsp'>Cancelar</a>
    </body>
</html>
