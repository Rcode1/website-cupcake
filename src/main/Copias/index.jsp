<%@page import="br.com.dto.product.ProductImage"%>
<%@page import="br.com.dto.methods.ProductData"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="java.lang.String"%>
<%@page import="br.com.dto.methods.ProductData_Lixo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<!-- Required meta tags -->
<meta charset="utf-8">

<%@ page language="java" errorPage="redirect_error.jsp"%>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">


<title>Home</title>
<meta charset="utf-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="css/css-personalizado/personalizacao.css">
</head>

<body>

	<div class=" fundo-menu fixed-top">
		<div class=" alinhamento-tamanho_max " style="min-width: 800px;">





			<!----------------------Menu principal------------------------------------>

			<button class="btn btn-light float-left " type="button"
				style="margin: 12px;" data-bs-toggle="offcanvas"
				aria-controls="offcanvasWithBothOptions">Início</button>




			<button class="btn btn-light  float-left " type="button"
				style="margin: 12px; background-color: gainsboro; color: black;"
				data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasWithBothOptions"
				aria-controls="offcanvasWithBothOptions">||| Produtos</button>

			<a href="access/access-account.jsp"><button
					class="btn btn-light float-left  " type="button"
					style="margin: 2px; margin-left: 12px; background-color: gainsboro;"
					data-bs-toggle="offcanvas" aria-controls="offcanvasWithBothOptions">
					<img class=" float-left" alt="" src="img/carrinho.png"
						style="width: 65px;">
					<p class=" float-left" style="margin-top: 10px;">Compras</p>

				</button></a> <a href="access/access-account.jsp"><button
					class="btn btn-light float-right " type="button"
					style="margin: 12px; background-color: gainsboro;"
					data-bs-toggle="offcanvas" aria-controls="offcanvasWithBothOptions">
					<img src="img/usuario.png " style="width: 80px;"> Acessar
					conta
				</button></a>


			<div class="offcanvas offcanvas-start" data-bs-scroll="true"
				style="max-width: 300px;" tabindex="-1"
				id="offcanvasWithBothOptions"
				aria-labelledby="offcanvasWithBothOptionsLabel">
				<div class="offcanvas-header">
					<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Listagem
						de produtos</h4>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
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
	<br>
	<br>
	<br>


	<!----------------- Carrocel de imagens ------------------------------------->


	<div class="alinhamento-tamanho_max margem-carrocel ">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
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


	<div class="alinhamento-tamanho_max margem-carrocel">


		<!--------------------------Card com o produto----------------------------------->
		<div style="margin-bottom: 50px;">
			<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Confiram
				os nossos principais produtos!</h4>
			<hr>

			<!--  -->
			<%
			ProductData productData = new ProductData();
			ArrayList<ProductRegistration> productRegistration = new ArrayList<>();
			productRegistration = productData.productRegistration_List();

			ProductDao productDao = new ProductDao();
			ArrayList<ProductImage> selectProductDao = new ArrayList<>();
			selectProductDao = productDao.select_productImage_dao();

			ArrayList<ProductImage> result_selectProductDao = new ArrayList<>();

		//	int a = 0;
		//	for (int i = 0; i < selectProductDao.size(); i++) {

			//	if (productRegistration.get(a).getIdProductRegistration().equals(selectProductDao.get(i).getIdProduct())) {
				//	result_selectProductDao.add(selectProductDao.get(i));

			//	}

		//	}
			%>


			<%
			for (int i = 0; i < productRegistration.size(); i++) {
			//	a = productRegistration.get(i).getIdProductRegistration();
			%>

			<div class="card float-left" style="width: 17rem; margin: 14px;">

				<img
					src="<%="img/" + productRegistration.get(i).getIdProductRegistration() + "/"
		+selectProductDao.get(i).getIdProductImage()+".jpg"%>"
					class="card-img-top" style="margin-top: 10px; max-height:200px;min-height:200px;">

				<div class="card-body">
					<h5 class="card-title"><%=productRegistration.get(i).getProductName()%></h5>
					<p class="card-text"><%=productRegistration.get(i).getBasicDescription()%></p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Preço: R$ <%=productData.productStock_List1(productRegistration.get(i).getIdProductRegistration()).get(0).getProductPrice()%>
					</li>

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
	</div>
	<div style="min-height: 80px; clear: left;"></div>

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
	<script src="js/bootstrap.min.js"></script>
</body>

</html>