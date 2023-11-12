<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%-- 
* year 2023 title Cupcake Store
* 
* @author - Rodrigo Braga
--%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ClientRegistration dto_registrationClient = new ClientRegistration();

	dto_registrationClient.setName(request.getParameter("fname"));
	dto_registrationClient.setBirthDate(request.getParameter("fbirthDate"));
	dto_registrationClient.setDocumentCpf(request.getParameter("fdocument"));
	dto_registrationClient.setEmailRegistration(request.getParameter("femail"));
	dto_registrationClient.setPassword(request.getParameter("fpassword"));
	dto_registrationClient.setPhone(request.getParameter("fphone"));
	dto_registrationClient.setStreet(request.getParameter("fstreet"));
	dto_registrationClient.setComplement(request.getParameter("fcomplement"));
	dto_registrationClient.setHomeNumber(request.getParameter("fhomeNumber"));
	dto_registrationClient.setNeighborhood(request.getParameter("fneighborhood"));
	dto_registrationClient.setCity(request.getParameter("fcity"));
	dto_registrationClient.setState(request.getParameter("fstate"));
	dto_registrationClient.setZipCode(request.getParameter("fzipCode"));

	ClientDao dao_client = new ClientDao();
	dao_client.registrationClient_Dao(dto_registrationClient);
	%>
	<%
	//ClientDao dao_client1 = new ClientDao();
	//ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	//Este linha traz como resultado às informações contidas no DB de acordo com o usuário e senha
	dao_client.resultSelectRegistration_Dao(dto_registrationClient.getEmailRegistration(),
			dto_registrationClient.getPassword());
	%>


	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi realizado com sucesso.</h5>
				<p class="card-text">Sua sessão será inicializada automaticamente,
				basta dar um click no botão situado logo abaixo!</p><br>
				<a href="../../home-page/home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					página principal</a>
			</div>
		</div>
	</div>

</body>
</html>