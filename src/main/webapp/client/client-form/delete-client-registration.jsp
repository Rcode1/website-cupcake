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

ClientRegistration dto_registrationClient = new ClientRegistration();
ClientDao dao_client = new ClientDao();


if(dao_client.clientDataPersistence().get(1).getIdClient().equals(Integer.parseInt(request.getParameter("fidClient")))){

dto_registrationClient.setIdClient(Integer.parseInt(request.getParameter("fidClient")));
dao_client.excludeClientRegistration_Dao(dto_registrationClient);
}else{
	out.print("n�o realizou a exclus�o");
}


//dto_registrationClient.setIdClient(dao_client.clientDataPersistence().get(1).getIdClient());





%>

<h1>Excluido!</h1>
</body>
</html>