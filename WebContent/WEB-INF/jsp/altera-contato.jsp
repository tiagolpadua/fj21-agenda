<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<html>
<head>
<meta charset="UTF-8">
<title>Altera Contato</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Altera Contato</h1>
	<hr />
	<form action="mvc?logica=MantemContatoLogic" method="POST">
		<input type="hidden" name="id" value="${contato.id}"/>
		Nome: <input type="text" name="nome" value="${contato.nome}"/><br />
		E-mail: <input type="text" name="email" value="${contato.email}"/><br />
		Endereço: <input type="text" name="endereco" value="${contato.endereco}"/><br />
		Data Nascimento:
		<caelum:campoData id="dataNascimento" valor="${contato.dataNascimentoFormatada}"/>
		<br /> <input type="submit" value="Gravar" />
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>