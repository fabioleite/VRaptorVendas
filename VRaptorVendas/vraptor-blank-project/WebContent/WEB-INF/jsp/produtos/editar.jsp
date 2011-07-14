<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	<h1>Cadastro de produtos</h1>
	<c:forEach var="error" items="${errors}">
	    ${error.category} - ${error.message}<br />
	</c:forEach>
	<form action="<c:url value="/produtos/atualizar"/>">
		<input name="produto.id" value="${produto.id}" type="hidden" />
	    <fmt:message key="nome.prod" /> <input type="text" name="produto.nome" value="${produto.nome}"/><br/>
	    Descricao:    <input type="text" name="produto.descricao" value="${produto.descricao}"/><br/>
	    <fmt:message key="preco.prod" /><input type="text" name="produto.preco" value="${produto.preco}"/><br/>
	    <input type="submit" value="Atualizar" />
	</form>
</body>
</html>