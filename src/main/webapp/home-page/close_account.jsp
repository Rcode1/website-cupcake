<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
	//Nesta tela o método "resultSelectRegistration_Dao()" é acionado para deletar
	//os itens da lista.
	ClientDao clientDao = new ClientDao();

	

	//Teste para verificação de lista, (vazia ou cheia)
	if (!clientDao.clientListResult().isEmpty()) {
	%>
	<script>
		window.location.href = '../index.jsp';
	</script>
	<%
	} else { %>
	
	<script>
		window.location.href = '../index-configuration/error_index.jsp';
	</script>
	<% 
	}
	%>


	<!--  Após a remoção dos dados da listaresultSelectRegistration_Dao() 
	a pagina é redirecionada para o index.jsp  -->





</body>
</html>