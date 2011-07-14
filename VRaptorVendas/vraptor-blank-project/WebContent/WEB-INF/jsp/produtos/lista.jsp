<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
	<h1>Lista de produtos</h1>
	<ul>
		<c:forEach items="${produtoList}" var="produto">
			<li>${produto.nome} - ${produto.descricao} - ${produto.preco}
			<a href="<c:url value="/produtos/editar?produto.id=${produto.id}"/>">Editar</a>
			<a href="<c:url value="/produtos/remover?produto.id=${produto.id}"/>">Remover</a>
			</li>
		</c:forEach>
	</ul>
	<a href="<c:url value="/"/>">Cadastrar produtos</a>
	<br/>
</body>
</html>