<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@page import="br.com.dto.admin.AdministratorRegistration"%>
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
<%@ page language="java"
	errorPage="error-redirection/error-redirection_admin-insert.jsp"%>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();
	AdministratorRegistration administratorRegistration_dto  = new AdministratorRegistration ();

	administratorRegistration_dto.setNameAdmin(request.getParameter("fnameAdmin_insert"));
	administratorRegistration_dto.setEmailAccess(request.getParameter("femailAccess_insert"));
	administratorRegistration_dto.setAccessLevel(request.getParameter("faccessLevel_insert"));
	administratorRegistration_dto.setAdminPassword(request.getParameter("fadminPassword"));
	administratorRegistration_dto.setPhoneContact(request.getParameter("fphoneContact_insert"));
	
	adminRegistrationDao.insertAdminRegistration_Dao(administratorRegistration_dto);
	
	%>
	
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram inseridos com sucesso.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para finalizar o cadastro!</p><br>
				
				<a href="main-panel_insert.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar inserindo</a>
				
				<a href="main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar para a
					página principal</a>
					
					
					
					
			</div>
		</div>
	</div>

</body>
</html>