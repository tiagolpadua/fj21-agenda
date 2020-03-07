package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class MantemContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		boolean isAlteracao = false;
		// buscando os parâmetros no request
		if (req.getParameter("id") != null) {
			isAlteracao = true;
		}

		Long id = null;
		if (isAlteracao) {
			id = Long.parseLong(req.getParameter("id"));
		}
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String email = req.getParameter("email");
		String dataEmTexto = req.getParameter("dataNascimento");
		Calendar dataNascimento = null;

		// fazendo a conversão da data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}

		// monta um objeto contato
		Contato contato = new Contato();

		if (isAlteracao) {
			contato.setId(id);
		}
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);

		// salva o contato
		ContatoDao dao = new ContatoDao();

		if (isAlteracao) {
			dao.altera(contato);
		} else {
			dao.adiciona(contato);
		}

		return "mvc?logica=ListaContatosLogic";
	}
}