<%@page import="br.com.dto.methods.InsertDate"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
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
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Teste de povoação do banco de dados</h2>
	<form action="" method="post">
		<input name="inicio" placeholder="digite ok"></input><br>
		
		<input name="Name" placeholder="Name"></input><br> <input
			name="DocumentCpf" placeholder="CPF"></input><br> 
			<input name="EmailRegistration" placeholder="Email"></input> <br>
			<input	name="Password" placeholder="Password"></input><br> 
			<input name="Phone" placeholder="Phone"></input><br>
			<input name="Street" placeholder="Street"></input><br>
			 <input	name="Complement" placeholder="Complement"></input><br>
            <input	name="HomeNumber" placeholder="HomeNumber"></input><br> 
            <input	name="Neighborhood" placeholder="Neighborhood"></input><br> 
            <input	name="City" placeholder="City"></input><br>
            <input name="State"	placeholder="State"></input><br> 
            <input name="ZipCode"placeholder="ZipCode"></input><br><br>
		
		<button type="submit">Enviar dados</button>
	</form>

	<%
	InsertDate InsertDate = new InsertDate();
	if(request.getParameter("inicio")!=null && request.getParameter("inicio").equals("ok") ){
	
	ClientRegistration dto_registrationClient = new ClientRegistration();
	dto_registrationClient.setName(request.getParameter("Name"));
	dto_registrationClient.setBirthDate(InsertDate.getDate());
	dto_registrationClient.setDocumentCpf(request.getParameter("DocumentCpf"));
	dto_registrationClient.setEmailRegistration(request.getParameter("EmailRegistration"));
	dto_registrationClient.setPassword(request.getParameter("Password"));
	dto_registrationClient.setPhone(request.getParameter("Phone"));
	dto_registrationClient.setStreet(request.getParameter("Street"));
	dto_registrationClient.setComplement(request.getParameter("Complement"));
	dto_registrationClient.setHomeNumber(request.getParameter("HomeNumber"));
	dto_registrationClient.setNeighborhood(request.getParameter("Neighborhood"));
	dto_registrationClient.setCity(request.getParameter("City"));
	dto_registrationClient.setState(request.getParameter("State"));
	dto_registrationClient.setZipCode(request.getParameter("ZipCode"));

	ClientDao clientDao = new ClientDao();
	clientDao.registrationClient_Dao(dto_registrationClient);%>
	<br>
	<br>
	<h1>Enviado para o banco de dados!</h1><br>
	<%= "Teste realizado em: "+InsertDate.getDate()%>
	<%
	}
	%>

</body>
</html>