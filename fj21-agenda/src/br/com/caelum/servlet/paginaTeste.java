package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="paginaTeste", urlPatterns= {"/oi","/teste"})
public class paginaTeste extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("Contatos:");
 
		out.println("</body>");
		out.println("</html>");
	}
}	

 