<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	<%
	ClientDao dao_client = new ClientDao();
	try {

		ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
		dao_client.select_RegistrationClient_dao();
		clientResultSelect = dao_client.resultSelectRegistration_Dao("r@r", "123");

		out.print(clientResultSelect.get(1).getIdClient() + "<br>");
		out.print(clientResultSelect.get(1).getDateRegistration() + "<br>");
		out.print(clientResultSelect.get(1).getName() + "<br>");
		out.print(clientResultSelect.get(1).getBirthDate() + "<br>");
		out.print(clientResultSelect.get(1).getDocumentCpf() + "<br>");
		out.print(clientResultSelect.get(1).getEmailRegistration() + "<br>");
		out.print(clientResultSelect.get(1).getPassword() + "<br>");
		out.print(clientResultSelect.get(1).getPhone() + "<br>");
		out.print(clientResultSelect.get(1).getStreet() + "<br>");
		out.print(clientResultSelect.get(1).getComplement() + "<br>");
		out.print(clientResultSelect.get(1).getHomeNumber() + "<br>");
		out.print(clientResultSelect.get(1).getNeighborhood() + "<br>");
		out.print(clientResultSelect.get(1).getCity() + "<br>");
		out.print(clientResultSelect.get(1).getState() + "<br>");
		out.print(clientResultSelect.get(1).getZipCode() + "<br>");

		out.print("Acabou a lista" + "<br>");

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>


</body>
</html>