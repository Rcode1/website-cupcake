<%@page import="br.com.dto.product.ProductImage"%>
<%@page import="br.com.dao.product.ProductDao"%>
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
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ProductDao productDao = new ProductDao();
	ProductImage productImageUpdate_obj = new ProductImage();
	productImageUpdate_obj.setIdProductImage(productDao.getResult_productImageList_Dao().get(0).getIdProductImage());
	productImageUpdate_obj.setImageCategory(request.getParameter("fCategory"));
	productDao.updateProductImage_Dao(productImageUpdate_obj);

	
	%>
	
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi alterado com sucesso.</h5>
				<p class="card-text">Sua sessão será reinicializada automaticamente,
				basta dar um click no botão situado logo abaixo!</p><br>
				<a href="query_image-registration-view.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					tela de operações</a>
			</div>
		</div>
	</div>
	




</body>
</html>