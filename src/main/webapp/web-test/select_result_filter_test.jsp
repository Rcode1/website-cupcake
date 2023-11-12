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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

ClientDao dao_client = new ClientDao();
try{
	
	
	ArrayList<ClientRegistration> list = dao_client.select_RegistrationClient_dao();

	String a = "k";
	
	for(int i=0; i<list.size(); i++){
		if(list.get(i).getEmailRegistration().equals(a)){	// filtro para a seleção
		
		out.print(list.get(i).getIdClient() + "<br>");
		out.print(list.get(i).getDateRegistration()+ "<br>");
		out.print(list.get(i).getName()+ "<br>");
		out.print(list.get(i).getBirthDate()+ "<br>");
		out.print(list.get(i).getDocumentCpf()+ "<br>");
		out.print(list.get(i).getEmailRegistration()+ "<br>");
		out.print(list.get(i).getPassword()+ "<br>");
		out.print(list.get(i).getPhone()+ "<br>");
		out.print(list.get(i).getStreet()+ "<br>");
		out.print(list.get(i).getComplement()+ "<br>");
		out.print(list.get(i).getHomeNumber()+ "<br>");
		out.print(list.get(i).getNeighborhood()+ "<br>");
		out.print(list.get(i).getCity()+ "<br>");
		out.print(list.get(i).getState()+ "<br>");
		out.print(list.get(i).getZipCode()+ "<br>");
		
		 out.print("Acabou a lista");
		}
		 
			
	
	}
	

}catch(Exception e){
	
}
	String b="kkk";
%>

<%=b %>

</body>
</html>