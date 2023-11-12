<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/css-personalizado/personalizacao.css">

	<title>Home</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div>
		<div class=" fixed-top alinhamento-tamanho_max">

			<!-- Menu principal-->

			<!-----------------------Botões básicos------------------------------------>
			<ul class="nav nav-tabs menu-principal">
				<li class="nav-item">
					<a class="nav-link active " href="#">Página inicial</a>
				</li>
			</ul>


			<!------------------------ Botao do menu com sub menu ----------------------->
			<span>
				<ul class="nav nav menu-principal">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle color-menu" data-toggle="dropdown" href="#" role="button"
							aria-haspopup="true" aria-expanded="false">Produtos</a>
						<div class="dropdown-menu">
							<a class="dropdown-item " href="#">Cupcake padrão</a>
							<a class="dropdown-item"#">Cupcake especiais</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Separated link</a>
						</div>
					</li>
				</ul>
			</span>

			<!------------------------ Botao quem somos ----------------------->
			<ul class="nav nav menu-principal">
				<li class="nav-item">
					<a class="nav-link color-menu" href="#">Quem somos</a>
				</li>
			</ul>


			<!--------------------Botão acessar conta-------------------------------------------->
			<!--Botao para acessar o método cadastrar usuário-->
			<a href="access/access-account.jsp"><button type="button" class="btn btn-secundary btn-sm float-right"
					style="margin: 18px;">Acessar
					conta!</button></a>
			<br><br><br>
		</div>
	</div><br><br><br>


	<!----------------- Carrocel de imagens ------------------------------------->
	<div class="alinhamento-tamanho_max">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/1.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/2.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/3.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>


















	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>