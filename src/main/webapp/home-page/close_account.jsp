<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	//Nesta tela o m�todo "resultSelectRegistration_Dao()" � acionado para deletar
	//os itens da lista.
	ClientDao clientDao = new ClientDao();

	clientDao.close_resultSelectRegistration_Dao();
	%>
	
	<!--  Ap�s a remo��o dos dados da listaresultSelectRegistration_Dao() 
	a pagina � redirecionada para o index.jsp  -->
	<script>
		window.location.href = '../index.jsp';
	</script>

</body>
</html>