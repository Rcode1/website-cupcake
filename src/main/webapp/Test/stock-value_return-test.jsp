<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dto.methods.ProductData"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>Teste para verificação do retorno dos preços dos produtos cadastrados no estoque. Caso o valor 
	seja null a lista productStock_List não será processada</p>
	<%
	ProductData productData = new ProductData();
	ProductDao productDao = new ProductDao();
	ArrayList<ProductRegistration> productRegistration = new ArrayList<>();
	productRegistration = productData.productRegistration_List();
	%>

	<%
	for (int i = 0; i < productRegistration.size(); i++) {
	%>

	<%
	if (productData.productStock_List(productRegistration.get(i).getIdProductRegistration()) != null) {
	%>

	Valor <%=i+" - "+productData.productStock_List(productRegistration.get(i).getIdProductRegistration()).get(0).getProductPrice() +"<br>" %>

	<%
	}
	%>
	<%
	}
	%>
</body>
</html>