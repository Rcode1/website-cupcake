package br.com.dao.product;

import java.io.File;
/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import br.com.dto.methods.ImageFolderAddress;
import br.com.dto.methods.InsertDate;
import br.com.dto.product.ProductImage;
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

//	 Armazenamento do resultado do select realizado no DB.
	static ArrayList<ProductImage> persistence_productImageVerification = new ArrayList<>();

//	 Armazenamento do resultado do select realizado no DB, referente a um ID do produto com suas imagens cadastradas.
	//static ArrayList<ProductImage> persistence_productImageCollection = new ArrayList<>();

//Armazenamento de apenas um item registrado na tabela estoque- (item referente a um único produto)	
	static ArrayList<ProductRegistration> persistence_uniqueStockResultList = new ArrayList<>();

//Método que retorna o endereço para operações com arquivos e pastas das imagens	
	ImageFolderAddress imageFolderAddress = new ImageFolderAddress();

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

// Método para exclusão de todos os dados referente a um produto 
	public void excludeProductRegistration_Dao(ProductRegistration obj) {
		try {
			// Deleta o produto
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
				productRegistration_obj
						.setIdProductRegistration(rs.getInt("product_registration_id_product_registration"));
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
	
		
	//******************************************

// Método para exclusão de dados do DB.
	public void excludeProductStok_Dao(ProductRegistration obj) {
		ArrayList<ProductRegistration> listSctock = new ArrayList<>();
		listSctock = select_productStock_dao();
		try {
			String sql = "DELETE FROM db_cupcake_admin.product_stock WHERE (id_product_stock = ?); ";

			PreparedStatement stmt = con.prepareStatement(sql);

			if (obj.getIdProductStock() != null) {

				stmt.setInt(1, obj.getIdProductStock());

				stmt.execute();

			} else if (obj.getIdProductStock() == null && obj.getIdProductRegistration() != null) {
				for (int i = 0; i < listSctock.size(); i++) {

					if (listSctock.get(i).getIdProductRegistration().equals(obj.getIdProductRegistration())) {

						stmt.setInt(1, listSctock.get(i).getIdProductStock());

						stmt.execute();

					}

				}
			}
			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// Método para atualizar cadastro
	public void updateProductStock_Dao(ProductRegistration obj) {

		try {

			String sql = "UPDATE db_cupcake_admin.product_stock SET production_date = ?, "
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

// Método responsável por inserir os dados das imagens.
	public void insert_productImage_Dao(ProductImage obj) {

		try {

			String sql = "INSERT INTO db_cupcake_admin.product_image (product_registration_id_product_registration, image_category) VALUES (?, ?);";
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdProduct());
			stmt.setString(2, obj.getImageCategory());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// Método responsável por selecionar os dados do DB
	public ArrayList<ProductImage> select_productImage_dao() {
		ArrayList<ProductImage> listImage = new ArrayList<>();

		try {

			String sql = "SELECT * FROM db_cupcake_admin.product_image; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				ProductImage productImage_obj = new ProductImage();

				productImage_obj.setIdProductImage(rs.getInt("id_productImage"));
				productImage_obj.setIdProduct(rs.getInt("product_registration_id_product_registration"));
				productImage_obj.setImageCategory(rs.getString("image_category"));

				listImage.add(productImage_obj);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todas as informações das imagens cadastradas.
		return listImage;

	}

// Método para deletar os dados do DB (parcialmente ou o cadastro do item selecionado + as imagens salvas).

	public void delete_ProductImageData_Dao(ProductImage obj) {
		ArrayList<ProductImage> listImage = new ArrayList<>();
		listImage = select_productImage_dao();
		try {
			String sql = " DELETE FROM db_cupcake_admin.product_image WHERE (id_productImage = ?) and (product_registration_id_product_registration = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			if (obj.getIdProductImage() != null && obj.getIdProduct() != null) {

				stmt.setInt(1, obj.getIdProductImage());
				stmt.setInt(2, obj.getIdProduct());

				stmt.execute();

				stmt.close();

				// Item para deletar os arquivos
				File file = new java.io.File(imageFolderAddress.imageFolderAddress()
						+ String.valueOf(obj.getIdProduct()) + "//" + String.valueOf(obj.getIdProductImage()) + ".jpg");
				if (file.exists()) {
					file.delete();

				}

			}
// Deleta os dados e a pasta que contem às imagem.
			else if (obj.getIdProductImage() == null && obj.getIdProduct() != null) {

				for (int i = 0; i < listImage.size(); i++) {

					if (listImage.get(i).getIdProduct().equals(obj.getIdProduct())) {

						stmt.setInt(1, listImage.get(i).getIdProductImage());
						stmt.setInt(2, obj.getIdProduct());

						stmt.execute();

						stmt.close();

						// Item para deletar a pasta
						File file = new File(
								imageFolderAddress.imageFolderAddress() + String.valueOf(obj.getIdProduct()));

						if (file.exists()) {
							file.delete();

						}

					}
				}

			}

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// Método para atualizar cadastro
	public void updateProductImage_Dao(ProductImage obj) {

		try {
			String sql = "UPDATE db_cupcake_admin.product_Image SET image_category=? WHERE (id_productImage = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, obj.getImageCategory());
			stmt.setInt(2, obj.getIdProductImage());
			

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// ****************************** Image parte 1 *************************************************
// Métodos responsáveis por selecionar um item da lista de imagens e proparar no CRUD do produto.
// OBS.: Os métodos foram empregados em product/product_operation.jsp, dentro da pasta admin do webapp
	public void result_listProductimage_Dao(Integer obj_idProductImage) {

		for (int i = 0; i < select_productImage_dao().size(); i++) {

			if (select_productImage_dao().get(i).getIdProductImage() == (obj_idProductImage)) {

				persistence_productImageVerification.add(0, select_productImage_dao().get(i));

			}

		}

	}

	public ArrayList<ProductImage> getResult_productImageList_Dao() {
		return persistence_productImageVerification;
	}

	public void removeResult_productImageList_Dao() {
		for (int i = 0; i < persistence_productImageVerification.size(); i++) {
			persistence_productImageVerification.remove(i);
		}

	}
	// ****************************** Image parte 2
	// *************************************************
// Métodos responsáveis por selecionar varios itens de um produto.	

/*	public void result_listProductimageCollection_Dao(Integer obj_idProduct) {

		for (int i = 0; i < select_productImage_dao().size(); i++) {

			if (select_productImage_dao().get(i).getIdProductImage() == (obj_idProduct)) {

				persistence_productImageCollection.add(select_productImage_dao().get(i));

			}

		}

	}

	public ArrayList<ProductImage> getResult_productImageCollection_Dao() {
		return persistence_productImageVerification;
	}

//Verificação da categoria da imagem	
	public Boolean imageCategoryCheck() {
		Boolean y = false;
		for (int i = 0; i < getResult_productImageList_Dao().size(); i++) {
			if (getResult_productImageCollection_Dao().get(i).getImageCategory() == "Principal") {
				y = true;
			}
		}
		return y;
	}

//Método para deletar os dados da lista
	public void removeResult_productImageCollection_Dao() {
		for (int i = 0; i < persistence_productImageCollection.size(); i++) {
			persistence_productImageCollection.remove(i);
		}

	}*/
//******************************* Produto *************************************************
//Métodos responsáveis por selecionar um item da lista e proparar no CRUD do produto.
//OBS.: Os métodos foram empregados em product/product_operation.jsp, dentro da pasta admin do webapp
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

// ***************************** Stock **************************************************
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

//*************************** Unique Stock *******************************************	

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
