package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class FormAlteraContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// busca a conexão pendurada na requisição
		Connection connection = (Connection) req.getAttribute("conexao");

		// passe a conexão no construtor
		ContatoDao dao = new ContatoDao(connection);
		Contato contato = dao.pesquisar(Integer.parseInt(req.getParameter("id")));
		req.setAttribute("contato", contato);
		return "/WEB-INF/jsp/altera-contato.jsp";
	}
}
