<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.*,
	br.com.caelum.jdbc.dao.*,
	br.com.caelum.jdbc.modelo.*" %>    
<!DOCTYPE html>
<html>
<body>
<table>
	  <%
		ContatoDao	dao	=	new	ContatoDao();
		List<Contato>	contatos	=	dao.getLista();
		for	(Contato	contato	:	contatos )	{
		%>
			<tr>
				<td><%=contato.getNome()	%></td>	
				<td><%=contato.getEmail()	%></td>
				<td><%=contato.getEndereco()	%></td>
				<td><%=contato.getDataNascimento().getTime()	%></td>
			</tr>
		<%
		}
		%>
</table>
</body>
</html>