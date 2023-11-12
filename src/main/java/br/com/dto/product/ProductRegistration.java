package br.com.dto.product;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
public class ProductRegistration {

	private Integer idProductRegistration;
	private Integer idProductStock;
	private String registrationDate;
	private String productionDate;
	private String creationDate;
	private String productName;
	private String basicDescription;
	private String longDescription;
	private String entryDate;
	private String departureDate;
	private Integer quantityEntry;
	private Integer quantityDepartury;
	private Double productPrice;
	private Double productDiscount;

	
	
	public ProductRegistration(Integer idProductRegistration) {
		this.idProductRegistration = idProductRegistration;
	}
	
	public ProductRegistration() {
	}

	
	
	
	public Integer getIdProductRegistration() {
		return idProductRegistration;
	}

	public void setIdProductRegistration(Integer idProductRegistration) {
		this.idProductRegistration = idProductRegistration;
	}

	public Integer getIdProductStock() {
		return idProductStock;
	}

	public void setIdProductStock(Integer idProductStock) {
		this.idProductStock = idProductStock;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getProductionDate() {
		return productionDate;
	}

	public void setProductionDate(String productionDate) {
		this.productionDate = productionDate;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
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

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	public String getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public Integer getQuantityEntry() {
		return quantityEntry;
	}

	public void setQuantityEntry(Integer quantityEntry) {
		this.quantityEntry = quantityEntry;
	}

	public Integer getQuantityDepartury() {
		return quantityDepartury;
	}

	public void setQuantityDepartury(Integer quantityDepartury) {
		this.quantityDepartury = quantityDepartury;
	}

	public Double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}

	public Double getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(Double productDiscount) {
		this.productDiscount = productDiscount;
	}

	
	

}
