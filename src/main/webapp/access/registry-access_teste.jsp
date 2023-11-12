<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
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

<title>Cadastro do cliente</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



</head>
<body>
<%
/* ClientDao dao_client = new ClientDao(); 

ArrayList<ClientRegistration> result_list = dao_client.preparedlist(request.getParameter("fuser-name"), request.getParameter("fpassword-access"));

for(int i=0; i<list.size(); i++){
out.print(result_list.get(i).getIdClient() + "<br>");
out.print(result_list.get(i).getDateRegistration()+ "<br>");
out.print(result_list.get(i).getName()+ "<br>");
out.print(result_list.get(i).getBirthDate()+ "<br>");
out.print(result_list.get(i).getDocumentCpf()+ "<br>");
out.print(result_list.get(i).getEmailRegistration()+ "<br>");
out.print(result_list.get(i).getPassword()+ "<br>");
out.print(result_list.get(i).getPhone()+ "<br>");
out.print(result_list.get(i).getStreet()+ "<br>");
out.print(result_list.get(i).getComplement()+ "<br>");
out.print(result_list.get(i).getHomeNumber()+ "<br>");
out.print(result_list.get(i).getNeighborhood()+ "<br>");
out.print(result_list.get(i).getCity()+ "<br>");
out.print(result_list.get(i).getState()+ "<br>");
out.print(result_list.get(i).getZipCode()+ "<br>");
	}
 out.print("Acabou a lista");*/
 
 
 %>


	






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