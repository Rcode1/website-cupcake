<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>


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
	
	
	ProductRegistration dto_productRegistration = new ProductRegistration();

	dto_productRegistration.setProductionDate((request.getParameter("fproductionDate_insert")));
	dto_productRegistration.setProductName(request.getParameter("fproductName"));
	dto_productRegistration.setBasicDescription(request.getParameter("fbasicDescription_insert"));
	dto_productRegistration.setLongDescription(request.getParameter("flongDescription_insert")); 
	

	ProductDao productDao = new ProductDao();
	productDao.productRegistration_Dao(dto_productRegistration);
	%>
	<%
//	ProductDao productDao = new ProductDao();
	//ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	//Este linha traz como resultado às informações contidas no DB de acordo com o usuário e senha
	//dao_client.resultSelectRegistration_Dao(dto_registrationClient.getEmailRegistration(),
	//		dto_registrationClient.getPassword());
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