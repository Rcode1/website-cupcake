<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="java.util.ArrayList"%>
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
<%@ page language="java" errorPage="redirect_update-error.jsp"%>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ProductDao productDao = new ProductDao();
if(!request.getParameter("fidProductRegistration_update").isEmpty())
	if (productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration()
			.equals(Integer.parseInt(request.getParameter("fidProductRegistration_update")))) {

		ProductRegistration productRegistration_dto = new ProductRegistration();

		productRegistration_dto
		.setIdProductRegistration(Integer.parseInt(request.getParameter("fidProductRegistration_update")));

		productRegistration_dto.setCreationDate((request.getParameter("fcreationDate").isEmpty())
		? productDao.getResult_listProduct_Dao().get(0).getCreationDate()
		: request.getParameter("fcreationDate"));

		productRegistration_dto.setProductName((request.getParameter("fproductName").isEmpty())
		? productDao.getResult_listProduct_Dao().get(0).getProductName()
		: request.getParameter("fproductName"));

		productRegistration_dto.setBasicDescription((request.getParameter("fbasicDescriptionl").isEmpty())
		? productDao.getResult_listProduct_Dao().get(0).getBasicDescription()
		: request.getParameter("fbasicDescriptionl"));

		productRegistration_dto.setLongDescription((request.getParameter("flongDescription").isEmpty())
		? productDao.getResult_listProduct_Dao().get(0).getLongDescription()
		: request.getParameter("flongDescription"));

		ProductDao productDao_result = new ProductDao();
		productDao_result.updateProductRegistration_Dao(productRegistration_dto);

	
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi alterado com sucesso.</h5>
				<p class="card-text">Sua sessão será reinicializada automaticamente,
				basta dar um click no botão situado logo abaixo!</p><br>
				<a href="product-panel_operation.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					consulta de produtos</a>
			</div>
		</div>
	</div><%
	
	
	} %>


<% if(request.getParameter("fidProductRegistration_update").isEmpty()){%>
		<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Não houve alterações nos dados cadastrais.</h5>
				<p class="card-text">Talvez tenha sido a ausência da <strong>Confirmação para a alteração</strong>,
				caso este seja o motivo, basta inserir o código do produto e realizar às modificações necessárias e, em seguida, 
				click em <strong>Alterar dados</strong></p><br>
				<a href="product-panel_operation.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					consulta de produtos</a>
			</div>
		</div>
	</div>
	

<%
	}
%>

	
</body>
</html>