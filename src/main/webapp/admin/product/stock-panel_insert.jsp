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

<title>Home</title>
<meta charset="utf-8">
<title>Insert title here</title>


</head>

<body>

	<div class=" fixed-top fundo-menu "
		style="max-width: 1200px; height: 65px; margin: auto auto; background-color: #DCDCDC;">
		<div class=" alinhamento-tamanho_max ">





			<!----------------------Menu principal------------------------------------>

			<a href="main-page_home.jsp"><button
					class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>




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
							de administradores</h5>
						<li class="list-group-item"><a href="main-panel_query.jsp"
							style="text-decoration: none;">consultar dados</a></li>
						<li class="list-group-item"><a href="#"
							style="text-decoration: none;">Inserir dados</a></li>
						<li class="list-group-item"><a href="main-panel_update.jsp"
							style="text-decoration: none;">Alterar dados</a></li>
						<li class="list-group-item"><a href="main-panel_delete.jsp"
							style="text-decoration: none;">Deletar dados</a></li>
						<hr>

						<ul class="list-group list-group-flush">
							<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
								de produtos</h5>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">consultar dados</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Inserir dados</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Alterar dados</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Deletar dados</a></li>
							<hr>

						</ul>

						<ul class="list-group list-group-flush">
							<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Informações
								do cliente</h5>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">consultar dados </a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Alterar dados</a></li>
							<li class="list-group-item"><a href="#"
								style="text-decoration: none;">Deletar dados</a></li>
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
			<h3>Inserção dos dados para o estoque de produtos</h3>
			<p>Abaixo estão os dados do produto e os campos para a inserção
				do histórico de estoque</p>
		</div>
		<div class="borda-cor-cadastro">
			<div class="borda-cor-cadastro">
				<div class="form-row">

					<!------>
					<div class="form-group col-md-4">
						<label for="idProductRegistration_query">Identificação *</label> <input
							class="form-control" type="text" id="idProductRegistration_query"
							name="fidProductRegistration_quer" placeholder="Identificação" disabled></input>
					</div>

					<div class="form-group col-md-4">
						<label for="registrationDate_query">Data de registro *</label> <input
							class="form-control" type="text" id="registrationDate_query"
							name="fregistrationDate_query" placeholder="D.registro" disabled></input>
					</div>

					<div class="form-group col-md-4">
						<label for="productionDate_query">Data de produção *</label> <input
							class="form-control" type="date" id="productionDate_query" name="fproductionDate_query"
							placeholder="D. produção:" disabled></input>
					</div>


					<div class="form-group col-md-12">
						<label for="productName_query">Nome do produto *</label> <input
							class="form-control" type="text" id="productName_query" name="fproductNamee_query"
							placeholder="N.produto:" disabled></input>
					</div>


					<div class="form-group col-md-12">
						<label for="basicDescription_query">Descrição básica *</label> <input
							class="form-control" style="text-transform: lowercase;"
							type="text" id="basicDescription_query" name="fbasicDescription_query" placeholder="Descrição b.:"
							disabled></input>
					</div>

					<div class="form-group col-md-12">
						<label for="longDescription_query">Descrição completa *</label> <input
							class="form-control" style="text-transform: lowercase;"
							type="text" id="longDescription_query" name="flongDescription_query" placeholder="Descrição c.:"
							disabled></input>
					</div>

				</div>

			</div>


<!-- Formulário para manipular os dados de entrada e saída de produtos do estoque -->

			<form action="client-registration.jsp"
				id="registration-client-visitor" method="POST"
				style="margin-top: 10px;">

				<div class="borda-cor-cadastro">
					<div class="form-row">

						<div class="form-group col-md-3">
							<label for="senha">Data de entrada *</label> <input
								class="form-control" type="date" id="password"
								name="fpassword" placeholder="D.entrada" required></input>
						</div>

						<div class="form-group col-md-3">
							<label for="senha">Data de saida*</label> <input
								class="form-control" type="date" id="password"
								name="fpassword" placeholder="D.saída" required></input>
						</div>

						<div class="form-group col-md-3">
							<label for="senha">Quantidade de entrada *</label> <input
								class="form-control" type="password" id="password"
								name="fpassword" placeholder="Q.entrada:" required></input>
						</div>

						<div class="form-group col-md-3">
							<label for="senha">Quantidade de saída *</label> <input
								class="form-control" type="password" id="password"
								name="fpassword" placeholder="Q.saída" required></input>
						</div>


					</div>

					<button type="submit" class="btn btn-primary btn-sm ">Cadastrar</button>
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