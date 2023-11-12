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
//ClientRegistration client_dto = new ClientRegistration();
ClientDao dao_client = new ClientDao();
try{
	
	
	 
	 ArrayList<ClientRegistration> clientResultSelect = new ArrayList<>();
	 clientResultSelect = dao_client.resultSelectRegistration_Dao("rodrigo.braga29@hotmail.com","123");
	
			
			out.print(clientResultSelect.get(1).getIdClient()+ "<br>");
			out.print(clientResultSelect.get(1).getDateRegistration()+ "<br>");
			out.print(clientResultSelect.get(1).getName()+ "<br>");
			out.print(clientResultSelect.get(1).getBirthDate()+ "<br>");
			out.print(clientResultSelect.get(1).getDocumentCpf()+ "<br>");
			out.print(clientResultSelect.get(1).getEmailRegistration()+ "<br>");
			out.print(clientResultSelect.get(1).getPassword()+ "<br>");
			out.print(clientResultSelect.get(1).getPhone()+ "<br>");
			out.print(clientResultSelect.get(1).getStreet()+ "<br>");
			out.print(clientResultSelect.get(1).getComplement()+ "<br>");
			out.print(clientResultSelect.get(1).getHomeNumber()+ "<br>");
			out.print(clientResultSelect.get(1).getNeighborhood()+ "<br>");
			out.print(clientResultSelect.get(1).getCity()+ "<br>");
			out.print(clientResultSelect.get(1).getState()+ "<br>");
			out.print(clientResultSelect.get(1).getZipCode()+ "<br>");
		
		 out.print("Acabou a lista"+"<br>");



}catch(Exception e){
	
}
	
%>




	
	
</body>
</html>