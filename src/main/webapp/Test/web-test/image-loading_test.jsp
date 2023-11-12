<%@page import="br.com.dto.methods.ProductData"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dto.product.ProductImage"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- Teste Unitário: Retorno das informações das imagens com filtro de ID do produto e categoria  --%>
	<%
	ProductData productData = new ProductData();
	ProductDao productDao = new ProductDao();
	ProductImage productImage_obj = new ProductImage();
	ProductImage productImage_obj1 = new ProductImage();

	// Lista com as informações do registro do produto 
	ArrayList<ProductRegistration> productRegistration = new ArrayList<>();
	productRegistration = productData.productRegistration_List();

	//Lista com as informações das imagens
	ArrayList<ProductImage> selectProductImage_dao = new ArrayList<>();
	selectProductImage_dao = productDao.select_productImage_dao();

	ArrayList<ProductImage> result_selectProductImage = new ArrayList<>();
    
	//Condição para introduzir uma imagem padrão, caso não tenha nenhuma cadastrada. 
	Boolean listNull = null;

	for (int i = 0; i < selectProductImage_dao.size(); i++) {

		productImage_obj.setIdProduct(5);
		productImage_obj.setImageCategory("Principal");
		listNull = true;

		if (selectProductImage_dao.get(i).getIdProduct().equals(productImage_obj.getIdProduct())
		&& selectProductImage_dao.get(i).getImageCategory().equals(productImage_obj.getImageCategory())) {

			result_selectProductImage.add(selectProductImage_dao.get(i));
			listNull = false;

		}

		if (listNull = true) {
			productImage_obj.setIdProduct(1000);
			productImage_obj.setIdProductImage(1000);
			productImage_obj.setImageCategory("Principal");

			result_selectProductImage.add(productImage_obj);

		}

	}

	for (int i = 0; i < result_selectProductImage.size(); i++) {
		out.print(result_selectProductImage.get(i).getIdProduct() + "<br>");
		out.print(result_selectProductImage.get(i).getIdProductImage() + "<br>");
		out.print(result_selectProductImage.get(i).getImageCategory() + "<br>" + "<br>");

		out.print("Tamanho da lista de  productRegistration " + productRegistration.size() + "<br>");

	}
	%>
</body>
</html>