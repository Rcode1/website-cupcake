package br.com.dto.shopping;

public class ShoppingCart {

	private Integer idShoppingCart;
	private Integer idClient;
	private String purchaseDate;
	private String productName;
	private String basicDescription;
	private Integer quantity;
	private Double unitaryValue;
	private Double discount;
	private String methodPayment;
	private String purchaseStatus;
	private String numberOfTime;

	public ShoppingCart() {

	}

	public Integer getIdShoppingCart() {
		return idShoppingCart;
	}

	public void setIdShoppingCart(Integer idShoppingCart) {
		this.idShoppingCart = idShoppingCart;
	}

	public Integer getIdClient() {
		return idClient;
	}

	public void setIdClient(Integer idClient) {
		this.idClient = idClient;
	}

	public String getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBasicDescription() {
		return basicDescription;
	}

	public void setBasicDescription(String basicDescription) {
		this.basicDescription = basicDescription;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getUnitaryValue() {
		return unitaryValue;
	}

	public void setUnitaryValue(Double unitaryValue) {
		this.unitaryValue = unitaryValue;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public String getMethodPayment() {
		return methodPayment;
	}

	public void setMethodPayment(String methodPayment) {
		this.methodPayment = methodPayment;
	}

	public String getPurchaseStatus() {
		return purchaseStatus;
	}

	public void setPurchaseStatus(String purchaseStatus) {
		this.purchaseStatus = purchaseStatus;
	}

	public String getNumberOfTime() {
		return numberOfTime;
	}

	public void setNumberOfTime(String numberOfTime) {
		this.numberOfTime = numberOfTime;
	}

	
}
