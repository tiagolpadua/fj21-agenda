package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class FormAlteraContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.pesquisar(Integer.parseInt(req.getParameter("id")));
		req.setAttribute("contato", contato);
		return "/WEB-INF/jsp/altera-contato.jsp";
	}
}
