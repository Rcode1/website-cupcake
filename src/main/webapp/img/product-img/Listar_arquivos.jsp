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

String diretorio = "C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img";
ArrayList<Object> list = new ArrayList<>();

File file = new File(diretorio);
	File afile[] = file.listFiles();
	int i = 0;
	Object a;
	
	for (int j = afile.length; i < j; i++) {
		File arquivos = afile[i];
		
		
		//Retorna todos os arquivos
		out.println(arquivos.getName()+"<br>");
		
			
	//*********************************	
		//Retorna apenas o pesquisado
		//if(arquivos.getName().equals("1.jpg")==true){
		//	out.println(arquivos.getName());
		//}
		
	//**********************************	
	
	
	//Retorna apenas a primeira letra
	
	//out.println(arquivos.getName().charAt(0));
	//	out.println(arquivos.getName().charAt(1)+"<br>");
	
	}
	
	
	
	
		


	
	
	




		


%>




</body>
</html>