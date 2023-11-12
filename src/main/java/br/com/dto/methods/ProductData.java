package br.com.dto.methods;

import java.util.ArrayList;

import br.com.dao.product.ProductDao;
import br.com.dto.product.ProductImage;
import br.com.dto.product.ProductRegistration;

public class ProductData {

	static ArrayList<ProductImage> persistence_productImage_List = new ArrayList<>();
	static ArrayList<ProductRegistration> persistence_productRegistration_List = new ArrayList<>();
	static ArrayList<ProductRegistration> persistence_productStock_List = new ArrayList<>();

	

	//*******************sendo utilizado	
	public ArrayList<ProductRegistration> productRegistration_List() throws ClassNotFoundException {
		ArrayList<ProductRegistration> productRegistrationList = new ArrayList<>();
		ProductDao productDao = new ProductDao();

		for (int i = 0; i < productDao.select_productRegistration_dao().size(); i++) {
			productRegistrationList.add(productDao.select_productRegistration_dao().get(i));

		}

		return productRegistrationList;
	}

	

	public ArrayList<ProductRegistration> productStock_List1(Integer idProduct) throws ClassNotFoundException {
		
		ArrayList<ProductRegistration> productStockList = new ArrayList<>();
		ArrayList<ProductRegistration> productStockList_last = new ArrayList<>();
		
		ProductDao productDao = new ProductDao();
		Integer LastList;

		for (int i = 0; i < productDao.select_productStock_dao().size(); i++) {

			if (productDao.select_productStock_dao().get(i).getIdProductRegistration().equals(idProduct)) {
				productStockList.add(productDao.select_productStock_dao().get(i));
				
			}
			
		}
		LastList = productStockList.size();
		productStockList_last.add(productStockList.get(LastList - 1));

		if (productStockList_last.isEmpty()) {
			return null;
		} else {

		}
		return productStockList_last;
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
	
	
	
	
	
	
	
	
	
	//**********************
	
	public ArrayList<ProductImage> productImage_List() throws ClassNotFoundException {
		ArrayList<ProductImage> productImageList = new ArrayList<>();
		ProductDao productDao = new ProductDao();

		for (int i = 0; i < productDao.select_productImage_dao().size(); i++) {
			productImageList.add(productDao.select_productImage_dao().get(i));

		}

		return productImageList;
	}
	
	
	
	public ArrayList<ProductImage> return_of_mainImageList(Integer idProduct, Integer idImage) throws ClassNotFoundException {
		ProductDao productDao_image = new ProductDao();
		//ArrayList<ProductRegistration> productRegistration = new ArrayList<>();
		ArrayList<ProductImage> image_ListReturn = new ArrayList<>();
		ArrayList<ProductImage> selectImage_ListReturn = new ArrayList<>();
	
		 selectImage_ListReturn = productDao_image.select_productImage_dao();

		for (int i = 0; i < productDao_image.select_productImage_dao().size(); i++) {

		String a = "Principa";
			
		if ( selectImage_ListReturn.get(i).getIdProduct() == idProduct ) 
			if ( selectImage_ListReturn.get(i).getIdProductImage() ==idImage ) 
				if ( selectImage_ListReturn.get(i).getImageCategory().equals(a)) 
		
		{

				image_ListReturn.add(productDao_image.select_productImage_dao().get(i));
				
				return image_ListReturn;
				
		}
				
				
				else {
			ProductImage productImage_obj = new ProductImage();
			productImage_obj.setIdProduct(0);
			productImage_obj.setIdProductImage(1);
			
			
			image_ListReturn.add(productImage_obj);
			
			
		}
	
		
	}
		return image_ListReturn;

		
	
	}
	
}