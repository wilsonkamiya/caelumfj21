package br.com.caelum.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

/**
 * Servlet implementation class adicionaContato
 */
@WebServlet("/adicionaContato")
public class adicionaContato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adicionaContato() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	Contato ct = new Contato();
    	ct.setNome(request.getParameter("NOME"));
    	ct.setEmail(request.getParameter("EMAIL"));
    	ct.setEndereco(request.getParameter("ENDERECO"));
    	try {
    		Date dt = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("DTNASC"));
    		Calendar cal = Calendar.getInstance();
    		cal.setTime(dt);
    		ct.setDataNascimento(cal);
    	}catch(java.text.ParseException e){
    		try {
				throw new Exception(e);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
    	}
    	
    	ContatoDao dao;
		try {
			dao = new ContatoDao();
			dao.adiciona(ct);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	/* desabilitado pelo exercicio atual.
    	PrintWriter out = response.getWriter();
    	out.println("<html>");
    	out.println("<body>");
    	out.println("<h1>");
    	out.println("Contato " + ct.getNome() + " adicionado com sucesso!");
    	out.println("</h1>");
    	out.println("</body>");
    	out.println("</html>"); */ 
		
		RequestDispatcher rd = request.getRequestDispatcher("/contatoAdicionado.jsp");
        rd.forward(request,response);
	}

}
