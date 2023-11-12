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

// resultado do select realizado no DB.
	static ArrayList<ProductRegistration> persistence_productVerification = new ArrayList<>();

// Armazenamento do resultado do select realizado no DB.
	static ArrayList<ProductRegistration> persistence_productVerification_stock = new ArrayList<>();

//Armazenamento de apenas um item registrado na tabela estoque- (item referente a um único produto)	
	static ArrayList<ProductRegistration> persistence_uniqueStockResultList = new ArrayList<>();

//***************************************************************************

// Métodos responsáveis por manipular a tabela product_registrration

// Método para inserir o produto
	public void productRegistration_Dao(ProductRegistration obj) {

		try {
			String sql = "INSERT INTO db_cupcake_admin.product_registration (registration_date, "
					+ "creation_date,product_name, basic_description, long_description) " + "VALUES (?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate()); // Insere a data automaticamente.
			stmt.setString(2, obj.getCreationDate());
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
				productRegistration_obj.setCreationDate(rs.getString("creation_date"));
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
			String sql = "UPDATE db_cupcake_admin.product_registration SET creation_date=?, product_name=?, "
					+ "basic_description=?, long_description=? WHERE (id_product_registration = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getCreationDate());
			stmt.setString(2, obj.getProductName());
			stmt.setString(3, obj.getBasicDescription());
			stmt.setString(4, obj.getLongDescription());
			stmt.setInt(5, obj.getIdProductRegistration());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// *************************************************************************

// Início dos métodos responsáveis por manipular a tabela product_stock

	public void stockProductregistration_Dao(ProductRegistration obj) {

		try {

			String sql = "INSERT INTO db_cupcake_admin.product_stock (product_registration_id_product_registration, "
					+ "production_date, entry_date, departure_date, quantity_entry, quantity_departury, product_price, "
					+ "product_discount) VALUES (?,?,?,?,?,?,?,?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, getResult_listProduct_Dao().get(0).getIdProductRegistration());
			stmt.setString(2, obj.getProductionDate());
			stmt.setString(3, obj.getEntryDate());
			stmt.setString(4, obj.getDepartureDate());
			stmt.setInt(5, obj.getQuantityEntry());
			stmt.setInt(6, obj.getQuantityDepartury());
			stmt.setDouble(7, obj.getProductPrice());
			stmt.setDouble(8, obj.getProductDiscount());

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

			String sql = "SELECT * FROM db_cupcake_admin.product_stock; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				ProductRegistration productRegistration_obj = new ProductRegistration();

				productRegistration_obj.setIdProductStock(rs.getInt("id_product_stock"));
				productRegistration_obj.setIdProductRegistration(rs.getInt("product_registration_id_product_registration"));
				productRegistration_obj.setProductionDate(rs.getString("production_date"));
				productRegistration_obj.setEntryDate(rs.getString("entry_date"));
				productRegistration_obj.setDepartureDate(rs.getString("departure_date"));
				productRegistration_obj.setQuantityEntry(rs.getInt("quantity_entry"));
				productRegistration_obj.setQuantityDepartury(rs.getInt("quantity_departury"));
				productRegistration_obj.setProductPrice(Double.valueOf(rs.getString("product_price")));
				productRegistration_obj.setProductDiscount(Double.valueOf(rs.getString("product_discount")));

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
			String sql ="DELETE FROM db_cupcake_admin.product_stock WHERE (id_product_stock = ?); ";
			

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdProductStock());
			
			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// Método para atualizar cadastro
	public void updateProductStock_Dao(ProductRegistration obj) {

		try {
						
			String sql =	"UPDATE db_cupcake_admin.product_stock SET production_date = ?, "
					+ "entry_date = ?, departure_date = ?, quantity_entry = ?, quantity_departury = ?, "
					+ "product_price = ?, product_discount = ? WHERE (id_product_stock = ?) and (product_registration_id_product_registration = ?);";
			
			

			PreparedStatement stmt = con.prepareStatement(sql);

			
			stmt.setString(1, obj.getProductionDate());
			stmt.setString(2, obj.getEntryDate());
			stmt.setString(3, obj.getDepartureDate());
			stmt.setInt(4, obj.getQuantityEntry());
			stmt.setInt(5, obj.getQuantityDepartury());
			stmt.setDouble(6, obj.getProductPrice());
			stmt.setDouble(7, obj.getProductDiscount());
			stmt.setInt(8, obj.getIdProductStock());
			stmt.setInt(9, obj.getIdProductRegistration());		
			
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
	
		for (int i = 0; i < select_productRegistration_dao().size(); i++) {

			if (select_productRegistration_dao().get(i).getIdProductRegistration() == (obj)) {

				persistence_productVerification.add(0, select_productRegistration_dao().get(i));

			}

		}

	}

	public ArrayList<ProductRegistration> getResult_listProduct_Dao() {
		return persistence_productVerification;
	}

	public void removeResult_listProduct_Dao() {
		for (int i = 0; i < persistence_productVerification.size(); i++) {
			persistence_productVerification.remove(i);
		}

	}

// *******************************************************************************
// Métodos responsáveis por manipular os dados do estoque

// Metodos para criar uma lista contendo todos os cadastros do estoque referentes a um produto.
	public void result_stockProductList_Dao(Integer obj) {
		
		for (int i = 0; i < select_productStock_dao().size(); i++) {

			if (select_productStock_dao().get(i).getIdProductRegistration() == (obj)) {

				persistence_productVerification_stock.add(select_productRegistration_dao().get(i));

			}

		}

		
	}


	public ArrayList<ProductRegistration> getResult_stockProductList_Dao() {
		return persistence_productVerification_stock;
	}
	
	public void removeResult_stockProductList_Dao() {
		for (int i = 0; i < persistence_productVerification_stock.size(); i++) {
			persistence_productVerification_stock.remove(i);
		}

	}

//**********************************************************************	

// Metodos para criar uma lista contendo um único cadastro do estoque referentes a um produto.

	

		
	
	public void uniqueStockResult_Dao(Integer obj) {
		
		for (int i = 0; i < select_productStock_dao().size(); i++) {

			if (select_productStock_dao().get(i).getIdProductStock() == (obj)) {

				persistence_uniqueStockResultList.add(select_productStock_dao().get(i));

			}

		}

	}

	
	public ArrayList<ProductRegistration> getUniqueStockResultList_Dao() {
		return persistence_uniqueStockResultList;
	}
	
	public void removeUniqueStockResultList_Dao() {
		for (int i = 0; i < persistence_uniqueStockResultList.size(); i++) {
			persistence_uniqueStockResultList.remove(i);
		}

	}

//************************************************************************	

}
