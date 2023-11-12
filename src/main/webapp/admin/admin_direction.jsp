<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
<%@page import="br.com.dto.admin.AdministratorRegistration"%>
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
<title>Admin access</title>
</head>
<body>

	
	
	
	
	
	
	
	
	<%
	AdministratorRegistration administratorRegistration = new AdministratorRegistration();
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();

	if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel().equals("Administrativo")) {
	%>
	<script>
		window.location.href = 'main-admin/main-page_home.jsp';
	</script>
	<%
	} else if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel().equals("Manutenção")) {
	%>

	<script>
		window.location.href = 'atandard-admin/standard-page_home.jsp';
	</script>

	<%
	}
	%>







</body>
</html>