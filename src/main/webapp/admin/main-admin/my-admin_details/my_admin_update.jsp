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

<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();
	AdministratorRegistration administratorRegistration_dto = new AdministratorRegistration();
	adminRegistrationDao.removeUniqueSelectResultAdmin_Dao();
	//adminRegistrationDao.uniqueSelectResultAdmin_Dao(Integer.parseInt(request.getParameter("fidadmin_update"))); 

	if (adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getIdAdmin()
			.equals(Integer.parseInt(request.getParameter("fidadmin_update")))) {

		if (request.getParameter("fidadmin_update").isBlank()) {
			administratorRegistration_dto
			.setIdAdmin(adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getIdAdmin());
		} else {
			administratorRegistration_dto.setIdAdmin(Integer.parseInt(request.getParameter("fidadmin_update")));
		}

		if (request.getParameter("fnameAdmin_update").isBlank()) {
			administratorRegistration_dto
			.setNameAdmin(adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getNameAdmin());
		} else {
			administratorRegistration_dto.setNameAdmin((request.getParameter("fnameAdmin_update")));
		}

		if (request.getParameter("fadiminDateRegistration_update").isBlank()) {
			administratorRegistration_dto.setAdiminDateRegistration(
			adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getAdiminDateRegistration());
		} else {
			administratorRegistration_dto.setAdiminDateRegistration(request.getParameter("fadiminDateRegistration_update"));
		}

		if (request.getParameter("femailAccess_update").isBlank()) {
			administratorRegistration_dto
			.setEmailAccess(adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getEmailAccess());
		} else {
			administratorRegistration_dto.setEmailAccess((request.getParameter("femailAccess_update")));
		}

		if (request.getParameter("faccessLevel_update").isBlank()) {
			administratorRegistration_dto
			.setAccessLevel(adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getAccessLevel());
		} else {
			administratorRegistration_dto.setAccessLevel((request.getParameter("faccessLevel_update")));
		}

		if (request.getParameter("fadminPassword_update").isBlank()) {
			administratorRegistration_dto.setAdminPassword(
			adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getAdminPassword());
		} else {
			administratorRegistration_dto.setAdminPassword((request.getParameter("fadminPassword_update")));
		}

		if (request.getParameter("fphoneContact_update").isBlank()) {
			administratorRegistration_dto
			.setPhoneContact(adminRegistrationDao.getUniqueSelectResultAdmin_UPDATE_Dao().get(0).getPhoneContact());
		} else {
			administratorRegistration_dto.setPhoneContact((request.getParameter("fphoneContact_update")));
		}

		adminRegistrationDao.updateAdminRegistration_Dao(administratorRegistration_dto);
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram alterados com sucesso.</h5>
				<p class="card-text">Para que as alterações sejam finalizadas
					será necessário saír e acessar novamente o aplicativo!</p>
				<br> <a href="../../../admin/admin_closed.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Click
					aqui para finalizar a operação</a>


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
			<img style="max-width: 100%" src="../../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Não houveram alteraçãoes nos dados.</h5>
				<p class="card-text">Utiliza o botão abaixo para reiniciar a
					operação!</p>
				<br> <a href="../../main-admin/main-page_home.jsp"
					class="btn btn-secondary"
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