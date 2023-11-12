package br.com.dao.adminRegistration;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import br.com.dto.admin.AdministratorRegistration;

import br.com.dto.methods.InsertDate;
import br.com.dto.product.ProductRegistration;
import br.com.jdbc.ConnectionFactory;

public class AdminRegistrationDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;

	// static ArrayList<AdministratorRegistration>
	// resultSelect_administratorRegistration_dao = new ArrayList<>();
	static ArrayList<AdministratorRegistration> persistence_administratorRegistration_dao = new ArrayList<>();
	// static ArrayList<AdministratorRegistration> listResult = new ArrayList<>();

	InsertDate insertDate = new InsertDate();// Método que retorna uma data automática para ser armazenada no DB. A
												// classe está no pacote Methods.

	public AdminRegistrationDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_admin();
	}

//*********************************************************************************************	

	// Metodo para inserir o administrador no DB.
	public void insertAdminRegistration_Dao(AdministratorRegistration obj) {

		try {
			String sql = "INSERT INTO `db_cupcake_admin`.`administrator_registration` (`admin_date_registration`, "
					+ "`name_admin`, `access_level`, `email_access`, `phone_contact`, `admin_password`) "
					+ "VALUES (?,?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate()); // Insere a data automaticamente.
			stmt.setString(2, obj.getNameAdmin());
			stmt.setString(3, obj.getAccessLevel());
			stmt.setString(4, obj.getEmailAccess());
			stmt.setString(5, obj.getPhoneContact());
			stmt.setString(6, obj.getAdminPassword());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Metodo para selecionar os administradores cadastrados no DB. Este método será
	// utilizado na área administrativa.
	public ArrayList<AdministratorRegistration> select_AdministratorRegistration_dao() {
		ArrayList<AdministratorRegistration> list_adminVerification = new ArrayList<>();
		try {

			String sql = "SELECT * from `db_cupcake_admin`.`administrator_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				AdministratorRegistration obj_administratorRegistration = new AdministratorRegistration();

				obj_administratorRegistration.setIdAdmin(rs.getInt("idAdmin"));
				obj_administratorRegistration.setAdiminDateRegistration(rs.getString("admin_date_registration"));
				obj_administratorRegistration.setNameAdmin(rs.getString("name_admin"));
				obj_administratorRegistration.setAccessLevel(rs.getString("access_level"));
				obj_administratorRegistration.setEmailAccess(rs.getString("email_access"));
				obj_administratorRegistration.setPhoneContact(rs.getString("phone_contact"));
				obj_administratorRegistration.setAdminPassword(rs.getString("admin_password"));

				list_adminVerification.add(obj_administratorRegistration);
				// resultSelect_administratorRegistration_dao.add(obj_administratorRegistration);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos os administradores cadastrados.
		return list_adminVerification;

	}

// Método para exclusão de dados do DB.
	public void excludeadminRegistration_Dao(AdministratorRegistration obj) {

		try {
			String sql = "DELETE FROM db_cupcake_admin.administrator_registration WHERE (idAdmin = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdAdmin());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Método para realizar o update dos dados cadastrais do administrador
	public void updateAdminRegistration_Dao(AdministratorRegistration obj) {

		try {

			String sql = "UPDATE db_cupcake_admin.administrator_registration SET"
					+ " admin_date_registration = ?, name_admin = ?, access_level = ?, email_access = ?, "
					+ "phone_contact = ?, admin_password = ? WHERE ( idAdmin = ?);";
			PreparedStatement stmt = con.prepareStatement(sql);
			// InsertDate insertDate = new InsertDate();
            
			stmt.setString(1, obj.getAdiminDateRegistration());
			stmt.setString(2, obj.getNameAdmin());
			stmt.setString(3, obj.getAccessLevel());
			stmt.setString(4, obj.getEmailAccess());
			stmt.setString(5, obj.getPhoneContact());
			stmt.setString(6, obj.getAdminPassword());
			stmt.setInt(7, obj.getIdAdmin());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

//********************************************************************************	
	public ArrayList<AdministratorRegistration> returnVerification_Administrator_dao = new ArrayList<>();

//Métodos para selecionar, retornar e remover apenas um único administrador	
	// ***Métodos para realizar a query de apenas um único administrador ****
	public void uniqueSelectResultAdmin_Dao(Integer obj) {

		for (int i = 0; i < select_AdministratorRegistration_dao().size(); i++) {

			if (select_AdministratorRegistration_dao().get(i).getIdAdmin().equals(obj)) {

				persistence_administratorRegistration_dao.add(select_AdministratorRegistration_dao().get(i));
				//returnVerification_Administrator_UPDATE_dao.add(select_AdministratorRegistration_dao().get(i));

			}

		}

	}

	public ArrayList<AdministratorRegistration> getUniqueSelectResultAdmin_Dao() {
		returnVerification_Administrator_dao.add(persistence_administratorRegistration_dao.get(0));

		return returnVerification_Administrator_dao;
	}

	public void removeUniqueSelectResultAdmin_Dao() {
		for (int i = 0; i < persistence_administratorRegistration_dao.size(); i++) {

			persistence_administratorRegistration_dao.remove(i);
		}

	}

//Metodos para a realização de update	
	

	static public ArrayList<AdministratorRegistration> returnVerification_Administrator_UPDATE_dao = new ArrayList<>();

	public ArrayList<AdministratorRegistration> getUniqueSelectResultAdmin_UPDATE_Dao() {
		ArrayList<AdministratorRegistration> returnVerification_Admin_UPDATE_dao = new ArrayList<>();
		returnVerification_Admin_UPDATE_dao.add(returnVerification_Administrator_UPDATE_dao.get(0));
		return returnVerification_Admin_UPDATE_dao;
	}

//********************************************************************************
// Verificação de login e senha do administrador
	static public ArrayList<AdministratorRegistration> AccessVerification_Administrator_dao = new ArrayList<>();

	public void access_Administrator_dao(String email, String password, String access_level) {
		select_AdministratorRegistration_dao();
		for (int i = 0; i < select_AdministratorRegistration_dao().size(); i++) {

			if (select_AdministratorRegistration_dao().get(i).getEmailAccess().equals(email))
				if (select_AdministratorRegistration_dao().get(i).getAdminPassword().equals(password))
					if (select_AdministratorRegistration_dao().get(i).getAccessLevel().equals(access_level)) {

						AccessVerification_Administrator_dao.add(0, select_AdministratorRegistration_dao().get(i));
						returnVerification_Administrator_UPDATE_dao.add(0, select_AdministratorRegistration_dao().get(i));

					}
		}
	}

	static public ArrayList<AdministratorRegistration> returnAccess_Administrator_dao() {
		return AccessVerification_Administrator_dao;
	}

	static public void deleteAccess_Administrator_dao() {
		for (int i = 0; i < AccessVerification_Administrator_dao.size(); i++) {
			AccessVerification_Administrator_dao.remove(i);
		}
	}

}
