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
import br.com.jdbc.ConnectionFactory;

public class AdminRegistrationDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;
	ArrayList<AdministratorRegistration> list_adminVerification = new ArrayList<>();// Armazenamento do resultado do
																					// select
	// realizado no DB.
	static ArrayList<AdministratorRegistration> listResult = new ArrayList<>();// Lista referente ao resultado do select
	// realizado ao
	// acessar o site.
	InsertDate insertDate = new InsertDate();// Método que retorna uma data automática para ser armazenada no DB. A
												// classe está no pacote Methods.

	
	
	public AdminRegistrationDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_admin();
	}

	
//*********************************************************************************************	
	
	// Metodo para inserir o administrador no DB.
	public void adminRegistration_Dao(AdministratorRegistration obj) {

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

		try {

			String sql = "SELECT * from `db_cupcake_admin`.`administrator_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				AdministratorRegistration obj_administratorRegistration = new AdministratorRegistration();

				obj_administratorRegistration.setIdAdmin(rs.getInt(" id_admin"));
				obj_administratorRegistration.setAdiminDateRegistration(rs.getString("admin_date_registration"));
				obj_administratorRegistration.setNameAdmin(rs.getString("name_admin"));
				obj_administratorRegistration.setAccessLevel(rs.getString("access_level"));
				obj_administratorRegistration.setEmailAccess(rs.getString("email_access"));
				obj_administratorRegistration.setPhoneContact(rs.getString("phone_contact"));
				obj_administratorRegistration.setAdminPassword(rs.getString("admin_password"));

				list_adminVerification.add(obj_administratorRegistration);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos os administradores cadastrados.
		return list_adminVerification;

	}

		
	// Método para exclusão de dados do DB.
	public void excludeadminRegistration_Dao(AdministratorRegistration obj) {

		try {
			String sql = " DELETE FROM db_cupcake_admin.administrator_registration WHERE (id_admin = ?);";

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
			String sql = "UPDATE db_cupcake_admin.administrator_registration SET (name_admin = ?, access_level = ?, "
					+ "email_access = ?, phone_contact = ?, admin_password = ?) WHERE (id_admin = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getNameAdmin());
			stmt.setString(2, obj.getAccessLevel());
			stmt.setString(3, obj.getEmailAccess());
			stmt.setString(4, obj.getPhoneContact());
			stmt.setString(5, obj.getAdminPassword());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	
//********************************************************************************	
	
// Métodos responsáveis pela autenticação, disponibilidade dos dados
// para atender aos recursos e exclusão dos mesmos para o encerramento das
// atividades administrativas.


	// Dados utilizado nos recursos da conta do administrador. Após o acesso à
	// conta, os dados ficarão disponíveis através deste método.

	public static ArrayList<AdministratorRegistration> adminDataPersistence() {
		ArrayList<AdministratorRegistration> list = new ArrayList<>();
		try {
			list = listResult;
		} catch (Exception e) {

			e.printStackTrace();
		}

		return list;

	}

	// Método para remover os itens da lista
	public void close_resultSelectRegistration_Dao() {

		for (int i = 0; i < listResult.size(); i++) {
			// select_RegistrationClient_dao().remove(i);
			listResult.remove(i);
			adminDataPersistence().remove(i);
		}

	}

	
	// Este método retorna a lista de um id do usuário do banco de dados. Os dados
		// serão utilizados para acessar a própria conta
		// e autenticar todas as consultas ou modificações realizadas no site.
	public ArrayList<AdministratorRegistration> resultSelectRegistration_Dao(String email, String password) {
		select_AdministratorRegistration_dao();
		ArrayList<AdministratorRegistration> list = new ArrayList<>();
		list = select_AdministratorRegistration_dao();

		try {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getEmailAccess().equals(email)) {
					if (list.get(i).getAdminPassword().equals(password)) {
						AdministratorRegistration admintResult = new AdministratorRegistration();

						admintResult.setIdAdmin(list.get(i).getIdAdmin());
						admintResult.setAdiminDateRegistration(list.get(i).getAdiminDateRegistration());
						admintResult.setNameAdmin(list.get(i).getNameAdmin());
						admintResult.setAccessLevel(list.get(i).getAccessLevel());
						admintResult.setEmailAccess(list.get(i).getEmailAccess());
						admintResult.setPhoneContact(list.get(i).getPhoneContact());
						admintResult.setAdminPassword(list.get(i).getAdminPassword());

						listResult.add(admintResult);
						adminDataPersistence();

					}
				}
			}

			
		} catch (Exception e) {

		}
		//Carrega a lista no método "adminDataPersistence()" para ser propagada nos
		// demais recursos da área do administrador.
		return listResult;

	}

}
