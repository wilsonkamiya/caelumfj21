package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class RemoveContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res)
																			throws Exception {
		long id = Long.parseLong(req.getParameter("id"));
		
		Connection connection = (Connection) req.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		
		Contato contato = new Contato();
		contato.setId(id);
 
		dao.remover(contato);
		System.out.println("Excluindo contato...");
		return "mvc?logica=ListaContatosLogic";
	}
}