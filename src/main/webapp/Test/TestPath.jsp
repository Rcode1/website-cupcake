<%@page import="br.com.dto.methods.ImageFolderAddress"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.methods.ManipulateFiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ManipulateFiles manipulateFiles = new ManipulateFiles();
ProductDao productDao = new ProductDao();
String folderName =  String.valueOf(productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration());
String imageName = "/"+String.valueOf(productDao.getResult_productImageList_Dao().get(0).getIdProductImage())+".jpg";
ImageFolderAddress imageAddress = new ImageFolderAddress();

out.print(imageAddress.imageFolderAddress()+folderName.toString()+imageName.toString());

%>

</body>
</html>