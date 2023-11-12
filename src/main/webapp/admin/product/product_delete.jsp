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
<%@ page language="java" errorPage="redirect_delete-error.jsp"%>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ProductDao productDao = new ProductDao();
	ProductRegistration ProductRegistration_obj = new ProductRegistration();
	ProductRegistration_obj.setIdProductRegistration(Integer.parseInt(request.getParameter("fidProduct")));
	productDao.excludeProductRegistration_Dao(ProductRegistration_obj);
	%>

	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram excluidos com sucesso.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para
					finalizar o processo de exclusão!</p>
				<br> <a href="product-panel_delete.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					excluindo</a> <a href="../main-page_home.jsp" class="btn btn-secondary"
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