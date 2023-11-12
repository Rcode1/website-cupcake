
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
<%@ page language="java" errorPage="return_redirect-view.jsp"%>
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


<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>



	<%
	//ClientRegistration client_dto = new ClientRegistration();
	ClientDao dao_client = new ClientDao();
	ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	try {

		//Este linha traz como resultado às informações contidas no DB de acordo com o usuário e senha
		// clientResultSelect = dao_client.resultSelectRegistration_Dao(request.getParameter("fuser-name"), request.getParameter("fpassword-access"));
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
				<li class="nav-item"><a class="nav-link color-menu" href="#">Visualizar cadastro</a>
				<li class="nav-item"><a class="nav-link color-menu" href="alter-client-registration_view.jsp">Atualizar cadastro</a>
				<li class="nav-item"><a class="nav-link color-menu" href="delete-client-registration_view.jsp">Excluir cadastro</a>
			
				</li>

		</div>
		</div>
		<br> <br> <br>




		<!--------------------------formulario----------------------------------------------------------->

		<div class="largura-max-cadastro">
			<div class="largura-max-cadastro text-center">
				<h3>Demonstrativo do cadastro realizado.</h3>
				<p>As opções para a realização de alterações no cadastro estão
					logo abaixo do conteúdo cadastrado.</p>

			</div>
			<div class="borda-cor-cadastro">

				<!------>
				<div class="borda-cor-cadastro">
					<div class="form-row">

						<!------>
						<div class="form-group col-md-4">
							<label for="nome">Data do cadastro *</label> <input
								class="form-control" type="text" id="name" name="fname"
								placeholder="Data: <%=clientResultSelect.get(1).getDateRegistration()%>"
								Disabled></input>
						</div>
						<!------>
						
							<div class="form-group col-md-8">
								<label for="nome">Nome completo *</label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="Nome completo:  <%=clientResultSelect.get(1).getName()%>"
									Disabled></input>
							</div>
							<!------>
					</div>
					<!------>

					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="email">Email *</label> <input class="form-control"
								type="text" id="emaiL" name="femail"
								placeholder="Email: <%=clientResultSelect.get(1).getEmailRegistration()%>"
								Disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-4">
							<label for="senha">Senha *</label> <input class="form-control"
								type="password" id="password" name="fpassword"
								placeholder="Senha: <%=clientResultSelect.get(1).getPassword()%>"
								Disabled></input>
						</div>
					</div>

				</div>
				<br>



				<!----------------------------------------Separacao------------------------------------------->


				<div class="borda-cor-cadastro">
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="birthDate">Data de nascimento *</label> <input
								class="form-control" type="text" id="birthDate"
								name="fbirthDate"
								placeholder="Data: <%=clientResultSelect.get(1).getBirthDate()%>"
								Disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-5">
							<label for="document">Documento - CPF *</label> <input
								class="form-control" type="text" id="document" name="fdocument"
								placeholder="Documento - CPF: <%=clientResultSelect.get(1).getDocumentCpf()%>"
								Disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-4">
							<label for="phone">Telefone cel * </label> <input
								class="form-control" type="text" id="phone" name="fphone"
								placeholder="Telefone: <%=clientResultSelect.get(1).getPhone()%>"
								Disabled></input>
						</div>
					</div>
				</div>

				<br>

				<!----------------------------------------Separacao------------------------------------------->


				<div class="borda-cor-cadastro ">

					<div class="form-group">
						<label for="street">Rua *</label> <input class="form-control"
							type="text" id="street" name="fstreet"
							placeholder="Rua: <%=clientResultSelect.get(1).getStreet()%>"
							Disabled></input>
					</div>
					<!------>

					<div class="form-group ">
						<label for="complement">Complemento </label> <input
							class="form-control" type="text" id="complement"
							name="fcomplement"
							placeholder="Complemento: <%=clientResultSelect.get(1).getComplement()%>"
							Disabled></input>
					</div>
					<!------>

					<div class="form-row">
						<div class="form-group col-md-2">
							<label for="homeNumber">Numero*</label> <input
								class="form-control" type="text" id="homeNumber"
								name="fhomeNumber"
								placeholder="N.°: <%=clientResultSelect.get(1).getHomeNumber()%>"
								Disabled></input>
						</div>

						<!------>

						<div class="form-group col-md-10">
							<label for="neighborhood">Bairro*</label> <input
								class="form-control" type="text" id="neighborhood"
								name="fneighborhood"
								placeholder="Bairro: <%=clientResultSelect.get(1).getNeighborhood()%>"
								Disabled></input>
						</div>
					</div>

					<!------>

					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="city">Cidade *</label> <input class="form-control"
								type="text" id="city" name="fcity"
								placeholder="Cidade: <%=clientResultSelect.get(1).getCity()%>"
								Disabled></input>
						</div>
						<!------>
						<div class="form-group col-md-4">
							<label for="state">Estado *</label> <input class="form-control"
								type="text" id="city" name="fstate"
								placeholder="Estado: <%=clientResultSelect.get(1).getState()%>"
								Disabled></input>
						</div>
						<!------>


					</div>
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="zipCode">Cep *</label> <input class="form-control"
								type="text" id="zipCode" name="fzipCode"
								placeholder="Cep: <%=clientResultSelect.get(1).getZipCode()%>"
								Disabled></input>
						</div>
					</div>
				
				
			
				
				</div>
					
				
				 







				




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