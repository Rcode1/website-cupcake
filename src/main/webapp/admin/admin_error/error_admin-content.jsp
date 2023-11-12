<%@page import="br.com.dao.client.ClientDao"%>
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

<title>Error</title>
</head>
<body>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 500px; padding: 10px;">
		<div>
			<img style="max-width: 100%" src="../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Acesso não permitido.</h5>
				<p class="card-text">Houve um problema ao tentar acessar este conteúdo, por gentileza, 
				tente novamente!</p>
				<a href="../main-admin/main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;"> Retornar. 
				</a>
			</div>
		</div>
	</div>

</body>
</html>