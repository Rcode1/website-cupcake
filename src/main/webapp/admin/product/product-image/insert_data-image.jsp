<%@page import="br.com.dto.methods.ImageFolderAddress"%>
<%@page import="java.io.File"%>
<%@page import="br.com.dto.product.ProductImage"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ page language="java" errorPage="#"%>

<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ProductDao productDao = new ProductDao();
	ProductImage productImage_obj = new ProductImage();
	ImageFolderAddress imageFolderAddress = new ImageFolderAddress();
	%>

	<%
	productImage_obj.setIdProduct(Integer.parseInt(request.getParameter("fidProductRegistration")));
	productImage_obj.setImageCategory(request.getParameter("fcategory"));
	productDao.insert_productImage_Dao(productImage_obj);
	
	%>

	<%--Iniciação do DB da imagem e a criação de uma pasta para o armazenamento das imagem --%>


	<%
	String folder = String.valueOf(productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration());

	File file = new File(imageFolderAddress.imageFolderAddress() + folder);

	if (!file.exists()) {
		file.mkdirs();
		
	}
		
	%>
	
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Seu cadastro foi inserido com sucesso.</h5>
				<p class="card-text">Sua sessão será reinicializada automaticamente,
				basta dar um click no botão situado logo abaixo!</p><br>
				<a href="query_image-registration-view.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para a
					inserção de imagens</a>
			</div>
		</div>
	</div>

	




</body>
</html>