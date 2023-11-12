package br.com.dto.methods;

import java.util.ArrayList;

import br.com.dao.product.ProductDao;
import br.com.dto.product.ProductRegistration;

public class ReturnStock {

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
}