<html>
<body>
	<%-- coment�rio em JSP aqui: nossa primeira p�gina JSP --%>
	<%
	    String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
	%>
	<%
	    out.println(mensagem);
	%>
	<br />
	<%
	    String desenvolvido = "Desenvolvido por (SEU NOME AQUI)";
	%>
	<%=desenvolvido%>
	<br />
	<%
	    System.out.println("Tudo foi executado!");
	%>
</body>
</html>