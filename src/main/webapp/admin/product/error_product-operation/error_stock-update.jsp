<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../css/css-personalizado/personalizacao.css">
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 500px; padding: 10px;">
		<div>
			<img style="max-width: 100%" src="../../../img/erro.jpeg">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Erro ao tentar atualizar o cadastro.</h5>
				<p class="card-text">
					Houve um problena na atualiza��o dos dados cadastrais, pode ter sido a
					aus�ncia da <strong> confirma��o para atualiza��o</strong> , por
					gentileza, pedimos que acesse novamente o conte�do e reinicie este
					procedimento de atualiza��o do cadastro,  acrescentando o 
					o item j� mencionado, caso n�o consiga atualizar entre em contato conosco!
				</p>
				<a href="../stock-panel_update.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;"> Retornar para a atualiza��o de cadastro
				</a>


			</div>
		</div>
	</div>

</body>
</html>