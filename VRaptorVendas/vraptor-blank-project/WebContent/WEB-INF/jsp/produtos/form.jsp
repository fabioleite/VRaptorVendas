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
	<form action="<c:url value="/produtos/adiciona"/>">
	    <fmt:message key="nome.prod" /> <input type="text" name="produto.nome" /><br/>
	    Descricao:    <input type="text" name="produto.descricao" /><br/>
	    <fmt:message key="preco.prod" /><input type="text" name="produto.preco" /><br/>
	    <input type="submit" value="Salvar" />
	</form>
</body>
</html>