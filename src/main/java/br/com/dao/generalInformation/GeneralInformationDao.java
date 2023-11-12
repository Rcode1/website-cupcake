package br.com.dao.generalInformation;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import br.com.dto.generalInformation.GeneralInformation;
import br.com.jdbc.ConnectionFactory;

public class GeneralInformationDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;

	public GeneralInformationDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_admin();
	}
	
	// Armazenamento do resultado do select realizado no DB.
	 ArrayList<GeneralInformation> list_GeneralInformationtVerification = new ArrayList<>();

//***********************************************************************	
	// Métodos responsáveis por manipular a tabela general_information


	// Método responsável por selecionar os dados do DB
	public ArrayList<GeneralInformation> select_generalInformation_dao() {

		try {

			String sql = "SELECT * from `db_cupcake_admin`.`general_information`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				GeneralInformation generalInformation_obj = new GeneralInformation();

				generalInformation_obj.setIdInformation(rs.getInt("id_information"));
				generalInformation_obj.setWebsiteInformation(rs.getString("website_information"));
				generalInformation_obj.setPrivacyPolicy(rs.getString("privacy_policy"));
				generalInformation_obj.setContact(rs.getString("contact"));
				generalInformation_obj.setAboutUs(rs.getString("about_us"));
				generalInformation_obj.setSiteNavigation(rs.getString("site_navigation"));
				generalInformation_obj.setWebsiteImagePath(rs.getString("website_image_path"));

				list_GeneralInformationtVerification.add(generalInformation_obj);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos as informações cadastrados.
		return list_GeneralInformationtVerification;

	}



	// Método para atualizar cadastro
	public void updateGeneralInformation_Dao(GeneralInformation obj) {

		try {
			String sql = "UPDATE db_cupcake_admin.general_information SET website_information = ?, "
					+ "privacy_policy = ?, contact = ?, about_us = ?, site_navigation = ?, "
					+ "website_image_path = ? WHERE (id_information = 1);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getWebsiteInformation());
			stmt.setString(2, obj.getPrivacyPolicy());
			stmt.setString(3, obj.getContact());
			stmt.setString(4, obj.getAboutUs());
			stmt.setString(5, obj.getSiteNavigation());
			stmt.setString(6, null);

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// ********************************* Fim ********************//
	
	
	/*	// Método para exclusão de dados do DB.
	public void excludeGeneralInformation_Dao(GeneralInformation obj) {

		try {
			String sql = " DELETE FROM db_cupcake_admin.product_registration WHERE (id_product_registration = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdInformation());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}*/


	// Método para inserir o produto
/*	public void generalInformation_Dao(GeneralInformation obj) {

		try {
			String sql = "INSERT INTO `db_cupcake_admin`.`general_information` (`website_information`, "
					+ "'privacy_policy',`contact`, `about_us`, `site_navigation`, `website_image_path`) "
					+ "VALUES (?,?,?,?,?,?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getWebsiteInformation()); // Insere a data automaticamente.
			stmt.setString(2, obj.getPrivacyPolicy());
			stmt.setString(3, obj.getContact());
			stmt.setString(4, obj.getAboutUs());
			stmt.setString(5, obj.getSiteNavigation());
			stmt.setString(6, obj.getWebsiteImagePath());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}*/
	
	
}
