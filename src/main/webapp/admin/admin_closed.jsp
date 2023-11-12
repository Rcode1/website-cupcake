<%@page import="br.com.dao.adminRegistration.AdminRegistrationDao"%>
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
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();
	adminRegistrationDao.deleteAccess_Administrator_dao();
	adminRegistrationDao.removeUniqueSelectResultAdmin_Dao();
	
	%>

	<script>
		window.location.href = 'admin_access-account.jsp';
	</script>


</body>
</html>