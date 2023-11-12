<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@ page import="java.lang.String"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<!-- Required meta tags -->
<meta charset="utf-8">


<%@ page language="java" errorPage="../error-redirection/error-redirection_admin-query.jsp"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no ">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../css/css-personalizado/personalizacao.css">

<title>Redirect-operation</title>


</head>

<body>

	<%
	
	ClientDao clientDao = new ClientDao();

	 clientDao.removeUniqueSelectResultClient_Dao();
	 clientDao.uniqueSelectResultFoAdmin(Integer.parseInt(request.getParameter("fclient_query")));


	%>
	
	
	<script>
		window.location.href = 'client-query_full.jsp';
	</script>
	


</body>

</html>