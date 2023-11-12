<%@page import="br.com.dto.methods.ManipulateFiles"%>
<%@page import="br.com.dto.product.ProductImage"%>
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
<title>Insert title here</title>
</head>
<body>
	<%
	ManipulateFiles manipulateFiles = new ManipulateFiles();
	ProductDao productDao = new ProductDao();
	ProductImage productImage_obj = new ProductImage();

	productImage_obj.setIdProductImage(productDao.getResult_productImageList_Dao().get(0).getIdProductImage());
	productImage_obj.setIdProduct(productDao.getResult_productImageList_Dao().get(0).getIdProduct());

	productDao.delete_ProductImageData_Dao(productImage_obj);
	%>


	<%
	ImageFolderAddress imageFolderAddress = new ImageFolderAddress();
	String folderName = "/" + String.valueOf(productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration());

	manipulateFiles.deleteFolder(imageFolderAddress.imageFolderAddress(), folderName);
	%>



	<script>
		window.location.href = 'query_image-registration-view.jsp';
	</script>





</body>
</html>