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



import br.com.dto.methods.InsertDate;
import br.com.dto.shopping.ShoppingCart;
import br.com.jdbc.ConnectionFactory;

public class ShoppingDao {

	private Connection con;
	ResultSet rs;
	PreparedStatement stmt;
	ArrayList<ShoppingCart> list_verification = new ArrayList<>();// Armazenamento do resultado do select
																	// realizado no DB.
	static ArrayList<ShoppingCart> listResult = new ArrayList<>();// Lista referente ao resultado do select
																	// realizado ao
	// acessar o site.
	InsertDate insertDate = new InsertDate();// Método que retorna uma data automática para ser armazenada no DB. A
												// classe está no pacote Methods.

	public ShoppingDao() throws ClassNotFoundException {
		this.con = new ConnectionFactory().getConnection_client();
	}

//*********************************************************************************

	// Metodo para inserir os dados no carrinho de compras, no DB.
	public void shoppingCart_Dao(ShoppingCart obj) {

		try {
			String sql = "INSERT INTO `db_cupcake_admin`.`shopping_cart` (`client_registration_id_client`, "
					+ "`purchase_date`, `modification_date`, `product_name`, `basic_description`,  `quantity`, `unitary_value`, `discount`, "
					+ "`method_payment`, `purchase_status`, `numberOf_time`) " + "VALUES (?,?,?,?,?,?,?,?,?,?,?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdClient());// Precisa da entrada do id do cliente
			stmt.setString(2, insertDate.getDate()); // Insere a data automaticamente.
			stmt.setString(3, obj.getProductName());
			stmt.setString(4, obj.getBasicDescription());
			stmt.setInt(5, obj.getQuantity());
			stmt.setDouble(6, obj.getUnitaryValue());
			stmt.setDouble(7, obj.getDiscount());
			stmt.setString(8, obj.getMethodPayment());
			stmt.setString(9, obj.getPurchaseStatus());
			stmt.setString(10, obj.getNumberOfTime());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// Metodo para selecionar os cliente cadastrados no DB. Este método será
// utilizado na área administrativa para consultas e manutenção.
	public ArrayList<ShoppingCart> select_ShoppingCart_dao() {

		try {

			String sql = "SELECT * from `db_cupcake_client`.`shopping_cart`; ";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				ShoppingCart obj_shoppingCart = new ShoppingCart();

				obj_shoppingCart.setIdShoppingCart(rs.getInt("id_shopping_cart"));
				obj_shoppingCart.setIdClient(rs.getInt("client_registration_id_client"));
				obj_shoppingCart.setPurchaseDate(rs.getString("purchase_date"));// introduzir a data automatica
				obj_shoppingCart.setProductName(rs.getString("product_name"));
				obj_shoppingCart.setBasicDescription(rs.getString("basic_description"));
				obj_shoppingCart.setQuantity(rs.getInt("quantity"));
				obj_shoppingCart.setUnitaryValue(rs.getDouble("unitary_value"));
				obj_shoppingCart.setDiscount(rs.getDouble("discount"));
				obj_shoppingCart.setMethodPayment(rs.getString("method_payment"));
				obj_shoppingCart.setPurchaseStatus(rs.getString("purchase_status"));
				obj_shoppingCart.setNumberOfTime(rs.getString("numberOf_time"));

				list_verification.add(obj_shoppingCart);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} // Retorna uma lista contendo todos os clientes cadastrados.
		return list_verification;

	}

	// Método para exclusão de dados do DB.
	public void excludeShoppingCart_Dao(ShoppingCart obj) {

		try {
			String sql = " DELETE FROM db_cupcake_client.shopping_cart WHERE (id_shopping_cart = ?);";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, obj.getIdShoppingCart());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

	
//Método que realiza a atualização dos dados contidos no DB.
	public void updateShoppingCart_Dao(ShoppingCart obj) {

		try {
			String sql = "UPDATE db_cupcake_client.shopping_cart SET (purchase_date = ?, product_name = ?, "
					+ "basic_description = ?, quantity = ?, unitary_value = ?, discount = ?, method_payment = ?, "
					+ "purchase_status = ?,	numberOf_time = ?) WHERE (id_shopping_cart = ?);";

			InsertDate insertDate = new InsertDate();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, insertDate.getDate());
			stmt.setString(2, obj.getProductName());
			stmt.setString(3, obj.getBasicDescription());
			stmt.setInt(4, obj.getQuantity());
			stmt.setDouble(5, obj.getUnitaryValue());
			stmt.setDouble(6, obj.getDiscount());
			stmt.setString(7, obj.getMethodPayment());
			stmt.setString(8, obj.getPurchaseStatus());
			stmt.setString(9, obj.getNumberOfTime());

			stmt.execute();

			stmt.close();

		} catch (Exception error) {

			error.printStackTrace();

		}
	}

// ****************************************************************************

	// Métodos responsáveis pela autenticação, disponibilidade dos dados
	// para atender aos recursos e exclusão dos mesmos para o encerramento das
	// atividades de compras.

	// Método para remover os itens da lista
	public void close_resultShoppingCart_Dao() {

		for (int i = 0; i < listResult.size(); i++) {
			// select_RegistrationClient_dao().remove(i);
			listResult.remove(i);
			shoppingCartDataPersistence().remove(i);
		}

	}

// Dados utilizado nos recursos de compras. Após acessar a conta de usuário e
//selecionar algum item para compra, os dados desta seleção ficarão disponíveis através deste método.

	public static ArrayList<ShoppingCart> shoppingCartDataPersistence() {
		ArrayList<ShoppingCart> list = new ArrayList<>();
		try {
			list = listResult;
		} catch (Exception e) {

			e.printStackTrace();
		}

		return list;

	}

// Método que retorna uma lista com os valores verificados de idShoppingCart e idClient
	public ArrayList<ShoppingCart> resultSelectShoppingCart_Dao(String idShoppingCart, String idClient) {
		select_ShoppingCart_dao();
		ArrayList<ShoppingCart> list = new ArrayList<>();
		list = select_ShoppingCart_dao();

		try {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getIdShoppingCart().equals(idShoppingCart)) {
					if (list.get(i).getIdClient().equals(idClient)) {
						ShoppingCart shoppingCartResult = new ShoppingCart();

						shoppingCartResult.setIdShoppingCart(list.get(i).getIdShoppingCart());
						shoppingCartResult.setIdClient(list.get(i).getIdClient());
						shoppingCartResult.setPurchaseDate(list.get(i).getPurchaseDate());
						shoppingCartResult.setProductName(list.get(i).getProductName());
						shoppingCartResult.setBasicDescription(list.get(i).getBasicDescription());
						shoppingCartResult.setQuantity(list.get(i).getQuantity());
						shoppingCartResult.setUnitaryValue(list.get(i).getUnitaryValue());
						shoppingCartResult.setDiscount(list.get(i).getDiscount());
						shoppingCartResult.setMethodPayment(list.get(i).getMethodPayment());
						shoppingCartResult.setPurchaseStatus(list.get(i).getPurchaseStatus());
						shoppingCartResult.setNumberOfTime(list.get(i).getNumberOfTime());

						listResult.add(shoppingCartResult);
						shoppingCartDataPersistence();

					}
				}
			}

			// Carrega a lista no método "ClientDataPersistence()" para ser propagada nos
			// demais recursos do site.
		} catch (Exception e) {

		}

		return listResult;

	}

}
