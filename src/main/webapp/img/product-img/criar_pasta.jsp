<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.filechooser.FileSystemView"%>
<%@page import="javax.swing.JFileChooser"%>
<%@page import="java.nio.file.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>




<%

File file = new File("C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img\\pasta_teste");  

if (!file.exists()) {
    file.mkdirs();
   
}


		


%>




</body>
</html>