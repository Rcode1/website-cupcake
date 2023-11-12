package br.com.dto.product;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
public  class ProductRegistration {

    private Integer idProduct;
    private String productName;
    private String productDescription;
    private  Integer quantity;
    private Double roductValue;
    private String manufacturingDate;
    private String imageAddress;

    public ProductRegistration() {
    }

   

    public ProductRegistration(String productName, String productDescription, Integer quantity, Double roductValue,
			String manufacturingDate, String imageAddress) {
		super();
		this.productName = productName;
		this.productDescription = productDescription;
		this.quantity = quantity;
		this.roductValue = roductValue;
		this.manufacturingDate = manufacturingDate;
		this.imageAddress = imageAddress;
	}



	public ProductRegistration(Integer idProduct, String productName, String productDescription, Integer quantity,
			Double roductValue, String manufacturingDate, String imageAddress) {
		super();
		this.idProduct = idProduct;
		this.productName = productName;
		this.productDescription = productDescription;
		this.quantity = quantity;
		this.roductValue = roductValue;
		this.manufacturingDate = manufacturingDate;
		this.imageAddress = imageAddress;
	}



	public Integer getIdProduct() {
		return idProduct;
	}



	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public String getProductDescription() {
		return productDescription;
	}



	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}



	public Integer getQuantity() {
		return quantity;
	}



	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}



	public Double getRoductValue() {
		return roductValue;
	}



	public void setRoductValue(Double roductValue) {
		this.roductValue = roductValue;
	}



	public String getManufacturingDate() {
		return manufacturingDate;
	}



	public void setManufacturingDate(String manufacturingDate) {
		this.manufacturingDate = manufacturingDate;
	}



	public String getImageAddress() {
		return imageAddress;
	}



	public void setImageAddress(String imageAddress) {
		this.imageAddress = imageAddress;
	}



	
}
