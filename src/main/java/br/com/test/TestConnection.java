package br.com.test;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import javax.swing.JOptionPane;
import br.com.dao.client.ClientDao;
import br.com.dto.client.ClientRegistration;
import br.com.jdbc.ConnectionFactory;


public class TestConnection {

	public static void main(String[] args) {
		
		try {
			
			new ConnectionFactory().getConnection_client();
			JOptionPane.showMessageDialog(null, "Conectado.......");
			
			ClientRegistration obj = new ClientRegistration();
					
			obj.setName("Nome teste");
			obj.setBirthDate("24/03/2023");
			obj.setDocumentCpf("217.952.654-60");
			obj.setEmailRegistration("gdgdgdg@jgjgjg.com");
			obj.setPassword("123");
			obj.setPhone("12-9158 58 42");
			obj.setStreet("rua dddddddd");
			obj.setComplement("Jardin teste");
			obj.setHomeNumber("35 teste");
			obj.setNeighborhood("Bairro teste");
			obj.setCity("Cidade teste");
			obj.setState("Estado teste");
			obj.setZipCode("333.555.5");
			
					
			new ClientDao().registrationClient_Dao(obj);
			
			
			
			JOptionPane.showMessageDialog(null, "Conectadon e enviado.......");
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Falha......." + e);
		}
	}

}
