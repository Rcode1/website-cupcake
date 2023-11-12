<%@page import="br.com.dao.product.ProductDao"%>
<%@page import="br.com.dto.product.ProductImage"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<form action="" Method="post">
<p>Este teste tem como referencia o ID do produto, para verificar o retorno lógico dos dados armazenados</p>
		<input type="text" name="obj"> Teste de retorno, V/F do banco de dados (Cadastro de imagens)</input>

		<button type="submit">testar</button>

	</form>
	<br>
	<%
	ProductDao productDao = new ProductDao();
	ArrayList<ProductImage> selectImage_dao = new ArrayList<>();
	selectImage_dao = productDao.select_productImage_dao();
	Boolean verification = null, result = null;

	if (request.getParameter("obj") != null) {
		Integer test = Integer.parseInt(request.getParameter("obj"));

		for (int i = 0; i < selectImage_dao.size(); i++) {
			out.print("");

			if (selectImage_dao.get(i).getIdProduct().equals(test)) {

		verification = true;

		out.print("Retorno de verificação:  " + i + " " + verification + "<br>");

			} else if (!selectImage_dao.get(i).getIdProduct().equals(test)) {

		verification = false;
		out.print("Retorno de verificação:  " + i + " " + verification + "<br>");

			}
			
			if(verification==true){
				result = true;
			}

		}
		if(result!=null && result==true){
			out.print("Tem itens da verificação verdadeiro");
		}else{
			out.print("Todos são falsos");
		}
		
		
	}
	%>
</body>
</html>