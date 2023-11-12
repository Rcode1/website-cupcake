
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page import="java.lang.String" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

</head>
<body>
<%@ page errorPage = "error-page.jsp" %> 




<%

//ClientRegistration client_dto = new ClientRegistration();
ClientDao dao_client = new ClientDao();
ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
try{
	
	
	
	
	 
	//Este lina traz como resultado às informações contidas no DB de acordo com o usuário e senha
			//	 clientResultSelect = dao_client.resultSelectRegistration_Dao( "", "");
		
	 clientResultSelect = dao_client.clientDataPersistence();
	
			
}catch(Exception e){
	e.printStackTrace();
}
	


%>


	<div class="alinhamento-tamanho_max fundo">
		<!--------------------Menu principal-------------------------------->
		<div class="  alinhamento-tamanho_max fundo fixed-top fundo">
			<ul class="nav nav-tabs menu-principal ">
				<li class="nav-item"><a class="nav-link active "
					href="../../index.html">Home</a></li>
				<li class="nav-item"><a class="nav-link color-menu" href="#">Link</a>
				</li>
				<li class="nav-item"><a class="nav-link color-menu" href="#">Disabled</a>
				</li>


				<!--  Botao do menu com sub menu-->

				<!-- 	<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle color-menu" data-toggle="dropdown"
					href="#" role="button" aria-haspopup="true" aria-expanded="false">Cadastro</a>
					<div class="dropdown-menu">
						<a class="dropdown-item "
							href="html/client/client-registration-visitor.html">Visitante</a>
						<a class="dropdown-item"
							href="html/client/client-registration-full.html">Pessoa
							fisica</a> <a class="dropdown-item"
							href="html/client/client-registration-visitor.html">Pessoa
							Jurídica</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Separated link</a>
					</div></li> -->
				<!-- Este menu está desativado, (em comentário), para uso posterior -->
			</ul>
		</div>
		<br> <br> <br>




		<!--------------------------formulario----------------------------------------------------------->

		<div class="largura-max-cadastro">
			<div class="largura-max-cadastro text-center"><h1>Área para a realização de alteração nos dados cadastrais.</h1>
			<p>Nesta área é possível realizar as alterações necessárias, ou até mesmo, excluir a sua conta.  </p>
			
			</div>
			<div class="borda-cor-cadastro">
				<form action="client-registration.jsp"
					id="registration-client-visitor" method="POST">
					<!------>
					<div class="borda-cor-cadastro">
						<div class="form-row">

							<!------>
							<div class="form-group col-md-4">
								<label for="nome">Data do cadastro *</label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="Data: <%=clientResultSelect.get(1).getDateRegistration() %>" ></input>
							</div>
							<!------>
							<div class="form-group col-md-8">
								<label for="nome">Nome completo *</label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="Nome completo:  <%=clientResultSelect.get(1).getName()%>" ></input>
							</div>
                              <!------>
						</div>
						<!------>
						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="email">Email *</label> <input class="form-control"
									type="text" id="emaiL" name="femail" placeholder="Email: <%=clientResultSelect.get(1).getEmailRegistration()%>"></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="senha">Senha *</label> <input class="form-control"
									type="txt" id="password" name="fpassword"
									placeholder="Senha: <%=clientResultSelect.get(1).getPassword()%>" ></input>
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
									name="fbirthDate" placeholder="Data: <%=clientResultSelect.get(1).getBirthDate()%>" ></input>
							</div>
							<!------>
							<div class="form-group col-md-5">
								<label for="document">Documento - CPF *</label> <input
									class="form-control" type="text" id="document" name="fdocument"
									placeholder="Documento - CPF: <%=clientResultSelect.get(1).getDocumentCpf()%>"></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="phone">Telefone cel *
									</label> <input class="form-control" type="text" id="phone"
									name="fphone" placeholder="Telefone: <%=clientResultSelect.get(1).getPhone()%>"></input>
							</div>
						</div>
					</div>

					<br>

					<!----------------------------------------Separacao------------------------------------------->


					<div class="borda-cor-cadastro ">

						<div class="form-group">
							<label for="street">Rua *</label> <input class="form-control"
								type="text" id="street" name="fstreet" placeholder="Rua: <%=clientResultSelect.get(1).getStreet()%>"></input>
						</div>
						<!------>

						<div class="form-group ">
							<label for="complement">Complemento </label> <input
								class="form-control" type="text" id="complement"
								name="fcomplement" placeholder="Complemento: <%=clientResultSelect.get(1).getComplement()%>"></input>
						</div>
						<!------>

						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="homeNumber">Numero*</label> <input
									class="form-control" type="text" id="homeNumber"
									name="fhomeNumber" placeholder="N.°: <%=clientResultSelect.get(1).getHomeNumber()%>"></input>
							</div>

							<!------>

							<div class="form-group col-md-10">
								<label for="neighborhood">Bairro*</label> <input
									class="form-control" type="text" id="neighborhood"
									name="fneighborhood" placeholder="Bairro: <%=clientResultSelect.get(1).getNeighborhood()%>"></input>
							</div>
						</div>

						<!------>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="city">Cidade *</label> <input class="form-control"
									type="text" id="city" name="fcity" placeholder="Cidade: <%=clientResultSelect.get(1).getCity()%>"></input>
							</div>
							<!------>
							
							<div class="form-group col-md-4">
								<label for="city">Estado *</label> <input class="form-control"
									type="text" id="state_" name="fstate_" placeholder="Estado: <%=clientResultSelect.get(1).getState()%>" disabled></input>
							</div>
							
							
							<div class="form-group col-md-4">
								<label for="state">Alterar estado *</label> <select id="state"
									class="form-control" name="fstate" >
									<option selected>Estado</option>
									<option>Acre (AC)</option>
									<option>Alagoas (AL)</option>
									<option>Amapá (AP)</option>
									<option>Amazonas (AM)</option>
									<option>Bahia (BA)</option>
									<option>Ceará (CE)</option>
									<option>Distrito Federal (DF)</option>
									<option>Espírito Santo (ES)</option>
									<option>Goiás (GO)</option>
									<option>Maranhão (MA)</option>
									<option>Mato Grosso (MT)</option>
									<option>Mato Grosso do Sul (MS)</option>
									<option>Minas Gerais (MG)</option>
									<option>Pará (PA)</option>
									<option>Paraíba (PB)</option>
									<option>Paraná (PR)</option>
									<option>Pernambuco (PE)</option>
									<option>Piauí (PI)</option>
									<option>Rio de Janeiro (RJ)</option>
									<option>Rio Grande do Norte (RN)</option>
									<option>Rio Grande do Sul (RS)</option>
									<option>Rondônia (RO)</option>
									<option>Roraima (RR)</option>
									<option>Santa Catarina (SC)</option>
									<option>São Paulo (SP)</option>
									<option>Sergipe (SE)</option>
									<option>Tocantins (TO)</option>

								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="zipCode">Cep *</label> <input class="form-control"
									type="text" id="zipCode" name="fzipCode" placeholder="Cep: <%=clientResultSelect.get(1).getZipCode()%>"></input>
							</div>
						</div>
						
					</div>
					<br> <br>


					<button type="submit" class="btn btn-primary btn-sm ">Alterar</button>
					<a href="../../index.html"><button type="button"
							class="btn btn-secondary btn-sm ">Página inicial</button></a>

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