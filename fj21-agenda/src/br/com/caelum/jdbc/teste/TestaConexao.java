package br.com.caelum.jdbc.teste;

import java.util.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaConexao {

	public static void main(String[] args) throws SQLException, ParseException, Exception {
		// TODO Auto-generated method stub
		// pronto para gravar
	     /*  Contato contato = new Contato();
	       contato.setNome("XPTO");
	       contato.setEmail("XPTO@caelum.com.br");
	       contato.setEndereco("R. XPTO 3185 cj57");
	       contato.setDataNascimento(Calendar.getInstance());

	       // grave nessa conexão!!!
	       ContatoDao dao = new ContatoDao();

	       // método elegante
	       dao.adiciona(contato);

	       System.out.println("Gravado!");   */ 
		    
   		   // delete nessa conexão!!!
	     /*  ContatoDao dao = new ContatoDao();
	       
	       Contato cnt = new Contato();
	       cnt.setId(1L);
	       
	       // método elegante
	       dao.remover(cnt) ;
	       
	       System.out.println("deletado!"); */
		
		
		   // alterar nessa conexão!!!
	        ContatoDao dao = new ContatoDao();
	       
	       Contato cnt = new Contato();
	       cnt.setId(3L);
	       cnt.setNome("xx");
	       cnt.setEndereco("xx");
	       cnt.setEmail("xxx@caelum.com.br");
	       SimpleDateFormat sdf = new SimpleDateFormat("dd-M-yyyy");
		   String dateInString = "23-12-1982"; 
	       cnt.setDataNascimento(cnt.getDataNascimento());
	        
	       
	       // método elegante
	       dao.altera(cnt); 
	       
	       System.out.println("Alterado!");  
		
	}

}