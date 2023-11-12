<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
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
	href="../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../css/css-personalizado/personalizacao.css">

<title>Consulta no painel do estoque</title>


</head>

<body>
	<%
	ProductDao productDao = new ProductDao();
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

			<button class="btn btn-light  float-left " type="button"
				style="margin: 12px; background-color: gainsboro; color: black;">
				<a href="stock-panel_operation.jsp"
					style="text-decoration: none; color: black;">Retornar</a>
			</button>

			<div class="offcanvas offcanvas-start" data-bs-scroll="true"
				style="max-width: 300px;" tabindex="-1"
				id="offcanvasWithBothOptions"
				aria-labelledby="offcanvasWithBothOptionsLabel">
				<div class="offcanvas-header">
					<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Operações
						cadastrais em produtos e estoque</h4>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">


					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
							de produtos</h5>

						<li class="list-group-item">O menu abaixo, referente ao
							produto, traz a possibilidade de modificar ou deletar o produto
							vigente, caso queira selecionar um outro produto basta acessar<strong>
								Escolher novo produto</strong>
						</li>

						<li class="list-group-item"><a
							href="product-panel_operation.jsp" style="text-decoration: none;">Escolher
								novo produto</a></li>
						<li class="list-group-item"><a
							href="product-panel_insert.jsp" style="text-decoration: none;">Inserir
								dados</a></li>
						<li class="list-group-item"><a
							href="product-panel_update.jsp" style="text-decoration: none;">Alterar
								dados</a></li>
						<li class="list-group-item"><a
							href="product-panel_delete.jsp" style="text-decoration: none;">Deletar
								dados</a></li>
						<hr>

					</ul>

					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Operações
							com estoques</h5>

						<li class="list-group-item">O menu abaixo, referente ao
							estoque, traz a possibilidade de modificar ou deletar o item de
							estoque vigente, caso queira selecionar um outro item do estoque
							basta acessar<strong> Escolher outro item de estoque</strong>
						</li>

						<li class="list-group-item"><a
							href="stock-panel_operation.jsp" style="text-decoration: none;">Escolher
								outro item de estoque</a></li>

						<li class="list-group-item"><a href="stock-panel_insert.jsp"
							style="text-decoration: none;">Inserir dados no estoque</a></li>
						<li class="list-group-item"><a href="stock-panel_update.jsp"
							style="text-decoration: none;">Alterar dados do estoque</a></li>
						<li class="list-group-item"><a href="stock-panel_delete.jsp"
							style="text-decoration: none;">Deletar dados do estoque</a></li>
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
			<h3>Consultar dados do estoque</h3>
			<p>Abaixo estão os dados do produto e os dados do estoque</p>
		</div>
		<div class="borda-cor-cadastro">
			<div class="borda-cor-cadastro" Style="margin-bottom: 10px;">
				<div class="form-row">

					<!------>
					<div class="form-group col-md-4">
						<label for="idProductRegistration_query">Identificação *</label> <input
							class="form-control" type="password"
							id="idProductRegistration_query"
							name="fidProductRegistration_quer"
							placeholder="Identificação <%=productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-4">
						<label for="registrationDate_query">Data de registro*</label> <input
							class="form-control" type="password" id="registrationDate_query"
							name="fregistrationDate_query"
							placeholder="D.registro <%=productDao.getResult_listProduct_Dao().get(0).getRegistrationDate()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-4">
						<label for="creationDate_query">Data de criação do produto
							*</label> <input class="form-control" type="text" id="creationDate_query"
							name="fcreationDate_query"
							placeholder="D. criação: <%=productDao.getResult_listProduct_Dao().get(0).getCreationDate()%>"
							disabled></input>
					</div>


					<div class="form-group col-md-12">
						<label for="productName_query">Nome do produto *</label> <input
							class="form-control" type="text" id="productName_query"
							name="fproductNamee_query"
							placeholder="N.produto:<%=productDao.getResult_listProduct_Dao().get(0).getProductName()%>"
							disabled></input>
					</div>


					<div class="form-group col-md-12">
						<label for="basicDescription_query">Descrição básica *</label> <input
							class="form-control" style="text-transform: lowercase;"
							type="text" id="basicDescription_query"
							name="fbasicDescription_query"
							placeholder="Descrição b.: <%=productDao.getResult_listProduct_Dao().get(0).getBasicDescription()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-12">
						<label for="longDescription_query">Descrição completa *</label> <input
							class="form-control" style="text-transform: lowercase;"
							type="text" id="longDescription_query"
							name="flongDescription_query"
							placeholder="Descrição c.: <%=productDao.getResult_listProduct_Dao().get(0).getLongDescription()%>"
							disabled></input>
					</div>
				</div>

			</div>


			<!-- Formulário para manipular os dados de entrada e saída de produtos do estoque -->



			<div class="borda-cor-cadastro">
				<div class="form-row">

					<div class="form-group col-md-3">
						<label for="idProductStock">Identificação do estoque *</label> <input
							class="form-control" type="text" id="idProductStock"
							name="fidProductStock"
							placeholder="Id.estoque: <%=productDao.getUniqueStockResultList_Dao().get(0).getIdProductStock()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="idProductRegistration">Identificação do
							produto *</label> <input class="form-control" type="text"
							id="idProductRegistration" name="fidProductRegistration"
							placeholder="Id.produção: <%=productDao.getUniqueStockResultList_Dao().get(0).getIdProductRegistration()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="productionDate">Data de produção *</label> <input
							class="form-control" type="text" id="productionDate"
							name="fproductionDate"
							placeholder="D.produção: <%=productDao.getUniqueStockResultList_Dao().get(0).getProductionDate()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="entryDate">Data de entrada </label> <input
							class="form-control" type="text" id="entryDate" name="fentryDate"
							placeholder="D.entrada: <%=productDao.getUniqueStockResultList_Dao().get(0).getEntryDate()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="departureDate">Data de saida</label> <input
							class="form-control" type="text" id="departureDate"
							name="fdepartureDate"
							placeholder="D.saída: <%=productDao.getUniqueStockResultList_Dao().get(0).getDepartureDate()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="quantityEntry">Quantidade de entrada </label> <input
							class="form-control" type="number" id="quantityEntry"
							name="fquantityEntry"
							placeholder="Q.entrada: <%=productDao.getUniqueStockResultList_Dao().get(0).getQuantityEntry()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="quantityDepartury">Quantidade de saída </label> <input
							class="form-control" type="number" id="quantityDepartury"
							name="fquantityDepartury"
							placeholder="Q.saída: <%=productDao.getUniqueStockResultList_Dao().get(0).getQuantityDepartury()%>"
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="productPrice">Valor do produto *</label> <input
							class="form-control" type="number" id="productPrice"
							name="fproductPrice"
							placeholder="V. produto: <%=productDao.getUniqueStockResultList_Dao().get(0).getProductPrice()%> "
							disabled></input>
					</div>

					<div class="form-group col-md-3">
						<label for="productDiscount">Valor do desconto *</label> <input
							class="form-control" type="number" id="productDiscount"
							name="fproductDiscount"
							placeholder="V. desconto: <%=productDao.getUniqueStockResultList_Dao().get(0).getProductDiscount()%>"
							disabled></input>
					</div>

				</div>


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