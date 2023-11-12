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
	private String productName;
	private String basicDescription;
	private String longDescription;
	private String productImagePath;
	private String entryDate;
	private String departureDate;
	private Integer quantityEntry;
	private Integer quantityDeoartury;

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

	public String getProductImagePath() {
		return productImagePath;
	}

	public void setProductImagePath(String productImagePath) {
		this.productImagePath = productImagePath;
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

	public Integer getQuantityDeoartury() {
		return quantityDeoartury;
	}

	public void setQuantityDeoartury(Integer quantityDeoartury) {
		this.quantityDeoartury = quantityDeoartury;
	}

	

}
