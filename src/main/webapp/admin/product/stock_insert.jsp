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
	
	
	
	
	dto_productRegistration.setProductionDate((request.getParameter("fproductionDate")));
	dto_productRegistration.setEntryDate((request.getParameter("fentryDate")));
	dto_productRegistration.setDepartureDate((request.getParameter("fdepartureDate")));
	dto_productRegistration.setQuantityEntry((Integer.parseInt(request.getParameter("fquantityEntry"))));
	
	if(!request.getParameter("fquantityDepartury").isEmpty()){
	dto_productRegistration.setQuantityDepartury((Integer.parseInt(request.getParameter("fquantityDepartury"))));}else{
		dto_productRegistration.setQuantityDepartury(0);}
	
	dto_productRegistration.setProductPrice((Double.valueOf(request.getParameter("fproductPrice"))));
	dto_productRegistration.setProductDiscount((Double.valueOf(request.getParameter("fproductDiscount"))));
	
	
	
	ProductDao productDao = new ProductDao();
	productDao.stockProductregistration_Dao(dto_productRegistration);
	//productDao.removeResult_stockProductList_Dao();
	%>
	

	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi inserido com sucesso.</h5>
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