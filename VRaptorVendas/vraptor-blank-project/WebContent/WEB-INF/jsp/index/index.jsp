<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	It works!! ${variable}
	<a href="<c:url value="/produtos/lista"/>">Listar</a>
	<br/>
	<a href="<c:url value="/produtos/form"/>">Cadastrar produtos</a>
	<br/>
	<a href="<c:url value="/usuarios/form"/>">Cadastrar Usuarios</a>
</body>
</html>