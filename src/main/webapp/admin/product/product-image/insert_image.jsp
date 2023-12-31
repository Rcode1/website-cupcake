<%@page import="br.com.dto.methods.ManipulateFiles"%>
<%@page import="br.com.dto.methods.ImageFolderAddress"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.filechooser.FileSystemView"%>
<%@page import="javax.swing.JFileChooser"%>
<%@page import="java.nio.file.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
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
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">

<meta charset="utf-8">
<title>Insert_image</title>
</head>
<body>

	<%
	ManipulateFiles manipulateFiles = new ManipulateFiles();
	ProductDao productDao = new ProductDao();
	String folderName =  String.valueOf(productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration());
	String imageName = "/"+String.valueOf(productDao.getResult_persistence_imagePathArchive().get(0).getIdProductImage())
			+ ".jpg";
	ImageFolderAddress imageFolderAddress = new ImageFolderAddress();
	
	manipulateFiles.uploadFile(imageFolderAddress.imageFolderAddress(), folderName, imageName);
	
	%>
	
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Sua imagem foi inserida com sucesso.</h5>
				<p class="card-text">Sua sessão será reinicializada
					automaticamente, basta dar um click no botão situado logo abaixo!</p>
				<br> <a href="image_operation-view.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">Retornar para
					a consulta de imagens</a>
			</div>
		</div>
	</div>


	
</body>
</html>