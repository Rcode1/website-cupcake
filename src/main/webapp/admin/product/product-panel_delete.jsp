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



<title>Deletar dados do produto</title>


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
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
							de produtos</h5>

						<li class="list-group-item">Abaixo estão os itens
							relacionados com o ID do produto selecionado, caso queira
							realizar uma operação em um outro produto basta retornar a
							consulta, o link de acesso é: (Retornar a consulta de dados),
							situado neste menu.</li>


						<li class="list-group-item"><a
							href="product-panel_insert.jsp" style="text-decoration: none;">Inserir
								dados</a></li>

						<li class="list-group-item"><a
							href="product-panel_update.jsp" style="text-decoration: none;">Alterar
								dados</a></li>

						<li class="list-group-item"><a
							href="product-panel_operation.jsp" style="text-decoration: none;">Retornar
								a consulta de dados</a></li>
						<hr>

					</ul>

					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Operações de cadadstro no estoque</h5>
						<li class="list-group-item"><strong>O estoque sempre estará relacionado com o produto selecionado.</strong>
						 Para acessar os itens de estoque e realizar as operações para consultar, atualizar, deletar ou inserir os dados basta
						acessar o item abaixo.</li>
						
						<li class="list-group-item"><a href="stock-panel_operation.jsp"
							style="text-decoration: none;">Operações
							com estoques  </a></li>
						
						<hr>

					</ul>


				</div>
			</div>
			<br> <br> <br>

		</div>



	</div>

	<!--Formulario destinado a inserção dos dados do produto-->

	<div class="largura-max-cadastro"
		style="margin: auto auto; margin-top: 80px;">
		<div class="largura-max-cadastro text-center">
			<h3>Exclusão dos dados do produto</h3>
			<p>Formulario destinado a exclusão dos dados do produto.</p>
		</div>
		<div class="borda-cor-cadastro">
			<form action="product_delete.jsp" id="product-panel_updade"
				method="POST">
				<!------>



				<!---Neste trecho abre um campo imput para a entrada do código do produto, desta forma é possível
			confirmar às intenções de deletar os dados cadastrais--->



				<div class="borda-red"">
					<p>Digite o mesmo código que aparece no campo (confirmação para
						exclusão) que está logo abaixo, em seguida click no botão <strong>Excluir dados</strong> .</p>

					<div class="form-group col-md-4"
						Style="margin-left: auto; margin-right: auto; text-align: center;">

						<label for="idProduct">Confirmação para exclusão</label> <input
							class="form-control" type="text" id="idProduct" name="fidProduct"
							placeholder=" Digite aqui este código: <%=productDao.getResult_listProduct_Dao().get(0).getIdProductRegistration()%>"></input>
					</div>
				</div>
				<div class="borda-cor-cadastro">
					<div class="form-row">

						<!------>

						<div class="form-group col-md-4">
							<label for="creationDate">Data de criação do produto *</label> <input
								class="form-control" type="text" id="creationDate"
								name="fcreationDate"
								placeholder="D. criação: <%=productDao.getResult_listProduct_Dao().get(0).getCreationDate()%>"
								disabled></input>
						</div>


						<div class="form-group col-md-8">
							<label for="productName">Nome do produto *</label> <input
								class="form-control" type="text" id="productName"
								name="fproductName"
								placeholder="N.completo: <%=productDao.getResult_listProduct_Dao().get(0).getProductName()%>"
								disabled></input>
						</div>


						<div class="form-group col-md-12">
							<label for="basicDescription">Descrição básica *</label> <textarea
								class="form-control" style="text-transform: lowercase;"
								type="text" id="basicDescription" name="fbasicDescriptionl"
								placeholder="Descrição b.: <%=productDao.getResult_listProduct_Dao().get(0).getBasicDescription()%> "
								disabled></textarea>
						</div>

						<div class="form-group col-md-12">
							<label for="longDescription">Descrição completa *</label> <textarea
								class="form-control" style="text-transform: lowercase;"
								type="text" id="longDescription" name="flongDescription"
								placeholder="Descrição c.: <%=productDao.getResult_listProduct_Dao().get(0).getLongDescription()%> "
								disabled></textarea>
						</div>
					</div>
					<!------>
					<button type="submit" class="btn btn-primary btn-sm ">Deletar
						dados</button>

				</div>

			</form>

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