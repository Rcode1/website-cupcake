<%@page import="br.com.dao.generalInformation.GeneralInformationDao"%>
<%@page import="br.com.dto.generalInformation.GeneralInformation"%>
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
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Standard admin</title>
</head>
<body>
<%
GeneralInformation generalInformation_DTO = new GeneralInformation();
GeneralInformationDao GeneralInformationDao = new GeneralInformationDao();

generalInformation_DTO.setWebsiteInformation(request.getParameter("fwebsite_information"));
generalInformation_DTO.setPrivacyPolicy(request.getParameter("fprivacy_policy"));
generalInformation_DTO.setContact(request.getParameter("fcontact"));
generalInformation_DTO.setAboutUs(request.getParameter("fabout_us"));
generalInformation_DTO.setSiteNavigation(request.getParameter("fsite_navigation"));

GeneralInformationDao.updateGeneralInformation_Dao(generalInformation_DTO);


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
				<br> <a href="adimin-standard_app-information_view.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					alterando</a> <a href="standard-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para a página principal</a>


			</div>
		</div>
	</div>

</body>
</html>