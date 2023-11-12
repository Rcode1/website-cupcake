<%@page import="br.com.dto.admin.AdministratorRegistration"%>
<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java"
	errorPage="../error-redirection/error-redirection_admin-update.jsp"%>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();
	AdministratorRegistration administratorRegistration_dto = new AdministratorRegistration();
	//adminRegistrationDao.uniqueSelectResultAdmin_Dao(Integer.parseInt(request.getParameter("fidadmin_update")));
	
	if (adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getIdAdmin().equals(Integer.parseInt(request.getParameter("fidadmin_update")))) {

		if (request.getParameter("fidadmin_update").isBlank()) {
			administratorRegistration_dto.setIdAdmin(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getIdAdmin());
		} else {
			administratorRegistration_dto.setIdAdmin(Integer.parseInt(request.getParameter("fidadmin_update")));
		}
		
		administratorRegistration_dto.setAdiminDateRegistration(request.getParameter("fadiminDateRegistration_update"));
		
		if (request.getParameter("fnameAdmin_update").isBlank()) {
			administratorRegistration_dto.setNameAdmin(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getNameAdmin());
		} else {
			administratorRegistration_dto.setNameAdmin((request.getParameter("fnameAdmin_update")));
		}

		if (request.getParameter("femailAccess_update").isBlank()) {
			administratorRegistration_dto.setEmailAccess(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getEmailAccess());
		} else {
			administratorRegistration_dto.setEmailAccess((request.getParameter("femailAccess_update")));
		}

		if (request.getParameter("faccessLevel_update").isBlank()) {
			administratorRegistration_dto.setAccessLevel(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getAccessLevel());
		} else {
			administratorRegistration_dto.setAccessLevel((request.getParameter("faccessLevel_update")));
		}

		if (request.getParameter("fadminPassword_update").isBlank()) {
			administratorRegistration_dto.setAdminPassword(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getAdminPassword());
		} else {
			administratorRegistration_dto.setAdminPassword((request.getParameter("fadminPassword_update")));
		}

		if (request.getParameter("fphoneContact_update").isBlank()) {
			administratorRegistration_dto.setPhoneContact(adminRegistrationDao.getUniqueSelectResultAdmin_Dao().get(0).getPhoneContact());
		} else {
			administratorRegistration_dto.setPhoneContact((request.getParameter("fphoneContact_update")));
		}

		adminRegistrationDao.updateAdminRegistration_Dao(administratorRegistration_dto);
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram alterados com sucesso.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para
					finalizar as alterações!</p>
				<br> <a href="product-panel_update.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					alterando</a> <a href="main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para a página principal</a>


			</div>
		</div>
	</div>
	<%
	} else {
	%>

	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Não houveram alteraçãoes nos dados.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para
					continuar com as operações!</p>
				<br> <a href="product-panel_update.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					alterando</a> <a href="main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para a página principal</a>

			</div>
		</div>
	</div>
	<%
	}
	%>



</body>
</html>