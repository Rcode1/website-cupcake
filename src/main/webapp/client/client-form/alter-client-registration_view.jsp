<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page import="java.lang.String" %>

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
<%@ page language="java" errorPage="update_redirect-view.jsp" %>
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




<%

//ClientRegistration client_dto = new ClientRegistration();
ClientDao dao_client = new ClientDao();
ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
try{
	
	
	
	
	 
	//Este lina traz como resultado às informações contidas no DB de acordo com o usuário e senha
			//	 clientResultSelect = dao_client.resultSelectRegistration_Dao( "", "");
		
	 clientResultSelect = dao_client.clientListResult();
	
			
}catch(Exception e){
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
				<li class="nav-item"><a class="nav-link color-menu" href="#">Atualizar cadastro</a>
				<li class="nav-item"><a class="nav-link color-menu" href="delete-client-registration_view.jsp">Excluir cadastro</a>
			
				</li>
</ul>
		</div>
		</div>
		<br> <br> <br>




		<!--------------------------formulario----------------------------------------------------------->

		<div class="largura-max-cadastro">
			<div class="largura-max-cadastro text-center"><h3>Área destinada a atualização ou exclusão dos dados cadastrais.</h3>
			<p>Nesta área é possível realizar as alterações necessárias nos dados cadastrados, bem como, iniciar 
			o processo de exclusão permanente da nossa base de dados.  </p>
			
			</div>
			<div class="borda-cor-cadastro">
				<form action="alter-client-registration.jsp"
					id="registration-client-visitor" method="POST">
					<!------>
					<div class="borda-cor-cadastro">
					
						<!--  -->
						
						<div class="borda-red">
							<p >Digite o mesmo código que
								aparece no campo (confirmação para atualização) que está logo
								abaixo, em seguida click no botão "Atualizar cadastro".</p>

							<div class="form-group col-md-4"
								Style="margin-left: auto; margin-right: auto; text-align: center;">

								<label for="idClient">Confirmação para atualização</label> <input
									class="form-control" type="text" id="idClient" name="fidClient"
									placeholder=" Digite aqui este código: <%=clientResultSelect.get(0).getIdClient()%>"></input>
							</div>
						</div>
					
					<!--  -->
					
						<div class="form-row">

							<!------>
							<div class="form-group col-md-4">
								<label for="nome">Data do cadastro *</label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="Data: <%=clientResultSelect.get(0).getDateRegistration() %>" disabled></input>
							</div>
							<!------>
							<div class="form-group col-md-8">
								<label for="name">Nome completo *</label> <input
									class="form-control" type="text" id="name" name="fname"
									placeholder="Nome completo:  <%=clientResultSelect.get(0).getName()%>" ></input>
							</div>
                              <!------>
						</div>
						<!------>
						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="email">Email *</label> <input class="form-control"
									type="text" id="emaiL" name="femail" placeholder="Email: <%=clientResultSelect.get(0).getEmailRegistration()%>"></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="senha">Senha *</label> <input class="form-control"
									type="text" id="password" name="fpassword"
									placeholder="Senha: <%=clientResultSelect.get(0).getPassword()%>" ></input>
							</div>
						</div>

					</div>
					<br>



					<!----------------------------------------Separacao------------------------------------------->


					<div class="borda-cor-cadastro">
						<div class="form-row">
							<div class="form-group col-md-3">
								<label for="birthDate">Data de nascimento *</label> <input
									class="form-control" type="date" id="birthDate"
									name="fbirthDate" placeholder="Data: <%=clientResultSelect.get(0).getBirthDate()%>" ></input>
							</div>
							<!------>
							<div class="form-group col-md-5">
								<label for="document">Documento - CPF *</label> <input
									class="form-control" type="text" id="document" name="fdocument"
									placeholder="Documento - CPF: <%=clientResultSelect.get(0).getDocumentCpf()%>"></input>
							</div>
							<!------>
							<div class="form-group col-md-4">
								<label for="phone">Telefone cel *
									</label> <input class="form-control" type="text" id="phone"
									name="fphone" placeholder="Telefone: <%=clientResultSelect.get(0).getPhone()%>"></input>
							</div>
						</div>
					</div>

					<br>

					<!----------------------------------------Separacao------------------------------------------->


					<div class="borda-cor-cadastro ">

						<div class="form-group">
							<label for="street">Rua *</label> <input class="form-control"
								type="text" id="street" name="fstreet" placeholder="Rua: <%=clientResultSelect.get(0).getStreet()%>"></input>
						</div>
						<!------>

						<div class="form-group ">
							<label for="complement">Complemento </label> <input
								class="form-control" type="text" id="complement"
								name="fcomplement" placeholder="Complemento: <%=clientResultSelect.get(0).getComplement()%>"></input>
						</div>
						<!------>

						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="homeNumber">Numero*</label> <input
									class="form-control" type="text" id="homeNumber"
									name="fhomeNumber" placeholder="N.°: <%=clientResultSelect.get(0).getHomeNumber()%>"></input>
							</div>

							<!------>

							<div class="form-group col-md-10">
								<label for="neighborhood">Bairro*</label> <input
									class="form-control" type="text" id="neighborhood"
									name="fneighborhood" placeholder="Bairro: <%=clientResultSelect.get(0).getNeighborhood()%>"></input>
							</div>
						</div>

						<!------>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="city">Cidade *</label> <input class="form-control"
									type="text" id="city" name="fcity" placeholder="Cidade: <%=clientResultSelect.get(0).getCity()%>"></input>
							</div>
							<!------>
							
										
							
							<div class="form-group col-md-4">
								<label for="state">Alterar estado *</label> <select id="state"
									class="form-control" name="fstate" >
									<option selected> <%=clientResultSelect.get(0).getState()%></option>
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
									type="text" id="zipCode" name="fzipCode" placeholder="Cep: <%=clientResultSelect.get(0).getZipCode()%>"></input>
							</div>
						</div>
						
					</div>
					<br> <br>


					<button type="submit" class="btn btn-primary btn-sm ">Atualizar cadastro</button>
					
					
					
					

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
		//	$("#birthDate").mask('00/00/0000', {
		//		reverse : true
		//	});
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