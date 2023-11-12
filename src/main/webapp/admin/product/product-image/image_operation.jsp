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

<!-- Required meta tags -->
<meta charset="utf-8">



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no ">

<title>image_operation</title>
</head>

<body>

	<%
	ProductDao productDao = new ProductDao();
	//remove os dados da lista "persistence_productImageVerification" para add novos dados, baseado na seleção de um item da lista selecionada
	productDao.removeResult_productImageList_Dao();
	productDao.result_listProductimage_Dao(Integer.parseInt(request.getParameter("fidProductImage")));
	%>

	<script>
		window.location.href = 'image_operation-view.jsp';
	</script>


</body>

</html>