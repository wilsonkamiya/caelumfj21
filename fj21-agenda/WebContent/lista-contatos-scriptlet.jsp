<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.*,
	br.com.caelum.jdbc.dao.*,
	br.com.caelum.jdbc.modelo.*" %>    
<!DOCTYPE html>
<html>
<head>
	<title>Lista De Contatos</title>
</head>
<body>
<table>
		<tr bgcolor="gray">
			<td >Codigo </td>	
			<td >Nome</td>	
			<td>Email</td>
			<td>Endereco</td>
			<td>DataNascimento</td>
		</tr>
	  <%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for	(Contato contato : contatos ) {
		%>
			<tr>
				<td><%=contato.getId()	%></td>	
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