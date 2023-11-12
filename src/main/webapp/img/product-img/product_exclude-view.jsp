<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.URL"%>
<%@page import="javax.imageio.ImageIO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 
<form action="product_image-exclude.jsp" method="Post" >

<label for="myfile">Digite o nome da imagem:</label>
<input type="text" id="myfile" name="myImg"> 

<button type="submit"> Excluir</button>

</form>




</body>
</html>