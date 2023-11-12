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
	
	dto_registrationClient.setName(request.getParameter("fname"));
	dto_registrationClient.setBirthDate(request.getParameter("fbirthDate"));
	dto_registrationClient.setDocumentCpf(request.getParameter("fdocument"));
	dto_registrationClient.setEmailRegistration(request.getParameter("femail"));
	dto_registrationClient.setPassword(request.getParameter("fpassword"));
	dto_registrationClient.setPhone(request.getParameter("fphone"));
	dto_registrationClient.setStreet(request.getParameter("fstreet"));
	dto_registrationClient.setComplement(request.getParameter("fcomplement"));
	dto_registrationClient.setHomeNumber(request.getParameter("fhomeNumber"));
	dto_registrationClient.setNeighborhood(request.getParameter("fneighborhood"));
	dto_registrationClient.setCity(request.getParameter("fcity"));
	dto_registrationClient.setState(request.getParameter("fstate"));
	dto_registrationClient.setZipCode(request.getParameter("fzipCode"));
	
	ClientDao dao_client = new ClientDao();
	dao_client.registrationClient_Dao(dto_registrationClient);
	
	%>
	
	
	
</body>
</html>