
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet"
	href="../css/css-personalizado/personalizacao.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<script type="text/javascript" language="javascript"
	src="jquery/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Documento sem t�tulo</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet"
	type="text/css">


<title>Insert title here</title>

</head>
<body>

	<div class="center-div">
		<div class="card " style="width: 20rem;">


			<div class="center-div-text">
				<div class="card-body">
					<h5 class="card-title">Acesse a sua conta!</h5>
					<p class="card-text">Aqui voc� acessar� a sua conta, basta
						informar o usu�rio e senha.</p>
				</div>


			</div>

			<div class="center-div-text">
				<label for="usuario">Use o seu email e senha cadastrados
					para validar o acesso!</label>
			</div>
			<br>
			<form action="../client/client_form/return-client-registration_view.jsp"
				method="post">
				<div class="center-div-text">
					<input class="form-control" type="text" id="user-name"
						name="fuser-name" placeholder="Entre com o usu�rio!" required></input><br>
					<input class="form-control" type="password" id="password-access"
						name="fpassword-access" placeholder="Entre com a sua senha!" required></input>
				</div>
				<div class="center-div-text">

					<button type="submit" class="btn btn-primary btn-sm"
						style="margin-right: 10px;">Acessar</button>

					<a href="../index.html"><button type="button"
							class="btn btn-secondary btn-sm">P�gina inicial</button></a> <a
						href="../client/client_form/client-registration-view.jsp"
						style="margin-left: 10px"><button type="button"
							class="btn btn-secondary btn-sm">Cadastrar</button></a>
				</div>
			</form>



		</div>

	</div>




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