<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.admin.AdministratorRegistration"%>
<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductRegistration"%>
<%@page import="java.util.ArrayList"%>
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
	ClientDao clientDao = new ClientDao();
	%>
	<div class=" fixed-top fundo-menu "
		style="max-width: 1200px; height: 65px; margin: auto auto; background-color: #DCDCDC;">
		<div class=" alinhamento-tamanho_max ">





			<!----------------------Menu principal------------------------------------>

			<a href="../../main-admin/main-page_home.jsp"><button
					class="btn btn-light float-left " type="button"
					style="margin: 12px;" data-bs-toggle="offcanvas"
					aria-controls="offcanvasWithBothOptions">Início</button></a>

			<button class="btn btn-light  float-left " type="button"
				style="margin: 12px; background-color: gainsboro; color: black;"
				data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasWithBothOptions"
				aria-controls="offcanvasWithBothOptions">||| Menu</button>

			<a href="../../main-admin/main-page_home.jsp"><button
					class="btn btn-light  float-left " type="button"
					style="margin: 12px; background-color: gainsboro; color: black;">Retornar</button></a>

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
							<a class="dropdown-item "
								href="../my-admin_details/my_main-panel_query.jsp">Visualizar
								meu cadastro </a> <a class="dropdown-item"
								href="../my-admin_details/my_main-panel_update.jsp">Atualizar
								meu cadastro </a> <a class="dropdown-item"
								href="../my-admin_details/my_main-panel_delete.jsp">Deletar
								meu cadastro</a>

							<div class="dropdown-divider"></div>
							<a class="dropdown-item"
								href="main-admin/admin-panel_operation.jsp">Operações gerais</a>

							<div class="dropdown-divider"></div>

							<a class="dropdown-item"
								href="../../../admin/admin_access-account.jsp">Sair</a>
						</div></li>
				</ul>
			</span>

			<!-- Fim do menu principal -->

			<!-- Campo input para acessar o item de deletar conta do cliente no db -->

			<div class="  float-right" style="margin-right: 180px;">

				<form action="client-query_basic-cod.jsp" id="basic_panel"
					method="POST">

					<div class="form-row" style="margin: 0px;">

						<div class="form-group">
							<label for="basic_panel"> </label> <input class="form-control "
								type="text" id="client_query" name="fclient_query"
								style="margin-top: -12px; margin-right: 10px; max-width: 80px;"></input>
						</div>

						<button type="submit" class="btn btn-primary btn-sm "
							style="margin: 12px 0px 5px 0px; max-height: 40px;">Acessar
							- ID</button>

					</div>
				</form>

			</div>
			<!--  Fim do menu principal -->

			<!--  Inicio do painel lateral -->

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
							href="../../main-admin/admin-panel_operation.jsp"
							style="text-decoration: none;">Administradores - operações
								cadastrais </a></li>

						<hr>
					</ul>

					<ul class="list-group list-group-flush">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Cadastro
							de produtos</h5>
						<li class="list-group-item">Neste painel só podem haver a
							inserção de produtos, para as demais operações é necessário
							acessar o <strong>Cadastro de produtos e estoque</strong>, item
							para inserção e operações em geral estão logo abaixo.
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

		</div>

	</div>
	<!--  Fim do painel lateral -->

	<!--Demonstrativo dos dados cadastrados(referente a um produto registrado-->

	<div class="largura-max-cadastro"
		style="margin: auto auto; margin-top: 80px;">
		<div class="largura-max-cadastro text-center">
			<h3>Identificação dos clientes registrados</h3>
			<p>Abaixo estão todos os clientess registrados, basta selecionar
				um registro e introduzir seu id no campo de texto acima para ter
				acesso às suas funcionalidades</p>
		</div>
		<div class="borda-cor-cadastro">
			<div class="borda-cor-cadastro" Style="margin-bottom: 10px;">


				<%
				//clientDao.removeUniqueSelectResultClient_Dao();

				for (int i = 0; i < clientDao.select_RegistrationClient_dao().size(); i++) {
				%>

				

					<div class="form-row"
						style="border: 1px solid #E0E0E0; margin: 5px;">

						<div class="form-group col-md-1">
							<label for="IdAdmin">Id *</label> <input class="form-control "
								type="text" id="IdAdmin" name="fIdAdmin"
								placeholder=" <%=clientDao.select_RegistrationClient_dao().get(i).getIdClient()%>"
								disabled></input>
						</div>

						<div class="form-group col-md-4">
							<label for="nome_query">Nome</label> <input class="form-control"
								type="password" id="nome_query" name="fnome_query"
								placeholder="<%=clientDao.select_RegistrationClient_dao().get(i).getName()%>"
								disabled></input>
						</div>

						<div class="form-group col-md-3">
							<label for="document_query">Documento CPF</label> <input
								class="form-control" type="text" id="document_query"
								name="fdocument_query"
								placeholder="<%=clientDao.select_RegistrationClient_dao().get(i).getDocumentCpf()%>"
								disabled></input>
						</div>

						<div class="form-group col-md-4">
							<label for="email">Email</label> <input class="form-control"
								type="text" id="email" name="femail"
								placeholder="<%=clientDao.select_RegistrationClient_dao().get(i).getEmailRegistration()%>"
								disabled></input>
						</div>

					</div>
			

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
	<script src="../../../js/bootstrap.min.js"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
</body>

</html>