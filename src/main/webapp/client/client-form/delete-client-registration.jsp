<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" errorPage="delete_redirect-view.jsp"%>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">


<title>Insert title here</title>
</head>
<body>
	<%
	ClientRegistration dto_registrationClient = new ClientRegistration();
	ClientDao dao_client = new ClientDao();

	if (dao_client.clientListResult().get(0).getIdClient()
			.equals(Integer.parseInt(request.getParameter("fidClient")))) {

		dto_registrationClient.setIdClient(Integer.parseInt(request.getParameter("fidClient")));
		dao_client.excludeClientRegistration_Dao(dto_registrationClient);
	}

	//dto_registrationClient.setIdClient(dao_client.clientDataPersistence().get(1).getIdClient());
	%>

	<div class="center-div "
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/deletado.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Cadastro deletado com sucesso.</h5>
				<p class="card-text">Seu registro foi deletado da nossa base de
					dados!</p><br>
				<a href="../../home-page/close_account.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para
					página principal</a>
			</div>
		</div>
	</div>


</body>
</html>