<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">
<meta charset="utf-8">
<%@ page language="java" errorPage="error_registration/error.jsp"%>
<title>Error</title>
</head>
<body>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 500px; padding: 10px;">
		<div>
			<img style="max-width: 100%" src="../../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Erro de retorno do cadastro.</h5>
				<p class="card-text">Houve um problema no retorno dos dados, provavelmente tenha sido a ausência de dados, 
				por gentileza, retorne esta operação através do botão abaixo e tente novamente! 
					</p>
				<a href="../product-panel_operation.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;">
					<%
					
					%>Retornar para o painel de seleção de produtos.
				</a>
			</div>
		</div>
	</div>

</body>
</html>