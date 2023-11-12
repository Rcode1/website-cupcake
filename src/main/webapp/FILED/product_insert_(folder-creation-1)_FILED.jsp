<%@page import="java.io.File"%>
<%@page import="br.com.dto.methods.ImageFolderAddress"%>
<%@page import="br.com.dto.product.ProductImage"%>
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

	<%-- Instâncias --%>
	<%
	ProductDao productDao = new ProductDao();
	ProductDao productDao1 = new ProductDao();
	ImageFolderAddress imageFolderAddress = new ImageFolderAddress();
	ProductImage productImage_obj = new ProductImage();
	ProductRegistration dto_productRegistration = new ProductRegistration();
	%>

	<%--Inserção dos dados no DB --%>
	<%
	dto_productRegistration.setCreationDate((request.getParameter("fcreationDate_insert")));
	dto_productRegistration.setProductName(request.getParameter("fproductName"));
	dto_productRegistration.setBasicDescription(request.getParameter("fbasicDescription_insert"));
	dto_productRegistration.setLongDescription(request.getParameter("flongDescription_insert"));

	productDao1.productRegistration_Dao(dto_productRegistration);
	%>

	<%--Iniciação do DB da imagem e a criação de uma pasta para o armazenamento das imagem --%>
	<%
	


	
	
	for (int i = 0; i < productDao.getResult_listProduct_Dao().size(); i++) {

		if (productDao.getResult_productImageList_Dao().isEmpty()) {

			productImage_obj.setIdProduct(productDao.getResult_listProduct_Dao().get(i).getIdProductRegistration());
			productDao.insert_productImage_Dao(productImage_obj);

			String folder = String.valueOf(productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration());

			File file = new File(imageFolderAddress.imageFolderAddress() + folder);

			if (!file.exists()) {
		file.mkdirs();
			}
		}
	}
	%>

	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram inseridos com sucesso.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para
					finalizar o cadastro!</p>
				<br> <a href="product-panel_insert.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					inserindo</a> <a href="../main-page_home.jsp" class="btn btn-secondary"
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