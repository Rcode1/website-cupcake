package br.com.dao.product;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import br.com.dto.methods.InsertDate;
import br.com.dto.product.ProductRegistration;
import br.com.jdbc.ConnectionFactory;

public class ProductDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;

	public ProductDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_admin();
	}

	static ArrayList<ProductRegistration> persistence_productVerification = new ArrayList<>(); // resultado do select
	// realizado no DB.
	static ArrayList<ProductRegistration> list_productVerification_stock = new ArrayList<>();// Armazenamento do
																								// resultado do select
	// realizado no DB.

	// ****** Métodos responsáveis por manipular a tabela product_registrration
	// ***********************//

	// Método para inserir o produto
	public void productRegistration_Dao(ProductRegistration obj) {

		try {
			String sql = "INSERT INTO db_cupcake_admin.product_registration (registration_date, "
					+ "production_date,product_name, basic_description, long_description) " + "VALUES (?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate()); // Insere a data automaticamente.
			stmt.setString(2, obj.getProductionDate());
			stmt.setString(3, obj.getProductName());
			stmt.setString(4, obj.getBasicDescription());
			stmt.setString(5, obj.getLongDescription());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Método responsável por selecionar os dados do DB
	public ArrayList<ProductRegistration> select_productRegistration_dao() {
		ArrayList<ProductRegistration> listProduct = new ArrayList<>();

		try {

			String sql = "SELECT * from `db_cupcake_admin`.`product_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				ProductRegistration productRegistration_obj = new ProductRegistration();

				productRegistration_obj.setIdProductRegistration(rs.getInt("id_product_registration"));
				productRegistration_obj.setRegistrationDate(rs.getString("registration_date"));
				productRegistration_obj.setProductionDate(rs.getString("production_date"));
				productRegistration_obj.setProductName(rs.getString("product_name"));
				productRegistration_obj.setBasicDescription(rs.getString("basic_description"));
				productRegistration_obj.setLongDescription(rs.getString("long_description"));

				listProduct.add(productRegistration_obj);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos os produtos cadastrados.
		return listProduct;

	}

	// Método para exclusão de dados do DB.
	public void excludeProductRegistration_Dao(ProductRegistration obj) {

		try {
			String sql = " DELETE FROM db_cupcake_admin.product_registration WHERE (id_product_registration = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdProductRegistration());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Método para atualizar cadastro
	public void updateProductRegistration_Dao(ProductRegistration obj) {

		try {
			String sql = "UPDATE db_cupcake_admin.product_registration SET (production_date=?,product_name=?, "
					+ "basic_description=?, long_description=?, product_image_path=?)" + "VALUES (?,?,?,?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getProductionDate());
			stmt.setString(2, obj.getProductName());
			stmt.setString(3, obj.getBasicDescription());
			stmt.setString(4, obj.getLongDescription());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// *************************************************************************

	// Início dos métodos responsáveis por manipular a tabela product_stock

	public void Productregistration_Dao(ProductRegistration obj) {

		try {
			String sql = "INSERT INTO `db_cupcake_admin`.`product_stock` (`product_registration_id_product_registration`, "
					+ "'entry_date',`departure_date`, `quantity_entry`, `quantity_departury` VALUES (?,?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate()); // Insere a data automaticamente.
			// stmt.setString(2, obj.); inserir o id do produto
			stmt.setString(3, obj.getProductionDate());
			stmt.setString(4, obj.getProductName());
			stmt.setString(5, obj.getBasicDescription());
			stmt.setString(6, obj.getLongDescription());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Método responsável por selecionar os dados do DB
	public ArrayList<ProductRegistration> select_productStock_dao() {
		ArrayList<ProductRegistration> listStock = new ArrayList<>();
		try {

			String sql = "SELECT * from `db_cupcake_admin`.`produt_registration`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				ProductRegistration productRegistration_obj = new ProductRegistration();

				productRegistration_obj.setIdProductStock(rs.getInt("id_product_stock"));
				productRegistration_obj.setIdProductRegistration(rs.getInt("product_registration_id_product_registration"));
				productRegistration_obj.setEntryDate(rs.getString("entry_date"));
				productRegistration_obj.setDepartureDate(rs.getString("departure_date"));
				productRegistration_obj.setQuantityEntry(rs.getInt("quantity_entry"));
				productRegistration_obj.setQuantityDepartury(rs.getInt("quantity_departury"));

				listStock.add(productRegistration_obj);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos os produtos cadastrados.
		return listStock;

	}

	// Método para exclusão de dados do DB.
	public void excludeProductStok_Dao(ProductRegistration obj) {

		try {
			String sql = " DELETE FROM db_cupcake_admin.product_stok WHERE (id_product_stok = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdProductRegistration());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	// Método para atualizar cadastro
	public void updateProductStock_Dao(ProductRegistration obj) {

		try {
			String sql = "UPDATE db_cupcake_admin.product_stock SET (entry_date=?,departure_date=?, "
					+ "quantity_entry=?, quantity_departury=?)" + "VALUES (?,?,?,?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getEntryDate());
			stmt.setString(2, obj.getDepartureDate());
			stmt.setInt(3, obj.getQuantityEntry());
			stmt.setInt(4, obj.getQuantityDepartury());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}

	}

// *******************************************************************************	

//Métodos responsáveis por selecionar um item da lista e proparar no CRUD do produto.
//OBS.: Os métodos foram empregados em product/product_operation.jsp, dentro da pasta adim do webapp
	public void result_listProduct_Dao(Integer obj) {
		ArrayList<ProductRegistration> list = new ArrayList<>();
		for (int i = 0; i < select_productRegistration_dao().size(); i++) {

			if (select_productRegistration_dao().get(i).getIdProductRegistration() == (obj)) {

				list.add(0, select_productRegistration_dao().get(i));

			}

		}

		setResult_listProduct_Dao(list);

	}

	public void setResult_listProduct_Dao(ArrayList<ProductRegistration> id) {
		persistence_productVerification.addAll(id);
	}

	public ArrayList<ProductRegistration> getResult_listProduct_Dao() {
		return persistence_productVerification;
	}

	public void removeResult_listProduct_Dao() {
		for (int i = 0; i < persistence_productVerification.size(); i++) {
			persistence_productVerification.remove(i);
		}

	}

}
