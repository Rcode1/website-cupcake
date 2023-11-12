<%@page import="java.lang.String" %>
<%@page import="br.com.dto.methods.ProductData"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!--  -->
	<%
	ProductData productData = new ProductData();
	ProductDao productDao = new ProductDao();

	// Lista com as informações do registro do produto 
	ArrayList<ProductRegistration> productRegistration = new ArrayList<>();
	//productRegistration = productData.productRegistration_List();
	productDao.select_productStock_dao();
	productDao.select_productRegistration_dao();

	for (int i = 0; i < productRegistration.size(); i++) {
	%>

	<div class="card float-left" style="width: 17rem; margin: 14px;">

		<img
			src="<%="img/"
		+ productData.list_productImage(productRegistration.get(i).getIdProductRegistration(), "Principal").get(i)
				.getIdProduct()
		+ "/" + productData.list_productImage(productRegistration.get(i).getIdProductRegistration(), "Principal").get(i)
				.getIdProductImage()
		+ ".jpg"%>"
			class="card-img-top"
			style="margin-top: 10px; max-height: 300px; min-height: 200px;">

		<div class="card-body">
			<h5 class="card-title"><%=productRegistration.get(i).getProductName()%></h5>
			<p class="card-text"><%=productRegistration.get(i).getBasicDescription()%></p>
		</div>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">Preço: R$ <%
			ArrayList<Object> productStock = new ArrayList<>();

		//	if (productDao.getResult_stockProductList_Dao().isEmpty())
				//if (productDao.getResult_stockProductList_Dao().get(i).equals(false))
			
			
			{
			%> <%=productData.productStock_List1(productRegistration.get(i)
					.getIdProductRegistration()).get(0).getProductPrice()%> 
			<% productStock.remove(i); }
 	%>
			</li>

		</ul>
		<div class="card-body">
			<a href="#" class="card-link">Verifique as condições para entrega
			</a>

		</div>
	</div>

	<%
	}
	%>


</body>
</html>