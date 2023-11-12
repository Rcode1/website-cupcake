package br.com.dao.client;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import br.com.dto.client.ClientRegistration;

import br.com.dto.methods.InsertDate;
import br.com.jdbc.ConnectionFactory;

public class ClientDao {

	
	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;
	ArrayList<ClientRegistration> list_verification = new ArrayList<>();
	InsertDate insertDate = new InsertDate();

	public ClientDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_client();
	}

	// Metodo para inserir o cliente no DB.
	public void registrationClient_Dao(ClientRegistration obj) {

		try {
			String sql = "INSERT INTO `db_cupcake_client`.`client_registration` (`date_registration`, "
					+ "`name`, `birth_date`, `document_cpf`, `email`, `password`, `phone`, `street`, "
					+ "`complement`, `home_number`, `neighborhood`, `city`, `state`, `zip_code`) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate()); // Insere a data automaticamente.
			stmt.setString(2, obj.getName());
			stmt.setString(3, obj.getBirthDate());
			stmt.setString(4, obj.getDocumentCpf());
			stmt.setString(5, obj.getEmailRegistration());
			stmt.setString(6, obj.getPassword());
			stmt.setString(7, obj.getPhone());
			stmt.setString(8, obj.getStreet());
			stmt.setString(9, obj.getComplement());
			stmt.setString(10, obj.getHomeNumber());
			stmt.setString(11, obj.getNeighborhood());
			stmt.setString(12, obj.getCity());
			stmt.setString(13, obj.getState());
			stmt.setString(14, obj.getZipCode());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	
	 
    // Metodo para selecionar os cliente cadastrados no DB. Este método será utilizado na área administrativa.
	//para consultas e manutenção.
	public ArrayList<ClientRegistration> select_RegistrationClient_dao() {

		try {
			
			String sql = "SELECT * from `db_cupcake_client`.`client_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

	
					while (rs.next()) {
				

							ClientRegistration obj_RegistrationClient = new ClientRegistration();
							
							obj_RegistrationClient.setIdClient(rs.getInt("id_client"));
							obj_RegistrationClient.setDateRegistration(rs.getString("date_registration"));    
							obj_RegistrationClient.setName(rs.getString("name"));
							obj_RegistrationClient.setBirthDate(rs.getString("birth_date"));
							obj_RegistrationClient.setDocumentCpf(rs.getString("document_cpf"));
							obj_RegistrationClient.setEmailRegistration(rs.getString("email"));
							obj_RegistrationClient.setPassword(rs.getString("password"));
							obj_RegistrationClient.setPhone(rs.getString("phone"));
							obj_RegistrationClient.setStreet(rs.getString("street"));
							obj_RegistrationClient.setComplement(rs.getString("complement"));
							obj_RegistrationClient.setHomeNumber(rs.getString("home_number"));
							obj_RegistrationClient.setNeighborhood(rs.getString("neighborhood"));
							obj_RegistrationClient.setCity(rs.getString("city"));
							obj_RegistrationClient.setState(rs.getString("state"));
							obj_RegistrationClient.setZipCode(rs.getString("zip_code"));

							 list_verification.add(obj_RegistrationClient);

							

						}
					
					
					} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo os clientes cadastrados. 
		return  list_verification;

	}
	
	
	
	//....................................................//
	
	//Esta seleção retorna a lista de um id do usuário do banco de dados. Os dados serão utilizados para acessar a sua conta
	//e autenticar todas as transações realizadas no site.
	
	String teste_list ="rodrigo.braga29@hotmail.com";// String para testar a lista
	
	public ArrayList<ClientRegistration> resultSelectRegistration_Dao(String email, String password){
		select_RegistrationClient_dao();
		ArrayList<ClientRegistration> list = new ArrayList<>();
		list = select_RegistrationClient_dao();
		ArrayList<ClientRegistration> listResult = new ArrayList<>();
		
		try {
			for (int i=0; i<list.size(); i++) {
				if(list.get(i).getEmailRegistration().equals(email)) {
					if(list.get(i).getPassword().equals(password)) {
					ClientRegistration clientResult = new ClientRegistration();
					
					clientResult.setIdClient(list.get(i).getIdClient());
					clientResult.setDateRegistration(list.get(i).getDateRegistration());    
					clientResult.setName(list.get(i).getName());
					clientResult.setBirthDate(list.get(i).getBirthDate());
					clientResult.setDocumentCpf(list.get(i).getDocumentCpf());
					clientResult.setEmailRegistration(list.get(i).getEmailRegistration());
					clientResult.setPassword(list.get(i).getPassword());
					clientResult.setPhone(list.get(i).getPhone());
					clientResult.setStreet(list.get(i).getStreet());
					clientResult.setComplement(list.get(i).getComplement());
					clientResult.setHomeNumber(list.get(i).getHomeNumber());
					clientResult.setNeighborhood(list.get(i).getNeighborhood());
					clientResult.setCity(list.get(i).getCity());
					clientResult.setState(list.get(i).getState());
					clientResult.setZipCode(list.get(i).getZipCode());
					
					listResult.add(clientResult);
					}}
				}
					
			
		} catch (Exception e) {
			
		}
		
		
		return listResult;	
				
				
			}
		
		
		
		
	}
	


