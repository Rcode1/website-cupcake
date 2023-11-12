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

<form action="product_image-exclude.jsp" method="Post" >

<label for="myfile">Digite o nome da imagem:</label>
<input type="text" id="myfile" name="myImg"> 

<button type="submit"> criar</button>

</form>


<%

		JFileChooser jfc = new JFileChooser(FileSystemView.getFileSystemView().getHomeDirectory());

		int returnValue = jfc.showOpenDialog(null);
		
		//Testa a existencia do arquivo
		boolean exists = (new File("C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img\\teste1.jpg")).exists();
		

		
		//Abre uma caixa de dialogo para selecionar um arquivo do computador.
		if (returnValue == JFileChooser.APPROVE_OPTION) {
			File selectedFile = jfc.getSelectedFile();
			System.out.println(selectedFile.getAbsolutePath());
		
			
			//Caixa de dialogo para salvar ou cancelar, sem opções (retorna -1).  
			//Para salvar- (retorna 0), para cancelar- (retorna 1), sem opções (retorna -1)
			Object[] options = { "Salvar", "Cancelar" };
			 int x =  JOptionPane.showOptionDialog(null, "Selecione a opção desejada", "Informação", JOptionPane.DEFAULT_OPTION, 
					 JOptionPane.WARNING_MESSAGE, null, options, options[0] );	
					
					 
			
			//Carrega a imagem para salvar
			 Path path = Paths.get(selectedFile.getAbsolutePath());
			 byte[] bytesArquivo = Files.readAllBytes(path);
			
			//Traz a opção de salvar a imagem com outro nome caso ja tenha o arquivo salvo 
			 if(x==0){
				Path pathTo = Paths.get("C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img\\teste1.jpg");
			    Files.write(pathTo, bytesArquivo);
			
			}

				if(exists==true){
				 					
					 Path pathTo = Paths.get("C:\\Users\\hoo\\Desktop\\WebCupcake\\src\\main\\webapp\\img\\teste2.jpg");
					 Files.write(pathTo, bytesArquivo);
				}else{
					out.print("teste 1 não existe");
				}
			
		}
	
	
		
		


%>




</body>
</html>