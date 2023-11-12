<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" errorPage="redirect_stock-update-error.jsp"%>

<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ProductDao productDao = new ProductDao();

	if (productDao.getUniqueStockResultList_Dao().get(0).getIdProductStock()
			.equals(Integer.parseInt(request.getParameter("fidStock")))) {
		ProductRegistration productRegistration_dto = new ProductRegistration();

		productRegistration_dto.setIdProductStock(Integer.parseInt(request.getParameter("fidStock")));

		if (request.getParameter("fproductionDate").isEmpty()) {

			productRegistration_dto.setProductionDate(productDao.getUniqueStockResultList_Dao().get(0).getProductionDate());
		} else {
			productRegistration_dto.setProductionDate(request.getParameter("fproductionDate"));
		}

		if (request.getParameter("fentryDate").isEmpty()) {

			productRegistration_dto.setEntryDate(productDao.getUniqueStockResultList_Dao().get(0).getEntryDate());
		} else {
			productRegistration_dto.setEntryDate(request.getParameter("fEntryDate"));
		}

		if (request.getParameter("fdepartureDate").isEmpty()) {

			productRegistration_dto.setDepartureDate(productDao.getUniqueStockResultList_Dao().get(0).getDepartureDate());
		} else {
			productRegistration_dto.setDepartureDate(request.getParameter("fdepartureDate"));
		}

		if (request.getParameter("fquantityEntry").isEmpty()) {

			productRegistration_dto.setQuantityEntry(productDao.getUniqueStockResultList_Dao().get(0).getQuantityEntry());
		} else {
			productRegistration_dto.setQuantityEntry(Integer.parseInt(request.getParameter("fquantityEntry")));
		}

		if (request.getParameter("fquantityDepartury").isEmpty()) {

			productRegistration_dto
			.setQuantityDepartury(productDao.getUniqueStockResultList_Dao().get(0).getQuantityDepartury());

		} else {

			productRegistration_dto.setQuantityDepartury(Integer.parseInt(request.getParameter("fquantityDepartury")));

		}

		if (request.getParameter("fproductPrice").isEmpty()) {

			productRegistration_dto.setProductPrice(productDao.getUniqueStockResultList_Dao().get(0).getProductPrice());

		} else {
			productRegistration_dto.setProductPrice(Double.parseDouble(request.getParameter("fproductPrice")));
		}

		if (request.getParameter("fproductDiscount").isEmpty()) {

			productRegistration_dto
			.setProductDiscount(productDao.getUniqueStockResultList_Dao().get(0).getProductDiscount());
		} else {

			productRegistration_dto.setProductDiscount(Double.parseDouble(request.getParameter("fproductDiscount")));
		}

		productRegistration_dto
		.setIdProductRegistration(productDao.getUniqueStockResultList_Dao().get(0).getIdProductRegistration());

		productDao.updateProductStock_Dao(productRegistration_dto);

	} else {
	
	}
	for(int i = 0; i<productDao.select_productStock_dao().size(); i++){
	
	productDao.removeResult_stockProductList_Dao();
	productDao.removeUniqueStockResultList_Dao();
	
	}
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
				<a href="stock-panel_operation.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					consulta de estoque</a>
			</div>
		</div>
	</div>


</body>
</html>