<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
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
		dao_client.resultSelectRegistration_Dao(request.getParameter("fuser-name").toLowerCase(),
		request.getParameter("fpassword-access"));

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

	<div>

		<div class="fundo-menu fixed-top"">
			<div class="  alinhamento-tamanho_max ">

				<!-- Menu principal-->


				<!----------------------Menu principal------------------------------------>

				<button class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button>




				<button class="btn btn-light  float-left " type="button"
					style="margin: 12px; background-color: gainsboro; color: black;"
					data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasWithBothOptions"
					aria-controls="offcanvasWithBothOptions">||| Produtos</button>






				<button class="btn btn-light float-left  " type="button"
					style="margin: 2px; margin-left: 12px; background-color: gainsboro;"
					data-bs-toggle="offcanvas" aria-controls="offcanvasWithBothOptions">
					<img class=" float-left" alt="" src="../img/carrinho.png"
						style="width: 65px;">
					<p class=" float-left" style="margin-top: 10px;">Itens</p>
					<p class=" float-left" style="margin-top: 10px;">: N.° 0</p>
				</button>


				<span class="acesso-usuario">



					<ul class="nav nav menu-principal">
						<div style="width: 80px;">
							<img style="width: 80px;" src="../img/usuario.png">
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
								<a class="dropdown-item" href="#">Carrinho de compras</a>

								<div class="dropdown-divider"></div>

								<a class="dropdown-item" href="close_account.jsp">Sair</a>

							</div></li>
					</ul>

				</span>
				</button>
				<div class="offcanvas offcanvas-start" data-bs-scroll="true"
					style="max-width: 300px;" tabindex="-1"
					id="offcanvasWithBothOptions"
					aria-labelledby="offcanvasWithBothOptionsLabel">
					<div class="offcanvas-header">
						<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Listagem
							de produtos</h4>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">

						<ul class="list-group list-group-flush">
							<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Recheios
								especiais</h5>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Modelo1</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Modelo2</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Modelo3</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Modelo4</a></li>
							<hr>

							<ul class="list-group list-group-flush">
								<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Recheios
									tradicionais</h5>
								<li class="list-group-item"><a href="#"
									style="text-decoration: none;">Modelo1</a></li>
								<li class="list-group-item"><a href="#"
									style="text-decoration: none;">Modelo2</a></li>
								<li class="list-group-item"><a href="#"
									style="text-decoration: none;">Modelo3</a></li>
								<li class="list-group-item"><a href="#"
									style="text-decoration: none;">Modelo4</a></li>
								<hr>

							</ul>
					</div>
				</div>
				<br> <br> <br>

			</div>
		</div>
		<br> <br> <br>

		<!----------------- Carrocel de imagens ------------------------------------->
		<div class="alinhamento-tamanho_max " style="margin-top: 10px;">
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

	<!--------------------------Card com o produto - lançamentos----------------------------------->

	<div class="alinhamento-tamanho_max margem-carrocel">

		<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Confiram
			os nossos Lançamentos!</h4>
		<hr>

		<!--  -->

		<%
		for (int i = 0; i < 4; i++) {
		%>

		<div class="card float-left" style="width: 17rem; margin: 14px;">

			<img src="../img/bolinho.png " class="card-img-top"
				style="margin-top: 10px;">

			<div class="card-body">
				<h5 class="card-title">Bolinho cupcake</h5>
				<p class="card-text">Este bolinho tem um suave aroma acompanhado
					de um sabor inigualável</p>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Preço</li>

			</ul>
			<div class="card-body">
				<a href="#" class="card-link">Verifique as condições para
					entrega </a>

			</div>
		</div>

		<%
		}
		%>

	</div>


	<!--------------------------Card com o produto - Promocionais----------------------------------->

	<div class="alinhamento-tamanho_max">


		<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Confiram
			as nossas Promoções!</h4>
		<hr>

		<!--  -->

		<%
		for (int i = 0; i < 4; i++) {
		%>

		<div class="card float-left" style="width: 17rem; margin: 14px;">

			<img src="../img/bolinho.png " class="card-img-top"
				style="margin-top: 10px;">

			<div class="card-body">
				<h5 class="card-title">Bolinho cupcake</h5>
				<p class="card-text">Este bolinho tem um suave aroma acompanhado
					de um sabor inigualável</p>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Preço</li>

			</ul>
			<div class="card-body">
				<a href="#" class="card-link">Verifique as condições para
					entrega </a>

			</div>
		</div>

		<%
		}
		%>

	</div>
	
	<!-- Informações do rodapé do site-->
	<div class="rodape fixed-bottom">
		<div class="  alinhamento-tamanho_max ">
			<a href="#"><h6 class="card-title float-left"
					style="margin: 10px;">° Entre em contato</h6></a> <a href="#"><h6
					class="card-title float-left" style="margin: 10px;">° Quem
					somos</h6></a> <a href="#"><h6 class="card-title float-left"
					style="margin: 10px;">° Política de privacidade</h6></a> <a href="#"><h6
					class="card-title float-left" style="margin: 10px;">°
					Navegação no site</h6></a>
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