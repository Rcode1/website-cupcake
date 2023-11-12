<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../css/css-personalizado/personalizacao.css">

<meta charset="ISO-8859-1">
<%@ page language="java" errorPage="access_redirect-view.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<%
	ClientDao dao_client = new ClientDao();
	//ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	try {

		//Este linha traz como resultado às informações contidas no DB de acordo com o usuário e senha
		dao_client.resultSelectRegistration_Dao(request.getParameter("fuser-name"),
		request.getParameter("fpassword-access"));

		//Esta condição verifica os dados de login e senha; o método no escopo limpa os dados, de forma que, ao sair as informações cadastrais não fiquem em aberto.		
		if (request.getParameter("fuser-name") != dao_client.clientDataPersistence().get(1).getCheckEmail())
			if (request.getParameter("fpassword-access") != dao_client.clientDataPersistence().get(1).getPassword()) {
		ClientDao dao_client1 = new ClientDao();
		dao_client1.close_resultSelectRegistration_Dao();
			}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

	<div>

		<div class="fundo-menu fixed-top">
			<div class="  alinhamento-tamanho_max ">

				<!-- Menu principal-->

				<!------------------------ Botao do menu com sub menu ----------------------->
				<span class="float-right">
					<ul class="nav nav menu-principal">
						<div style="width: 45px; padding-top: 5px;">
							<img style="width: 50px;" src="../img/usuario.png">
						</div>
						<li class="nav-item dropdown"><p
								style="margin: 0px; padding-left: 15px;"><%=dao_client.clientDataPersistence().get(1).getName()%></p>
							<a class="nav-link dropdown-toggle color-menu"
							style="padding-right: 10px;" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Painel
								do cliente</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item "
									href="../client/client-form/return-client-registration_view.jsp">Visualizar
									cadastro </a> <a class="dropdown-item"
									href="../client/client-form/alter-client-registration_view.jsp">Atualizar
									cadastro </a> <a class="dropdown-item"
									href="../client/client-form/delete-client-registration_view.jsp">Deletar
									cadastro</a>
								<div class="dropdown-divider"></div>

								<a class="dropdown-item" href="close_account.jsp">Sair</a>

							</div></li>
					</ul>
				</span>

				<!-----------------------Botões básicos------------------------------------>
				<ul class="nav nav-tabs menu-principal">
					<li class="nav-item dropdown"><a class="nav-link active "
						href="#">Início</a></li>
				</ul>


				<!------------------------ Botao do menu com sub menu ----------------------->
				<span>
					<ul class="nav nav-tabs menu-principal">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle color-menu"
							data-toggle="dropdown" href="#" role="button"
							aria-haspopup="true" aria-expanded="false">Informações</a>
							<div class="dropdown-menu">
								<a class="dropdown-item " href="#">Quem somos</a> <a
									class="dropdown-item" href="#">Missão</a> <a
									class="dropdown-item" href="#">Contato</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Separated link</a>
							</div></li>
					</ul>
				</span>

				<!------------------------ Botao quem somos ----------------------->
				<!--  <ul class="nav nav menu-principal">
				<li class="nav-item dropdown">
					<a class="nav-link color-menu" href="#">Quem somos</a>
				</li>
			</ul>-->





			</div>
		</div>
		<!----------------- Carrocel de imagens ------------------------------------->
		<div class="alinhamento-tamanho_max" style="margin-top: 80px">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="../img/1.jpg" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="../img/2.jpg" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="../img/3.jpg" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>

	</div>


















	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>

</html>
</body>
</html>