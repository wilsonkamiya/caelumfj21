<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Contato</title>
<head>
		<link	href="css/jquery.css" rel="stylesheet">
		<script	src="js/jquery.js"></script>
		<script	src="js/jquery-ui.js"></script>
</head>
</head>
<body>
	<c:import url="cabecalho.jsp"  />
	<hr/>
	<h1>ADICIONAR CONTATO</h1><BR>
	<FORM ACTION = "adicionaContato" method="Post">
		NOME: <INPUT TYPE = "TEXT" NAME="NOME" /> <BR>
		EMAIL: <INPUT TYPE = "TEXT" NAME="EMAIL" /><BR>
		ENDERECO: <INPUT TYPE = "TEXT" NAME="ENDERECO" /><BR>
		DATA NASCIMENTO: <caelum:campoData	id="DTNASC"	/><BR>
		<INPUT TYPE = "SUBMIT" VALUE ="ENVIAR" />
	</FORM>	 
	<hr/>
    <c:import url="rodape.jsp" />
</body>
</html>