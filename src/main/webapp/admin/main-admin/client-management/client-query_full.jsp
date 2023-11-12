<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<!-- Required meta tags -->
<meta charset="utf-8">

<%@ page language="java"
	errorPage="error-redirection/error-redirection_admin-delete.jsp"%>
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

	<!--------------------------formulario----------------------------------------------------------->
	
	<div class="largura-max-cadastro" style="margin-top: 80px;">
		<div class="largura-max-cadastro text-center">
			<h3>Área destinada a exclusão permanente dos dados cadastrais.</h3>
			<p style="text-align: left;">Cuidado, suas informações serão
				excluidas permanentemente da nossa base de dados, caso hajam
				dúvidas, entre em contato para obter maiores esclarecimentos.</p>

		</div>
		<div class="borda-cor-cadastro">
			<form action="client-query_delete-cod.jsp" id="client-delete"
				method="post">
				<!------>
				<div class="borda-cor-cadastro">


					<div class="borda-red"">
						<p>Digite o mesmo código que aparece no campo (confirmação
							para exclusão) que está logo abaixo, em seguida click no botão
							excluir.</p>

						<div class="form-group col-md-4"
							Style="margin-left: auto; margin-right: auto; text-align: center;">

							<label for="idClient">Confirmação para exclusão</label> <input
								class="form-control" type="text" id="idClient" name="fidClient"
								placeholder=" Digite aqui este código: <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getIdClient()%>"></input>
						</div>
					</div>

					<div class="form-row">
						<!------>

						<div class="form-group col-md-3">
							<label for="clientName">Data do cadastro </label> <input
								class="form-control" type="text" id="clientName"
								name="fclientName"
								placeholder="<%=clientDao.getUniqueSelectResultClient_Dao().get(0).getDateRegistration()%>"
								disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-9">
							<label for="nome">Nome completo </label> <input
								class="form-control" type="text" id="name" name="fclientName"
								placeholder="  <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getName()%>"
								disabled></input>
						</div>
						<!------>
					</div>
					<!------>
					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="email">Email </label> <input class="form-control"
								type="text" id="emaiL" name="femail"
								placeholder="Email: <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getEmailRegistration()%>"
								disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-4">
							<label for="senha">Senha </label> <input class="form-control"
								type="txt" id="password" name="fpassword"
								placeholder="<%=clientDao.getUniqueSelectResultClient_Dao().get(0).getPassword()%>"
								disabled></input>
						</div>
					</div>

				</div>
				<br>

				<!----------------------------------------Separacao------------------------------------------->

				<div class="borda-cor-cadastro">
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="birthDate">Data de nascimento </label> <input
								class="form-control" type="text" id="birthDate"
								name="fbirthDate"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getBirthDate()%>"
								disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-5">
							<label for="document">Documento - CPF </label> <input
								class="form-control" type="text" id="document" name="fdocument"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getDocumentCpf()%>"
								disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-4">
							<label for="phone">Telefone cel </label> <input
								class="form-control" type="text" id="phone" name="fphone"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getPhone()%>"
								disabled></input>
						</div>
					</div>
				</div>

				<br>

				<!----------------------------------------Separacao------------------------------------------->


				<div class="borda-cor-cadastro ">

					<div class="form-group">
						<label for="street">Rua </label> <input class="form-control"
							type="text" id="street" name="fstreet"
							placeholder="<%=clientDao.getUniqueSelectResultClient_Dao().get(0).getStreet()%>"
							disabled></input>
					</div>
					<!------>

					<div class="form-group ">
						<label for="complement">Complemento </label> <input
							class="form-control" type="text" id="complement"
							name="fcomplement"
							placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getComplement()%>"
							disabled></input>
					</div>
					<!------>

					<div class="form-row">
						<div class="form-group col-md-2">
							<label for="homeNumber">Numero</label> <input
								class="form-control" type="text" id="homeNumber"
								name="fhomeNumber"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getHomeNumber()%>"
								disabled></input>
						</div>

						<!------>

						<div class="form-group col-md-10">
							<label for="neighborhood">Bairro</label> <input
								class="form-control" type="text" id="neighborhood"
								name="fneighborhood"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getNeighborhood()%>"
								disabled></input>
						</div>
					</div>

					<!------>

					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="city">Cidade </label> <input class="form-control"
								type="text" id="city" name="fcity"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getCity()%>"
								disabled></input>
						</div>
						<!------>

						<div class="form-group col-md-4">
							<label for="city">Estado atual </label> <input
								class="form-control" type="text" id="state_" name="fstate_"
								placeholder=" <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getState()%>"
								disabled></input>
						</div>



						<div class="form-group col-md-3">
							<label for="zipCode">Cep *</label> <input class="form-control"
								type="text" id="zipCode" name="fzipCode"
								placeholder="Cep: <%=clientDao.getUniqueSelectResultClient_Dao().get(0).getZipCode()%>"
								disabled></input>
						</div>
					</div>

				</div>
				<br> <br>


				<button type="submit" class="btn btn-primary btn-sm ">Excluir
					Cadastro</button>

			</form>
		</div>

	</div>
	</div>
	<br>
	<br>
	<br>
	<br>

	<div class="rodape fixed-bottom"></div>

































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