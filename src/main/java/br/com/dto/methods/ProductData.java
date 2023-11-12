package br.com.dto.methods;

import java.util.ArrayList;

import br.com.dao.product.ProductDao;
import br.com.dto.product.ProductImage;
import br.com.dto.product.ProductRegistration;

public class ProductData {

	static ArrayList<ProductImage> persistence_productImage_List = new ArrayList<>();
	static ArrayList<ProductRegistration> persistence_productRegistration_List = new ArrayList<>();
	static ArrayList<ProductRegistration> persistence_productStock_List = new ArrayList<>();

	// *******************sendo utilizado
	public ArrayList<ProductRegistration> productRegistration_List() throws ClassNotFoundException {
		ArrayList<ProductRegistration> productRegistrationList = new ArrayList<>();
		ProductDao productDao = new ProductDao();

		for (int i = 0; i < productDao.select_productRegistration_dao().size(); i++) {
			productRegistrationList.add(productDao.select_productRegistration_dao().get(i));

		}

		return productRegistrationList;
	}

	public ArrayList<ProductRegistration> productStock_List(Integer idProduct) throws ClassNotFoundException {
		ArrayList<ProductRegistration> productStockList_last = new ArrayList<>();
		ArrayList<ProductRegistration> productStockList = new ArrayList<>();

		ProductDao productDao = new ProductDao();
		Integer LastList;

		for (int i = 0; i < productDao.select_productStock_dao().size(); i++) {

			if (productDao.select_productStock_dao().get(i).getIdProductRegistration().equals(idProduct)) {
				productStockList.add(productDao.select_productStock_dao().get(i));

			}

		}

		if (!productStockList.isEmpty()) {

			LastList = productStockList.size();
			productStockList_last.add(productStockList.get(LastList - 1));
			return productStockList_last;

		} else {
			return null;
		}

	}

	public ArrayList<ProductRegistration> returnList() throws ClassNotFoundException {
		ProductDao productDao_stock = new ProductDao();
		ArrayList<ProductRegistration> list_productStock = new ArrayList<>();

		for (int i = 0; i < productDao_stock.select_productStock_dao().size(); i++) {

			if (productDao_stock.getResult_listProduct_Dao().get(0).getIdProductRegistration() == productDao_stock
					.select_productStock_dao().get(i).getIdProductRegistration()) {

				list_productStock.add(productDao_stock.select_productStock_dao().get(i));

			}
		}
		return list_productStock;
	}

	// ************ Utilização deste método de forma temporária **************

	public ArrayList<ProductImage> list_productImage(Integer idProduct, String imageCategory)
			throws ClassNotFoundException {

		// ProductData productData = new ProductData();
		ProductDao productDao = new ProductDao();
		ProductImage productImage_obj = new ProductImage();

		// Lista com as informações das imagens
		ArrayList<ProductImage> selectProductImage_dto = new ArrayList<>();
		selectProductImage_dto = productDao.select_productImage_dao();

		ArrayList<ProductImage> result_selectProductImage = new ArrayList<>();

		// Condição para introduzir uma imagem padrão, caso não tenha nenhuma
		// cadastrada.

		productImage_obj.setIdProduct(idProduct);
		productImage_obj.setImageCategory(imageCategory);

		for (int i = 0; i < selectProductImage_dto.size(); i++) {

			productImage_obj.setIdProduct(1000);
			productImage_obj.setIdProductImage(1000);
			productImage_obj.setImageCategory("standard");

			result_selectProductImage.add(productImage_obj);

		}

		return result_selectProductImage;
	}


//******************************************************************************

	// ************** Verificar este método - Falha na verificação da imagem OBS.: Método referente
	//a  "Utilização deste método de forma temporária" ************

	/*
	 * public ArrayList<ProductImage> list_productImage(Integer idProduct, String
	 * imageCategory) throws ClassNotFoundException {
	 * 
	 *  ProductData productData = new ProductData(); ProductDao productDao = new
	 * ProductDao(); ProductImage productImage_obj = new ProductImage();
	 * 
	 *  Lista com as informações das imagens ArrayList<ProductImage>
	 * selectProductImage_dto = new ArrayList<>(); selectProductImage_dto =
	 * productDao.select_productImage_dao();
	 * 
	 * ArrayList<ProductImage> result_selectProductImage = new ArrayList<>();
	 * 
	 *  Condição para introduzir uma imagem padrão, caso não tenha nenhuma //
	 * cadastrada. Boolean listNull = null;
	 * productImage_obj.setIdProduct(idProduct);
	 * productImage_obj.setImageCategory(imageCategory);
	 * 
	 * for (int i = 0; i < selectProductImage_dto.size(); i++) { listNull = true;
	 * 
	 * if (selectProductImage_dto.get(i).getIdProduct().equals(productImage_obj.
	 * getIdProduct()) &&
	 * selectProductImage_dto.get(i).getImageCategory().equals(productImage_obj.
	 * getImageCategory())) {
	 * result_selectProductImage.add(selectProductImage_dto.get(i)); listNull =
	 * false; }
	 * 
	 * Estes dados serão utilizados para o caminho das imagens padrão. if
	 * (listNull == true) { productImage_obj.setIdProduct(1000);
	 * productImage_obj.setIdProductImage(1000);
	 * productImage_obj.setImageCategory("standard");
	 * 
	 * result_selectProductImage.add(productImage_obj);
	 * 
	 * }
	 * 
	 * } return result_selectProductImage; }
	 */
	
	
	// ******** Recurso não utilizado  **********************
	
	//Verificação do conteudo registrado no DB - dados referente à imagem do produto
	/*public Boolean Verification_listProductimage_Dao(Integer obj_idProduct) throws ClassNotFoundException {
		ProductDao productDao = new ProductDao();
		ArrayList<ProductImage> selectImage_dao = new ArrayList<>();
		selectImage_dao = productDao.select_productImage_dao();
		Boolean verification = false;

		for (int i = 0; i < selectImage_dao.size(); i++) {

			if (selectImage_dao.get(i).getIdProduct().equals(obj_idProduct)) {

				verification = true;
		

			} 
	

		}
		return verification;

	}*/

}