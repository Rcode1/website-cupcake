package br.com.dto.methods;

import java.util.ArrayList;

import br.com.dao.product.ProductDao;
import br.com.dto.product.ProductImage;
import br.com.dto.product.ProductRegistration;

public class ProductData_Lixo {

	static ArrayList<ProductImage> productImageList = new ArrayList<>();
	static ArrayList<ProductRegistration> unifiedList = new ArrayList<>();

// Retorna uma lista dos 8 ultimos produtos cadastrados no DB. "Este método será utilizado apenas no carregamento da pagina principal"
	public ArrayList<ProductRegistration> lastPlaced() throws ClassNotFoundException {
		ArrayList<ProductRegistration> productList = new ArrayList<>();

		if (unifiedList.isEmpty()) {
			fullList();
		}
		for (int i = 0; i < returnProducfull().size(); i++) {

			if (returnProducfull().size() <= 7) {

				productList.add(returnProducfull().get(i));
			}

		}

		if (returnProducfull().size() >= 7) {

			for (int i = returnProducfull().size() - 8;

					i < returnProducfull().size(); i++) {

				productList.add(returnProducfull().get(i));

			}
		}
		return productList;

	}

//***********************************************************************************************************

//Retorna uma lista contendo a união dos dados do produto + o ultimo item registrado no estoque referente a este.
//OBS.: Utilizado em todo o site.	
	public ArrayList<ProductRegistration> returnProducfull() {
		return unifiedList;
	}

//Deleta todo o conteudo da lista
	public void deleteProducfull() {
		try {
			ProductDao productDao = new ProductDao();

			for (int i = 0; i < productDao.select_productRegistration_dao().size(); i++) {
				unifiedList.remove(i);

			}

		} catch (ClassNotFoundException error) {
			error.getStackTrace();

		}
	}
//***********************************************************************************************************	

//Método que retorna uma lista contendo as informações das imagens do produto	
	public ArrayList<ProductImage> getProductImage(ArrayList<ProductImage> getIdProduct) {

		try {
			ProductDao productDao = new ProductDao();

			for (int i = 0; i < productDao.select_productImage_dao().size(); i++) {

				if (productDao.select_productImage_dao().get(i).getIdProduct().equals(getIdProduct)) {

					productImageList.add(productDao.select_productImage_dao().get(i));

				}

			}

		} catch (ClassNotFoundException error) {
			error.getStackTrace();

		}
		return productImageList;

	}

//********************************** Funções ****************************************************	
	// Função para carregar uma lista completa de produtos com o ultimo item do
	// estoque.

	public final void fullList() {
		ProductRegistration productRegistration_obj = new ProductRegistration();
		ArrayList<ProductRegistration> productList = new ArrayList<>();
		
		

		try {
			ProductDao productDao = new ProductDao();
			productList.add( productDao.select_productRegistration_dao().get(0)) ;
			for (int i = 0; i < productList.size(); i++) {
			/*	productRegistration_obj.setIdProductRegistration(productList.get(i).getIdProductRegistration());
				productRegistration_obj.setRegistrationDate(productList.get(i).getRegistrationDate());
				productRegistration_obj.setProductionDate(productList.get(i).getProductionDate());
				productRegistration_obj.setCreationDate(productList.get(i).getCreationDate());
				productRegistration_obj.setProductName(productList.get(i).getProductName());
				productRegistration_obj.setBasicDescription(productList.get(i).getBasicDescription());
				productRegistration_obj.setLongDescription(productList.get(i).getLongDescription());*/
				
				productRegistration_obj.setIdProductRegistration(productDao.select_productRegistration_dao().get(i).getIdProductRegistration());
				productRegistration_obj.setRegistrationDate(productDao.select_productRegistration_dao().get(i).getRegistrationDate());
				productRegistration_obj.setProductionDate(productDao.select_productRegistration_dao().get(i).getProductionDate());
				productRegistration_obj.setCreationDate(productDao.select_productRegistration_dao().get(i).getCreationDate());
				productRegistration_obj.setProductName(productDao.select_productRegistration_dao().get(i).getProductName());
				productRegistration_obj.setBasicDescription(productDao.select_productRegistration_dao().get(i).getBasicDescription());
				productRegistration_obj.setLongDescription(productDao.select_productRegistration_dao().get(i).getLongDescription());



				
				
				// Coleta de informações do estoque através da função "getProductStock(Integer
				// getIdProduct)"
				
				productRegistration_obj.setIdProductStock(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getIdProductStock());
				
				
				
				
				productRegistration_obj.setDepartureDate(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getDepartureDate());
				productRegistration_obj.setQuantityEntry(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getQuantityEntry());
				productRegistration_obj.setQuantityDepartury(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getQuantityDepartury());
				productRegistration_obj.setProductPrice(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getProductPrice());
				productRegistration_obj.setProductDiscount(
						returnProductStock(productList.get(i).getIdProductRegistration()).get(0).getProductDiscount());

				unifiedList.add(productRegistration_obj);
				

			}

		} catch (ClassNotFoundException error) {
			error.getStackTrace();

		}
	}

	// Função que Retorna uma lista do estoque contendo apenas o ultimo registro
	// (executada no método fullFist() )
	public final ArrayList<ProductRegistration> returnProductStock(Integer getIdProduct) {
		ArrayList<ProductRegistration> productStockList = new ArrayList<>();
		ArrayList<ProductRegistration> productStockListFinal = new ArrayList<>();

		try {
			ProductDao productDao = new ProductDao();

			for (int i = 0; i < productDao.select_productStock_dao().size(); i++) {

				if (productDao.select_productStock_dao().get(i).getIdProductRegistration().equals(getIdProduct)) {

					productStockList.add(productDao.select_productStock_dao().get(i));

				}

			}
			productStockListFinal.add(productStockList.get(productStockList.size()));

		} catch (ClassNotFoundException error) {
			error.getStackTrace();

		}
		return productStockListFinal;

	}

}
