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

		
	
		
		
		//Caixa de dialogo para excluir o arquivo
		Object[] options = { "Excluir", "Cancelar" };
		 int x =  JOptionPane.showOptionDialog(null, "Selecione a opção desejada", "Informação", JOptionPane.DEFAULT_OPTION, 
				 JOptionPane.WARNING_MESSAGE, null, options, options[0] );
		 
		 
		if(x==0){
			//Item para deletar os arquivos
			 File f=new java.io.File("C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img\\"+request.getParameter("myImg")); 
				 f.delete();
			 
		 }



%>




</body>
</html>