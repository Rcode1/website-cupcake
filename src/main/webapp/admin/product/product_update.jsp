<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

	} else {
		out.print("não realizou a alteração");
	}
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
					alterando</a> <a href="../main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para a página principal</a> <a href="product-panel_operation.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para o painel de operações</a>


			</div>
		</div>
	</div>

</body>
</html>