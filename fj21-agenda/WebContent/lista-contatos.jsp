<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"	/>
	<!-- cria o DAO	-->
	<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>
	<table>
		<tr bgcolor="gray">
			<td><font color="white"><b>count</b></font></td>
			<td><font color="white"><b>Nome</b></font></td>
			<td><font color="white"><b>Email</b></font></td>
			<td><font color="white"><b>Endereco</b></font></td>
			<td><font color="white"><b>DT Nascimento</b></font></td>
		</tr>
		<!-- percorre contatos montando	as linhas da tabela	-->
		<c:forEach	var="contato" items="${dao.lista}" varStatus="id">
			 
			<tr bgcolor="#${id.count} % 2 == 0 ? 'aaee88' : 'ffffff'}">
				<td>${id.count}</td>	
				<td>${contato.nome}</td> 
				<td> 
					<c:if test="${not empty	contato.email}">
						 <a	href="mailto:${contato.email}">${contato.email}</a>
					</c:if>
					<c:if test="${empty	contato.email}">
						 E-mail	não	informado
					</c:if>	
				</td>
				<td>${contato.endereco}</td>
				<td>${contato.dataNascimento.time}</td>
			 </tr>
        </c:forEach>
	</table>
<c:import url="rodape.jsp"/>	
</body>
</html>