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
	ProductDao productDao = new ProductDao();
	ProductRegistration ProductRegistration_obj = new ProductRegistration();

	if (!request.getParameter("fidStock").isEmpty())
		if (productDao.getUniqueStockResultList_Dao().get(0).getIdProductStock()
		.equals(Integer.parseInt(request.getParameter("fidStock")))) {

			ProductRegistration_obj.setIdProductStock(Integer.parseInt(request.getParameter("fidStock")));
			productDao.excludeProductStok_Dao(ProductRegistration_obj);
	%>

	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi deletado com sucesso.</h5>
				<p class="card-text">Sua sessão será reinicializada
					automaticamente, basta dar um click no botão situado logo abaixo!</p>
				<br> <a href="product-panel_operation.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para
					a consulta de produtos</a>
			</div>
		</div>
	</div>
	<%
	}
	%>

	<%
	if ((request.getParameter("fidStock").isEmpty())) {
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Não foi possível deletar os dados
					cadastrais.</h5>
				<p class="card-text">
					Talvez tenha sido a ausência da <strong>Confirmação para
						deletar</strong>, caso este seja o motivo, basta inserir o código do
					produto e realizar às modificações necessárias e, em seguida, click
					em <strong>Excluir dados</strong>
				</p>
				<br> <a href="product-panel_operation.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para
					a consulta de produtos</a>
			</div>
		</div>
	</div>



	<%
	productDao.excludeProductStok_Dao(ProductRegistration_obj);
	}
	%>

















</body>
</html>