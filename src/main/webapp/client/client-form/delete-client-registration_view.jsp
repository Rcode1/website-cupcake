
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page import="java.lang.String"%>

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
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../css/css-personalizado/personalizacao.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<script type="text/javascript" language="javascript"
	src="jquery/jquery.js"></script>

<title>Cadastro do cliente</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%@ page language="java" errorPage="delete_redirect-view.jsp" %>
</head>
<body>
	




	<%
	//ClientRegistration client_dto = new ClientRegistration();
	ClientDao dao_client = new ClientDao();
	ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	try {

		//Este lina traz como resultado às informações contidas no DB de acordo com o usuário e senha
		//	 clientResultSelect = dao_client.resultSelectRegistration_Dao( "", "");

		clientResultSelect = dao_client.clientDataPersistence();

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>


	<div >
		<!--------------------Menu principal-------------------------------->
		<div class="fundo-pagina fixed-top" >
		<div class="  largura-max-cadastro">
			<ul class="nav nav-tabs  ">
				<li class="nav-item"><a class="nav-link active "
					href="../../home-page/home.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link color-menu" href="return-client-registration_view.jsp">Visualizar cadastro</a>
				<li class="nav-item"><a class="nav-link color-menu" href="alter-client-registration_view.jsp">Atualizar cadastro</a>
				<li class="nav-item"><a class="nav-link color-menu" href="#">Excluir cadastro</a>
			
				</li>

		</div>
		</div>
		<br> <br> <br>



		<!--------------------------formulario----------------------------------------------------------->

		<div class="largura-max-cadastro">
			<div class="largura-max-cadastro text-center">
				<h3>Área destinada a exclusão permanente dos dados cadastrais.</h3>
				<p style="text-align: left;">Cuidado, suas informações serão excluidas permanentemente da
					nossa base de dados, caso hajam dúvidas, entre em contato para obter
					maiores esclarecimentos.</p>

			</div>
			<div class="borda-cor-cadastro">
				<form action="delete-client-registration.jsp" id="exclude"
					method="post">
					<!------>
					<div class="borda-cor-cadastro">


						<div class="borda-red"">
							<p >Digite o mesmo código que
								aparece no campo (confirmação para exclusão) que está logo
								abaixo, em seguida click no botão excluir.</p>

							<div class="form-group col-md-4"
								Style="margin-left: auto; margin-right: auto; text-align: center;">

								<label for="idClient">Confirmação para exclusão</label> <input
									class="form-control" type="text" id="idClient" name="fidClient"
									placeholder=" Digite aqui este código: <%=clientResultSelect.get(1).getIdClient()%>"></input>
							</div>
						</div>





						<div class="form-row">




							<!------>


							<div class="form-group col-md-3">
								<label for="nome">Data do cadastro </label> <input
									class="form-control" type="text" id="date" name="fdate"
									placeholder="<%=clientResultSelect.get(1).getDateRegistration()%>"
									disabled></input>
							</div>
							<!------>
							<div class="form-group col-md-9">
								<label for="nome">Nome completo </label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="  <%=clientResultSelect.get(1).getName()%>"
									disabled></input>
							</div>
							<!------>
						</div>
						<!------>
						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="email">Email </label> <input class="form-control"
									type="text" id="emaiL" name="femail"
									placeholder="Email: <%=clientResultSelect.get(1).getEmailRegistration()%>"
									disabled></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="senha">Senha </label> <input class="form-control"
									type="txt" id="password" name="fpassword"
									placeholder="<%=clientResultSelect.get(1).getPassword()%>"
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
									placeholder=" <%=clientResultSelect.get(1).getBirthDate()%>"
									disabled></input>
							</div>
							<!------>
							<div class="form-group col-md-5">
								<label for="document">Documento - CPF </label> <input
									class="form-control" type="text" id="document" name="fdocument"
									placeholder=" <%=clientResultSelect.get(1).getDocumentCpf()%>"
									disabled></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="phone">Telefone cel </label> <input
									class="form-control" type="text" id="phone" name="fphone"
									placeholder=" <%=clientResultSelect.get(1).getPhone()%>"
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
								placeholder="<%=clientResultSelect.get(1).getStreet()%>"
								disabled></input>
						</div>
						<!------>

						<div class="form-group ">
							<label for="complement">Complemento </label> <input
								class="form-control" type="text" id="complement"
								name="fcomplement"
								placeholder=" <%=clientResultSelect.get(1).getComplement()%>"
								disabled></input>
						</div>
						<!------>

						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="homeNumber">Numero</label> <input
									class="form-control" type="text" id="homeNumber"
									name="fhomeNumber"
									placeholder=" <%=clientResultSelect.get(1).getHomeNumber()%>"
									disabled></input>
							</div>

							<!------>

							<div class="form-group col-md-10">
								<label for="neighborhood">Bairro</label> <input
									class="form-control" type="text" id="neighborhood"
									name="fneighborhood"
									placeholder=" <%=clientResultSelect.get(1).getNeighborhood()%>"
									disabled></input>
							</div>
						</div>

						<!------>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="city">Cidade </label> <input class="form-control"
									type="text" id="city" name="fcity"
									placeholder=" <%=clientResultSelect.get(1).getCity()%>"
									disabled></input>
							</div>
							<!------>

							<div class="form-group col-md-4">
								<label for="city">Estado atual </label> <input
									class="form-control" type="text" id="state_" name="fstate_"
									placeholder=" <%=clientResultSelect.get(1).getState()%>"
									disabled></input>
							</div>



							<div class="form-group col-md-3">
								<label for="zipCode">Cep *</label> <input class="form-control"
									type="text" id="zipCode" name="fzipCode"
									placeholder="Cep: <%=clientResultSelect.get(1).getZipCode()%>"
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









	<!--Mascaras dos campos de cadastro-->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#birthDate").mask('00/00/0000', {
				reverse : true
			});
			$("#document").mask('000.000.000-00', {
				reverse : true
			});
			$("#phone").mask('(00) 00000-0000', {
				reverse : true
			});
			$("#zipCode").mask('00.000.000', {
				reverse : true

			});
		});
	</script>
	<!------------------------------------------->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="../../js/bootstrap.min.js"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
</body>
</html>