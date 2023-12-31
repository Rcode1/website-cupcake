<%@page import="br.com.dao.client.ClientDao"%>
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
<%@ page language="java" errorPage="../error-redirection/error-redirection_admin-access.jsp"%>
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
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet"
	type="text/css">


<title>Admin access</title>

</head>
<body>




	<div class="center-div"
		style="max-width: 800px; border: 1px solid gray;">

		<div class="card float-rigth" style="width: 20rem;">

			<div class="center-div-text">
				<div class="card-body">
					<h5 class="card-title">Acesse a sua conta!</h5>
					<p class="card-text">Uso exclusivo para administradores.</p>
				</div>


			</div>

			<div class="center-div-text">
				<label for="usuario">Use o seu email empresarial e a sua
					senha cadastrada de acordo com o seu nível de acesso. </label>
			</div>
			<br>
			<form action="admin_account.jsp" method="post">
				<div class="center-div-text">
					<input class="form-control" type="email" id="email_main-admin"
						name="femail_main-admin" placeholder="Email do administrador:"
						required></input><br> <input class="form-control"
						type="password" id="main-admin-password"
						name="fmain-admin-password" placeholder="Entre com a senha:"
						required></input>


					<div class="form-group col-md-14">
						<label for="accessLevel_access"> </label> <select
							id="accessLevel_access" class="form-control"
							name="faccessLevel_access">
							<option selected>Nível de acesso:</option>
							<option>Manutenção</option>
							<option>Administrativo</option>


						</select>
					</div>

					<div
						style="margin-top: 75px; float: left; clear: bottom; margin: 60px 0px 10px 0px;">
						<button type="submit" class="btn btn-primary btn-sm">Acessar</button>

						<a href="../index.jsp"><button type="button"
								class="btn btn-secondary btn-sm" style="margin-left: 10px">Sair</button></a>
					</div>
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