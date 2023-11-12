<%@page import="br.com.dao.generalInformation.GeneralInformationDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.methods.ProductData"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" errorPage="access_redirect-view.jsp"%>
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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="../css/css-personalizado/personalizacao.css">

<meta charset="utf-8">

<title>Insert title here</title>
</head>


<body>


	<div>

		<div class="fundo-menu fixed-top">
			<div class="  alinhamento-tamanho_max ">

				<!-- Menu principal-->



				<%----------------------Menu principal------------------------------------%>

				<a href="../index.jsp"><button class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>
					




				<button class="btn btn-light  float-left " type="button"
					style="margin: 12px; background-color: gainsboro; color: black;"
					data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasWithBothOptions"
					aria-controls="offcanvasWithBothOptions">||| Informações
					gerais</button>

				<a href="../access/access-account.jsp"><button
						class="btn btn-light float-left  " type="button"
						style="margin: 2px; margin-left: 12px; background-color: gainsboro;"
						data-bs-toggle="offcanvas"
						aria-controls="offcanvasWithBothOptions">
						<img class=" float-left" alt="" src="../img/carrinho.png"
							style="width: 65px;">
						<p class=" float-left" style="margin-top: 10px;">Compras</p>
					</button></a> <a href="../access/access-account.jsp"><button
						class="btn btn-light float-right " type="button"
						style="margin: 12px; background-color: gainsboro;"
						data-bs-toggle="offcanvas"
						aria-controls="offcanvasWithBothOptions">
						<img src="../img/usuario.png " style="width: 80px;"> Acessar
						conta
					</button></a>



			</div>
		</div>
		<%---------------------Inicio do menu Lateral------------------------------------%>


		<div class="offcanvas offcanvas-start" data-bs-scroll="true"
			style="max-width: 300px;" tabindex="-1" id="offcanvasWithBothOptions"
			aria-labelledby="offcanvasWithBothOptionsLabel">
			<div class="offcanvas-header">
				<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Informações
					gerais</h4>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Sobre
					a empresa</h5>

				<ul class="list-group list-group-flush">

							<li class="list-group-item"><a
								href="../website-information/public-website-information.jsp"
								style="text-decoration: none;">Informações do site</a></li>
							<li class="list-group-item"><a
								href="../website-information/public-privacy-police.jsp"
								style="text-decoration: none;">Política de privacidade</a></li>
							<li class="list-group-item"><a
								href="../website-information/public-contact.jsp"
								style="text-decoration: none;">Entre em contato conosco</a></li>
							<li class="list-group-item"><a
								href="../website-information/public-site-navigation.jsp"
								style="text-decoration: none;">Navegação do site</a></li>

							<hr>

						</ul>

			</div>
		</div>
		<br> <br> <br> <br>

		<%---------------------Fim do menu lateral------------------------------------%>

		<%---------------------Início do conteúdo------------------------------------%>

		<%
		GeneralInformationDao generalInformationDao = new GeneralInformationDao();
		%>



		<div class="  alinhamento-tamanho_max ">

			<div>
				<h3 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Navegação no site</h3>
			</div>


		</div>


		<div class="  alinhamento-tamanho_max " Style="text-align: center;">


			<div Style="margin-top: 20px;">
				<img Style="max-width: 800px;"
					src="../img/site-navigation/site_navigation.jpg
					">

				<div Style="margin-top: 90px;">
					<p><%=generalInformationDao.select_generalInformation_dao().get(0).getSiteNavigation()%></p>


				</div>
			</div>

		</div>

		<%---------------------Fim do conteúdo------------------------------------%>

		<div style="clear: left; min-height: 80px;"></div>

	</div>

	<br>
	<br>
	<br>

	<%--Informações do rodapé do site --%>
	<div class="rodape fixed-bottom">
		<div class="    alinhamento-tamanho_max ">

			<P style="margin: 10px;">° Site desenvolvido por Rodrigo Braga -
				Todos os direitos reservados.
			<p>
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