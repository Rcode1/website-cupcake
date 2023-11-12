<%@page import="java.lang.String" %>
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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

<title>Cadastro teste result</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



</head>
<body>
<%

ClientDao dao_client = new ClientDao();
String dateRegistration, name, birthDate, documentCpf, emailRegistration, 
password, phone, street, complement, homeNumber, neighborhood, city, state, zipCode;
ClientRegistration g = new ClientRegistration();
try{
	
	
	ArrayList<ClientRegistration> list = dao_client.select_RegistrationClient_dao();

	String a = "1";
	
	for(int i=0; i<list.size(); i++){
		if(list.get(i).getEmailRegistration().equals(a)){	// filtro para a seleção
		
	
	 g.setIdClient(list.get(i).getIdClient());
	 dateRegistration = list.get(i).getDateRegistration();
	 name=	list.get(i).getName();
	 birthDate = list.get(i).getBirthDate();
	 documentCpf=	list.get(i).getDocumentCpf();
	 emailRegistration=	list.get(i).getEmailRegistration();
	 password	=list.get(i).getPassword();
	 phone= list.get(i).getPhone();
	 street	=list.get(i).getStreet();
	 complement=	list.get(i).getComplement();
	 homeNumber =list.get(i).getHomeNumber();
	 neighborhood =list.get(i).getNeighborhood();
	 city =list.get(i).getCity();
	 state	=list.get(i).getState();
	 zipCode =list.get(i).getZipCode();
	
		
		 out.print("Acabou a lista");
		}else {
			out.print("Não existe este código! ");
				
			
		}
		 
	
	
	}
	

}catch(Exception e){
	
}

	
%>

<%=g.getIdClient() %>









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
