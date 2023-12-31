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
<%@ page language="java"
	errorPage="error-redirection/error-redirection_admin-access.jsp"%>
<meta charset="utf-8">
<title>Admin access</title>
</head>
<body>
	<%
	AdministratorRegistration administratorRegistration = new AdministratorRegistration();
	AdminRegistrationDao adminRegistrationDao = new AdminRegistrationDao();

	administratorRegistration.setEmailAccess(request.getParameter("femail_main-admin"));
	administratorRegistration.setAdminPassword(request.getParameter("fmain-admin-password"));
	administratorRegistration.setAccessLevel(request.getParameter("faccessLevel_access"));
	adminRegistrationDao.access_Administrator_dao(administratorRegistration.getEmailAccess(),
			administratorRegistration.getAdminPassword(), administratorRegistration.getAccessLevel());

	if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getEmailAccess()
			.equals(administratorRegistration.getEmailAccess()))
		if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAdminPassword()
		.equals(administratorRegistration.getAdminPassword()))
			if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel()
			.equals(administratorRegistration.getAccessLevel())) {
	%>


	<%
	if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel().equals("Administrativo")) {
	%>
	<script>
		window.location.href = 'main-admin/main-page_home.jsp';
	</script>
	<%
	} else if (adminRegistrationDao.returnAccess_Administrator_dao().get(0).getAccessLevel().equals("Manutenção")) {
	%>

	<script>
		window.location.href = 'standard-admin/standard-page_home.jsp';
	</script>

	<%
	}
	%>

	<%
	}
	%>

	<%
	if (adminRegistrationDao.returnAccess_Administrator_dao().get(0)
			.getEmailAccess() != (administratorRegistration.getEmailAccess()))
		if (adminRegistrationDao.returnAccess_Administrator_dao().get(0)
		.getAdminPassword() != (administratorRegistration.getAdminPassword()))
			if (adminRegistrationDao.returnAccess_Administrator_dao().get(0)
			.getAccessLevel() != (administratorRegistration.getAccessLevel())) {
	%>


	<script>
		window.location.href = '../error-redirection/error-redirection_admin-access.jsp';
	</script>

	<%
	}
	%>

</body>
</html>