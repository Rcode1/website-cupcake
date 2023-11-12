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
						<li class="list-group-item"><a href="main-panel_insert.jsp"
							style="text-decoration: none;">Inserir dados</a></li>
						<li class="list-group-item"><a href="#"
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

	<!--------------------------formulario----------------------------------------------------------->

	<div class="largura-max-cadastro"
		style="margin: auto auto; margin-top: 80px;">
		<div class="largura-max-cadastro text-center">
			<h3>Alteração dos dados do administrador</h3>
			<p>Abaixo estão todos os dados cadastrados do administrador</p>
		</div>
		<div class="borda-cor-cadastro">
			<form action="#" id="main-admin_update" method="POST">
				<!------>

				<!---Neste trecho abre um campo imput para a entrada do código do administrador, desta forma é possível
			confirmar às intenções da realização de alterações dos dados cadastrais--->
				<div class="borda-red"">
					<p>Digite o mesmo código que aparece no campo (confirmação
						para atualização) que está logo abaixo, em seguida click no botão
						"Atualizar cadastro".</p>

					<div class="form-group col-md-4"
						Style="margin-left: auto; margin-right: auto; text-align: center;">

						<label for="idClient">Confirmação para atualização</label> <input
							class="form-control" type="text" id="idClient" name="fidClient"
							placeholder=" Digite aqui este código: "></input>
					</div>
				</div>




				<div class="borda-cor-cadastro">
					<div class="form-row">

						<!------>


						<div class="form-group col-md-3">
							<label for="adiminDateRegistration_update">Data do
								registro *</label> <input class="form-control" type="text"
								id="adiminDateRegistration_update"
								name="fadiminDateRegistration_update" placeholder="Data: "
								disabled></input>
						</div>

						<div class="form-group col-md-6">
							<label for="nameAdmin_update">Nome admin *</label> <input
								class="form-control" type="text" id="nameAdmin_update"
								name="fnameAdmin_update" placeholder="Nome admin:" required></input>
						</div>



						<div class="form-group col-md-4">
							<label for="accessLevel_update">Nível de acesso *</label> <input
								class="form-control" type="text" id="accessLevel_update"
								name="faccessLevel_update" placeholder="Acesso:" required></input>
						</div>



						<div class="form-group col-md-4">
							<label for="accessLevel_update">Nível de acesso atual *</label> <input
								class="form-control" style="text-transform: lowercase;"
								type="email" id="accessLevel_update" name="faccessLevel_update"
								placeholder="Acesso: " required></input>
						</div>

						<div class="form-group col-md-4">
							<label for="accessLevel_update">Alteração do nível de
								acesso *</label> <select id="accessLevel_update" class="form-control"
								name="faccessLevel_update">
								<option selected>Alteração do nível:</option>
								<option>Manutenção</option>
								<option>Administrativo</option>


							</select>
						</div>

						<
						<div class="form-group col-md-3">
							<label for="adminPassword_update">Senha *</label> <input
								class="form-control" type="password" id="adminPassword_update"
								name="fadminPassword_update" placeholder="Senha" required></input>
						</div>

						<div class="form-group col-md-5">
							<label for="phoneContact_update">Telefone cel * OBS.:
								incluir o "zero" do DDD.</label> <input class="form-control" type="text"
								id="phoneContact_update" name="fphoneContact_update"
								placeholder="Telefone:" required></input>
						</div>

					</div>
					<!------>

				</div>

				<div style="margin: 10px;">
					<button type="submit" class="btn btn-primary btn-sm ">Atualizar
						cadastro</button>
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