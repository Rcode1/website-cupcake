package br.com.dao.client;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import br.com.dto.client.ClientRegistration;

import br.com.dto.methods.InsertDate;
import br.com.jdbc.ConnectionFactory;

public class ClientDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;

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

	
}
