<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
				<h5 class="card-title ">Erro referente a área de cancelamento
					do cadastro.</h5>
				<p class="card-text">
					Houve um problena na área destinada a deletar os dados cadastrais,
					talves tenha sido a ausência da <strong>confirmação para
						exclusão</strong>, por gentileza, pedimos que acesse novamente a sua conta
					e realize o mesmo procedimento, acrescentando o o item já
					mencionado, caso não consiga deletar entre em contato conosco!
				</p>
				<a href="../main-admin/main-page_home.jsp" class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;"> Retornar
					para página principal </a>
			</div>
		</div>
	</div>

</body>
</html>