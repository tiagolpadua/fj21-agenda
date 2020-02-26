<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<body>
	<c:import url="cabecalho.jsp" />

	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

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
			<!-- percorre contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${contato.nome}</td>
					<td>
						<!-- 
						<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email}">
							E-mail não informado
						</c:if>
						 --> <c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>
								E-mail não informado
							</c:otherwise>
						</c:choose>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern="dd/MM/yyyy" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<c:import url="rodape.jsp" />
</body>