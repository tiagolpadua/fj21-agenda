<%@ page
	import="java.util.*,
	java.text.SimpleDateFormat,
    br.com.caelum.agenda.dao.*,
    br.com.caelum.agenda.modelo.*"%>
<html>
<body>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>e-mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>
		</thead>
		<tbody>
			<%
			    ContatoDao dao = new ContatoDao();
			    List<Contato> contatos = dao.getLista();
			    for (Contato contato : contatos) {
			%>
			<tr>
				<td><%=contato.getNome()%></td>
				<td><%=contato.getEmail()%></td>
				<td><%=contato.getEndereco()%></td>
				<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
			</tr>
			<%
			    }
			%>
		</tbody>
	</table>
</body>
</html>