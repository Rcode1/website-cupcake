<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<!-- Required meta tags -->
<meta charset="utf-8">

<%@ page language="java"
	errorPage="../error-redirection/error-redirection_admin-query.jsp"%>
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
	href="../../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../../../css/css-personalizado/personalizacao.css">

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

			<a href="../main-page_home.jsp"><button
					class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>




			<button class="btn btn-light  float-left " type="button"
				style="margin: 12px; background-color: gainsboro; color: black;"
				data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasWithBothOptions"
				aria-controls="offcanvasWithBothOptions">||| Menu</button>


			<span class="acesso-usuario">



				<ul class="nav nav menu-principal">
					<div style="width: 80px;">
						<img style="width: 80px;" src="../../../img/capaAdminA.png">
					</div>
					<li class="nav-item dropdown"><p
							style="margin: 0px; padding-left: 15px;"><%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getNameAdmin()%></p>
						<a class="nav-link dropdown-toggle color-menu"
						style="padding-right: 10px;" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">Painel
							pessoal</a>
						<div class="dropdown-menu dropdown-menu-right">

							<a class="dropdown-item"
								href="../my-admin_details/my_main-panel_delete.jsp">Deletar
								meu cadastro</a> <a class="dropdown-item "
								href="../my-admin_details/my_main-panel_query.jsp">Visualizar
								meu cadastro </a> <a class="dropdown-item"
								href="../my-admin_details/my_main-panel_update.jsp">Atualizar
								meu cadastro </a>

							<div class="dropdown-divider"></div>
							<a class="dropdown-item"
								href="../../main-admin/admin-panel_operation.jsp">Operações
								gerais</a>

							<div class="dropdown-divider"></div>

							<a class="dropdown-item" href="../../admin_close.jsp">Sair</a>

						</div></li>
				</ul>

			</span>



			<%--  fim do menu principal --%>

			<%-- Painel lateral - administrador --%>

			<div class="offcanvas offcanvas-start" data-bs-scroll="true"
				style="max-width: 300px;" tabindex="-1"
				id="offcanvasWithBothOptions"
				aria-labelledby="offcanvasWithBothOptionsLabel">
				<div class="offcanvas-header">
					<h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Operações
						cadastrais</h4>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">

					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
							de administradores</h5>

						<li class="list-group-item">Para acessar os itens de cadastro
							do administrador, basta dar um click no item <strong>
								Administradores - operações cadastrais</strong>, o item está situado
							neste menu, logo abaixo.
						</li>

						<li class="list-group-item"><a
							href="../admin-panel_operation.jsp"
							style="text-decoration: none;">Administradores - operações
								cadastrais </a></li>

						<hr>
					</ul>


					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Gerenciamento
							dos clientes</h5>
						<li class="list-group-item"><a
							href="../client-management/client-query_basic.jsp"
							style="text-decoration: none;">consultar dados </a></li>

						<hr>

					</ul>


					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
							de produtos e estoque</h5>
						<li class="list-group-item">Para acessar os itens de cadastro
							do produto, basta dar um click no item <strong> Cadastro
								de produtos e estoque</strong>, ele está situado neste menu, logo abaixo.
						</li>
						<li class="list-group-item"><a
							href="../../product/product-panel_operation.jsp"
							style="text-decoration: none;">Produto e estoque- operações
								cadastrais </a></li>

						<hr>
					</ul>

				</div>
			</div>

			<br> <br> <br>


			<%--Fim do painel lateral - administrador --%>

			<!--------------------------formulario----------------------------------------------------------->




			<div class="largura-max-cadastro"
				style="margin: auto auto; margin-top: 10px;">
				<div class="largura-max-cadastro text-center">
					<h3>Consulta de dados do administrador</h3>
					<p>Abaixo estão os dados cadastrais para realizar a consulta.</p>
				</div>
				<div class="borda-cor-cadastro">

					<!------>
					<div class="borda-cor-cadastro">
						<div class="form-row">

							<!------>



							<div class="form-group col-md-3">
								<label for="idAdmin_query">Identificação de registro *</label> <input
									class="form-control" type="text" id="idAdmin_query"
									name="fidAdmin_query"
									placeholder="Identificação:<%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getIdAdmin()%>"
									disabled></input>
							</div>

							<div class="form-group col-md-3">
								<label for="adiminDateRegistration_query">Data do
									cadastro *</label> <input class="form-control" type="text"
									id="adiminDateRegistration_query"
									name="fadiminDateRegistration_query"
									placeholder="Data: <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAdiminDateRegistration()%>"
									disabled></input>
							</div>

							<div class="form-group col-md-6">
								<label for="nameAdmin_query">Nome admin *</label> <input
									class="form-control" type="text" id="nameAdmin_query"
									name="fnameAdmin_query"
									placeholder="Nome admin: <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getNameAdmin()%>"
									disabled></input>
							</div>



							<div class="form-group col-md-4">
								<label for="accessLevel_query">Nível de acesso *</label> <input
									class="form-control" type="text" id="accessLevel_query"
									name="faccessLevel_query"
									placeholder="Acesso: <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel()%>"
									disabled></input>
							</div>



							<div class="form-group col-md-8">
								<label for="emailAccess_query">Email *</label> <input
									class="form-control" style="text-transform: lowercase;"
									type="email" id="emailAccess_query" name="femailAccess_query"
									placeholder="Email: <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getEmailAccess()%>"
									disabled></input>
							</div>


							<div class="form-group col-md-4">
								<label for="adminPassword_query">Senha *</label> <input
									class="form-control" type="password" id="adminPassword_query"
									name="fadminPassword_query"
									placeholder="Senha:  <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAdminPassword()%>"
									disabled></input>
							</div>

							<div class="form-group col-md-5">
								<label for="phoneContact_query">Telefone cel * OBS.:
									incluir o "zero" do DDD.</label> <input class="form-control"
									type="text" id="phoneContact_query" name="fphoneContact_query"
									placeholder="Telefone: <%=adminRegistrationDao.returnAccess_Administrator_dao().get(0).getPhoneContact()%>"
									disabled></input>
							</div>

						</div>
						<!------>


					</div>

					<div style="margin: 10px;"></div>

				</div>
				<br>

			</div>
		</div>
</div>




























		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script src="../../../js/bootstrap.min.js"></script>


		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
</body>

</html>