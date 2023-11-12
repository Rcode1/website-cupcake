<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
ClientRegistration client_dto = new ClientRegistration();
ClientDao dao_client = new ClientDao();
try{
	
	
	 dao_client.select_RegistrationClient_dao();

	String a = "rodrigo.braga29@hotmail.com";
	
	
		//if(list.get(i).getEmailRegistration().equals(a)){	// filtro para a seleção
		
		out.print(client_dto.getIdClient() + "<br>");
		out.print(client_dto.getDateRegistration()+ "<br>");
		out.print(client_dto.getName()+ "<br>");
		out.print(client_dto.getBirthDate()+ "<br>");
		out.print(client_dto.getDocumentCpf()+ "<br>");
		out.print(client_dto.getEmailRegistration()+ "<br>");
		out.print(client_dto.getPassword()+ "<br>");
		out.print(client_dto.getPhone()+ "<br>");
		out.print(client_dto.getStreet()+ "<br>");
		out.print(client_dto.getComplement()+ "<br>");
		out.print(client_dto.getHomeNumber()+ "<br>");
		out.print(client_dto.getNeighborhood()+ "<br>");
		out.print(client_dto.getCity()+ "<br>");
		out.print(client_dto.getState()+ "<br>");
		out.print(client_dto.getZipCode()+ "<br>");
		
		 out.print("Acabou a lista"+"<br>");
		
		 
			
	
	//}
	





}catch(Exception e){
	
}
	
%>




	
	
</body>
</html>