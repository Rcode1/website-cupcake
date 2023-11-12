package br.com.dto.client;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
public class RegistrationAddress  {

	private Integer idAddress;// Para realizar a Interação com a chave primaria DB (pesquisa).
	private String homeNumber;
	private String complement;
	private String street;
	private String neighborhood;
	private String city;
	private String state;
	private String zipCode;
	

	public RegistrationAddress() {
		
	}


	
	public RegistrationAddress(Integer idAddress, String homeNumber, String complement, String street,
			String neighborhood, String city, String state, String zipCode) {
		
		this.idAddress = idAddress;
		this.homeNumber = homeNumber;
		this.complement = complement;
		this.street = street;
		this.neighborhood = neighborhood;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
	}


	public Integer getIdAddress() {
		return idAddress;
	}


	public void setIdAddress(Integer idAddress) {
		this.idAddress = idAddress;
	}


	public String getHomeNumber() {
		return homeNumber;
	}


	public void setHomeNumber(String homeNumber) {
		this.homeNumber = homeNumber;
	}


	public String getComplement() {
		return complement;
	}


	public void setComplement(String complement) {
		this.complement = complement;
	}


	public String getStreet() {
		return street;
	}


	public void setStreet(String street) {
		this.street = street;
	}


	public String getNeighborhood() {
		return neighborhood;
	}


	public void setNeighborhood(String neighborhood) {
		this.neighborhood = neighborhood;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZipCode() {
		return zipCode;
	}


	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	

}
