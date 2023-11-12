<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ClientRegistration dto_registrationClient = new ClientRegistration();
	
	
    dto_registrationClient.setName("teste JSP");
	dto_registrationClient.setBirthDate("teste JSP");
	dto_registrationClient.setDocumentCpf("teste JSP");
	dto_registrationClient.setEmailRegistration("teste JSP");
	dto_registrationClient.setPassword("teste JSP");
	dto_registrationClient.setPhone("teste JSP");
	dto_registrationClient.setStreet("teste JSP");
	dto_registrationClient.setComplement("teste JSP");
	dto_registrationClient.setHomeNumber("teste JSP");
	dto_registrationClient.setNeighborhood("teste JSP");
	dto_registrationClient.setCity("teste JSP");
	dto_registrationClient.setState("teste JSP");
	dto_registrationClient.setZipCode("teste JSP");
	
	ClientDao exe = new  ClientDao();
	exe.registrationClient_Dao(dto_registrationClient);
	
	
	%>
	<h1>Enviado para o banco!</h1>
</body>
</html>