<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp"	/>
	<!-- cria o DAO	-->
	 
	<table border =1>
		<tr bgcolor="gray">
			<td><font color="white"><b>count</b></font></td>
			<td><font color="white"><b>Nome</b></font></td>
			<td><font color="white"><b>Email</b></font></td>
			<td><font color="white"><b>Endereco</b></font></td>
			<td><font color="white"><b>DT Nascimento</b></font></td>
		</tr>
		<!-- percorre contatos montando	as linhas da tabela	-->
		<c:forEach	var="contato" items="${contatos}" varStatus="id">
			 
			<tr bgcolor="#${id.count % 2 == 0 ? 'rrff88' : 'ffff00' }" >
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
				<td> <fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /> </td>
 				<td>
					 <a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
			 </tr>
			 

        </c:forEach>
	</table>
<c:import url="rodape.jsp"/>	
</body>
</html>