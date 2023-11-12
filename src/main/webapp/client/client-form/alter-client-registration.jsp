<%@page import="java.util.ArrayList"%>
<%@page import="br.com.dao.client.ClientDao"%>
<%@page import="br.com.dto.client.ClientRegistration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	ClientDao dao_client = new ClientDao();
 
	// Condicional para a realização do update. Caso não hajam alterações, entrarão no DB os Valores já cadastrados, 
	//locados no metodo estatico clientDataPersistence().
	// O if verifica a veracidade do ID enquanto os ternários verificam os dados vindos da view pelo metodo post.
	if (dao_client.clientDataPersistence().get(1).getIdClient()
			.equals(Integer.parseInt(request.getParameter("fidClient")))) {

		ClientRegistration clientUpdate_dto = new ClientRegistration();

		Integer a = dao_client.clientDataPersistence().get(1).getIdClient();

		ClientRegistration dto_registrationClient = new ClientRegistration();

		dto_registrationClient.setIdClient(Integer.parseInt(request.getParameter("fidClient")));

		dto_registrationClient
		.setName((request.getParameter("fname").isEmpty()) ? dao_client.clientDataPersistence().get(1).getName()
				: request.getParameter("fname"));
		
		dto_registrationClient
		.setBirthDate(request.getParameter("fbirthDate").isEmpty() ? dao_client.clientDataPersistence().get(1).getBirthDate()
				: request.getParameter("fbirthDate"));
		
		dto_registrationClient
		.setDocumentCpf(request.getParameter("fdocument").isEmpty() ? dao_client.clientDataPersistence().get(1).getDocumentCpf()
				: request.getParameter("fdocument"));
		
		dto_registrationClient
		.setEmailRegistration(request.getParameter("femail").isEmpty() ? dao_client.clientDataPersistence().get(1).getEmailRegistration()
				: request.getParameter("femail"));
		
		dto_registrationClient
		.setPassword(request.getParameter("fpassword").isEmpty() ? dao_client.clientDataPersistence().get(1).getPassword()
				: request.getParameter("fpassword"));
		
		dto_registrationClient
		.setPhone(request.getParameter("fphone").isEmpty() ? dao_client.clientDataPersistence().get(1).getPhone()
				: request.getParameter("fphone"));
		
		dto_registrationClient
		.setStreet(request.getParameter("fstreet").isEmpty() ? dao_client.clientDataPersistence().get(1).getStreet()
				: request.getParameter("fstreet"));
		
		dto_registrationClient
		.setComplement(request.getParameter("fcomplement").isEmpty() ? dao_client.clientDataPersistence().get(1).getComplement()
				: request.getParameter("fcomplement"));
		
		dto_registrationClient
		.setHomeNumber(request.getParameter("fhomeNumber").isEmpty() ? dao_client.clientDataPersistence().get(1).getHomeNumber()
				: request.getParameter("fhomeNumber"));
		
		dto_registrationClient
		.setNeighborhood(request.getParameter("fneighborhood").isEmpty()? dao_client.clientDataPersistence().get(1).getNeighborhood()
		: request.getParameter("fneighborhood"));
		
		dto_registrationClient
		.setCity(request.getParameter("fcity").isEmpty() ? dao_client.clientDataPersistence().get(1).getCity()
				: request.getParameter("fcity"));
		
		dto_registrationClient
		.setState(request.getParameter("fstate").isEmpty() ? dao_client.clientDataPersistence().get(1).getState()
				: request.getParameter("fstate"));
		
		dto_registrationClient
		.setZipCode(request.getParameter("fzipCode").isEmpty() ? dao_client.clientDataPersistence().get(1).getZipCode()
				: request.getParameter("fzipCode"));

		ClientDao dao_client1 = new ClientDao();
		dao_client1.updateRegistrationClient_Dao(dto_registrationClient);

	} else {
		out.print("não realizou a alteração");
	}
	%>

	<h1>Excluido!</h1>
</body>
</html>