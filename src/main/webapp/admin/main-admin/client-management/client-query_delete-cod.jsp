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
	href="../../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../../css/css-personalizado/personalizacao.css">

<title>Redirect-operation</title>


</head>

<body>

	<%
	ClientDao clientDao = new ClientDao();

	ClientRegistration clientRegistration_obj = new ClientRegistration();
	if (!request.getParameter("fidClient").isEmpty()) {
		clientRegistration_obj.setIdClient(Integer.parseInt(request.getParameter("fidClient")));
		clientDao.excludeClientRegistration_Dao(clientRegistration_obj);
		clientDao.close_resultSelectRegistrationForAdmin_Dao();
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
		<div
			style="border: 1px solid #C4C3C3; max-width: 400px; padding: 10px;">
			<img style="max-width: 100%" src="../../../img/cadastro.png">
			<div class="card-body" style="margin: auto auto;">
				<h5 class="card-title ">Os dados foram excluidos com sucesso.</h5>
				<p class="card-text">Selecione abaixo o botão desejado para
					finalizar o processo de exclusão!</p>
				<br> <a href="client-query_basic.jsp" class="btn btn-primary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Continuar
					excluindo</a> <a href="../../main-admin/main-page_home.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto; margin-top: 5px;">Retornar
					para a página principal</a>


			</div>
		</div>
	</div>

	<%
	}
	%>

	<%
	if (request.getParameter("fidClient").isEmpty()) {
	%>
	<div class="center-div"
		style="border: 1px solid #C4C3C3; max-width: 500px; padding: 10px;">
		<div>
			<img style="max-width: 100%" src="../../../img/erro.jpeg">
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
				<a href="../../main-admin/main-page_home.jsp"
					class="btn btn-secondary"
					style="text-decoration: none; margin: auto auto;"> Retornar
					para página principal </a>
			</div>
		</div>
	</div>
	<%
	}
	%>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>