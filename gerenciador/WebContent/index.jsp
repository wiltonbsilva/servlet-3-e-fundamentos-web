<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
Bem vindo ao nosso gerenciador de empresas!<br/>
<c:if test="${not empty usuarioLogado}">
	Logado como ${usuarioLogado.email}<br/>
</c:if>
Cadastre sua nova empresa:
<form action="executa?tarefa=NovaEmpresa" method="post">
	Nome:<input type="text" name="nome"/>
	<input type="submit" value="Enviar"/> 
</form>
<br/>
<form action="login" method="post">
	Email:<input type="email" name="email"/><br/>
	Senha:<input type="password" name="senha"/>
	<input type="submit" value="Login"/>
</form>
<br/>
<form action="executa?tarefa=Logout" method="post">
	<input type="submit" value="Logout"/>
</form>
</body>
</html>