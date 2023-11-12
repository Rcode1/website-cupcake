package br.com.dto.methods;

import javax.swing.JOptionPane;
import javax.swing.filechooser.FileSystemView;
import javax.swing.JFileChooser;
import java.nio.file.*;
import java.io.File;
import java.io.IOException;

public class ManipulateFiles {

	public void uploadFile(String imageFolderAddress, String folderName, String imageName) throws IOException {
		JFileChooser jfc = new JFileChooser(FileSystemView.getFileSystemView().getHomeDirectory());
		int returnValue = jfc.showOpenDialog(null);

		// Abre uma caixa de dialogo para selecionar um arquivo do computador.
		if (returnValue == JFileChooser.APPROVE_OPTION) {
			File selectedFile = jfc.getSelectedFile();
			System.out.println(selectedFile.getAbsolutePath());

			// Caixa de dialogo para salvar ou cancelar, sem opções (retorna -1).
			// Para salvar- (retorna 0), para cancelar- (retorna 1), sem opções (retorna -1)

			Object[] options = { "Salvar", "Cancelar" };
			int x = JOptionPane.showOptionDialog(null, "Selecione a opção desejada",
					"Caixa de diálogo destinada a inserir imagem.", JOptionPane.DEFAULT_OPTION,
					JOptionPane.WARNING_MESSAGE, null, options, options[0]);

			// Carrega a imagem para salvar
			Path path = Paths.get(selectedFile.getAbsolutePath());
			byte[] bytesArquivo = Files.readAllBytes(path);

			// Traz a opção de salvar a imagem com outro nome caso ja tenha o arquivo salvo
			if (x == 0) {
				File file = new File(imageFolderAddress + folderName);
				file.mkdir();
				Path pathTo = Paths.get(imageFolderAddress + folderName + imageName);
				Files.write(pathTo, bytesArquivo);

			}
		}

	}

	public void deleteFile(String imageFolderAddress, String folderName, String imageName) throws IOException {
		// Caixa de dialogo para excluir o arquivo
		Object[] options = { "Excluir", "Cancelar" };
		int x = JOptionPane.showOptionDialog(null, "Selecione a opção desejada",
				"Caixa de diálogo destinada a excluir imagem.", JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE,
				null, options, options[0]);

		if (x == 0) {
			// Item para deletar os arquivos
			File f = new java.io.File(imageFolderAddress + folderName + imageName);
			f.delete();

		}
	}

	public void deleteFolder(String imageFolderAddress, String folderName) throws IOException {
		// Caixa de dialogo para excluir o arquivo
		File f = new java.io.File(imageFolderAddress + folderName);
		f.delete();

	}

}
