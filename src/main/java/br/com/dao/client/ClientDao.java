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

	
	 
// Metodo para selecionar os cliente cadastrados no DB.
	public ArrayList<ClientRegistration> select_RegistrationClient_dao() {

		try {
			
			String sql = "SELECT * from `db_cupcake_client`.`client_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

	
					while (rs.next()) {
				

							ClientRegistration obj_RegistrationClient_dto = new ClientRegistration();
							
							obj_RegistrationClient_dto.setIdClient(rs.getInt("id_client"));
							obj_RegistrationClient_dto.setDateRegistration(rs.getString("date_registration"));    
							obj_RegistrationClient_dto.setName(rs.getString("name"));
							obj_RegistrationClient_dto.setBirthDate(rs.getString("birth_date"));
							obj_RegistrationClient_dto.setDocumentCpf(rs.getString("document_cpf"));
							obj_RegistrationClient_dto.setEmailRegistration(rs.getString("email"));
							obj_RegistrationClient_dto.setPassword(rs.getString("password"));
							obj_RegistrationClient_dto.setPhone(rs.getString("phone"));
							obj_RegistrationClient_dto.setStreet(rs.getString("street"));
							obj_RegistrationClient_dto.setComplement(rs.getString("complement"));
							obj_RegistrationClient_dto.setHomeNumber(rs.getString("home_number"));
							obj_RegistrationClient_dto.setNeighborhood(rs.getString("neighborhood"));
							obj_RegistrationClient_dto.setCity(rs.getString("city"));
							obj_RegistrationClient_dto.setState(rs.getString("state"));
							obj_RegistrationClient_dto.setZipCode(rs.getString("zip_code"));

							 list_verification.add(obj_RegistrationClient_dto);

							

						}
					} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo os clientes cadastrados. 
		return  list_verification;

	}
	
	ArrayList<ClientRegistration> list = new ArrayList<>();
	
	public ArrayList<ClientRegistration> preparedlist(){ 
		select_RegistrationClient_dao();
		try{
				
			list =  new  ClientDao().select_RegistrationClient_dao();

			String a = "rodrigo.braga29@hotmail.com";
			
			for(int i=0; i<list.size(); i++){
				if(list.get(i).getEmailRegistration().equals(a)){	// filtro para a seleção
				
				list.get(i).getIdClient();
				list.get(i).getDateRegistration();
		    	list.get(i).getName();
				list.get(i).getBirthDate();
			    list.get(i).getDocumentCpf();
				list.get(i).getEmailRegistration();
				list.get(i).getPassword();
				list.get(i).getPhone();
				list.get(i).getStreet();
				list.get(i).getComplement();
				list.get(i).getHomeNumber();
				list.get(i).getNeighborhood();
				list.get(i).getCity();
				list.get(i).getState();
				list.get(i).getZipCode();
				}
				 
						
			}
			


		}catch(Exception e){
			
		}
		return list;
	}
	
	
	

}
