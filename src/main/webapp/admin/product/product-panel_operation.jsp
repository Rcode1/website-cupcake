<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
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

<!-- Required meta tags -->



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
	href="../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../css/css-personalizado/personalizacao.css">

<meta charset="utf-8">
<title>Insert title here</title>


</head>

<body>
	<%
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();
	%>
	<div class=" fixed-top fundo-menu "
		style="max-width: 1200px; height: 65px; margin: auto auto; background-color: #DCDCDC;">
		<div class=" alinhamento-tamanho_max ">





			<!----------------------Menu principal------------------------------------>

			<!-- Início do botão: "Início" ( Painel do administrador) -->
			<%
			if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel().equals("Manutenção")) {
			%><a href="../standard-admin/standard-page_home.jsp"><button
					class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>
			<%
			} else {
			%>

			<a href="../main-admin/main-page_home.jsp"><button
					class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>

			<%
			}
			%>
			<!-- Fim do botão: "Início" ( Painel do administrador) -->


			<button class="btn btn-light  float-left " type="button"
				style="margin: 12px; background-color: gainsboro; color: black;"
				data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasWithBothOptions"
				aria-controls="offcanvasWithBothOptions">||| Menu</button>

			<!-- Campo input para seleção de uma informação do db -->
			<div class="  float-right" style="margin-right: 180px;">

				<form action="product_operation.jsp" id="product-panel_updade"
					method="POST">

					<div class="form-row" style="margin: 0px;">


						<div class="form-group">
							<label for="idProductRegistration_query"> </label> <input
								class="form-control " type="text"
								id="idProductRegistration_query"
								name="fidProductRegistration_query"
								style="margin-top: -12px; margin-right: 10px; max-width: 80px;"></input>
						</div>



						<button type="submit" class="btn btn-primary btn-sm "
							style="margin: 12px 0px 5px 0px; max-height: 40px;">Acessar
							- ID</button>

					</div>
				</form>
			</div>

			<!-- Fim -->




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

					<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
						de produtos</h5>
					<ul class="list-group list-group-flush">

						<li class="list-group-item">Neste painel só podem haver a
							inserção de produtos, item para inserção logo abaixo, para as
							demais operações é necessário selecionar o ID desejado do produto
							cadastrado e inserir no campo de entrada de texto, situado no
							cabeçalho, após a inserção basta finalizar a operação
							pressionando o botão (Acessar ID), situado ao lado.</li>

						<li class="list-group-item"><a
							href="product-panel_insert.jsp" style="text-decoration: none;">Inserir
								dados do produto</a></li>

						<hr>

					</ul>




				</div>
			</div>
			<br> <br> <br>

		</div>

	</div>


	<!--Demonstrativo dos dados cadastrados(referente a um produto registrado-->

	<div class="largura-max-cadastro"
		style="margin: auto auto; margin-top: 80px;">
		<div class="largura-max-cadastro text-center">
			<h3>Identificação dos produtos registrados</h3>
			<p>Abaixo estão todos os produtos registrados, basta selecionar
				um registro e introduzir seu id no campo de texto para ter acesso às
				suas funcionalidades</p>
		</div>
		<div class="borda-cor-cadastro">
			<div class="borda-cor-cadastro" Style="margin-bottom: 10px;">


				<%
				ProductDao productDao = new ProductDao();
				productDao.removeResult_listProduct_Dao();
				productDao.removeResult_stockProductList_Dao();
				productDao.removeUniqueStockResultList_Dao();

				ArrayList<ProductRegistration> list_productRegistration = new ArrayList<>();

				list_productRegistration = productDao.select_productRegistration_dao();

				for (int i = 0; i < list_productRegistration.size(); i++) {
				%>

				<form action="product_operation.jsp" id="product-panel_updade"
					method="POST">

					<div class="form-row"
						style="border: 1px solid #E0E0E0; margin: 5px;">

						<div class="form-group col-md-1">
							<label for="idProductRegistration">Id *</label> <input
								class="form-control " type="text" id="idProductRegistration"
								name="fidProductRegistration"
								placeholder=" <%=list_productRegistration.get(i).getIdProductRegistration()%>"
								disabled></input>
						</div>

						<div class="form-group col-md-3">
							<label for="registrationDate_query">Data de registro *</label> <input
								class="form-control" type="password" id="registrationDate_query"
								name="fregistrationDate_query"
								placeholder="<%=list_productRegistration.get(i).getRegistrationDate()%>"
								disabled></input>
						</div>

						<div class="form-group col-md-8">
							<label for="productName_query">Nome do produto *</label> <input
								class="form-control" type="text" id="productName_query"
								name="fproductNamee_query"
								placeholder="<%=list_productRegistration.get(i).getProductName()%>"
								disabled></input>
						</div>

					</div>
				</form>

				<%
				}
				%>

			</div>



		</div>



		<br>


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