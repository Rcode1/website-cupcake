package br.com.dto.client;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
public class ClientRegistration extends RegistrationAddress {

	private Integer idClient; // Para realizar a Interação com a chave primaria DB (pesquisa).
	private String dateRegistration;
	private String name;
	private String birthDate;
	private String documentCpf;
	private String emailRegistration;
	private String password;
	private String phone;
	
	

	public ClientRegistration() {
		super();
	}

	
	public ClientRegistration(Integer idAddress, String homeNumber, String complement, String street,
			String neighborhood, String city, String state, String zipCode, String dateRegistration, String name,
			String birthDate, String documentCpf, String emailRegistration, String password, String phone) {
		super(idAddress, homeNumber, complement, street, neighborhood, city, state, zipCode);
		this.dateRegistration = dateRegistration;
		this.name = name;
		this.birthDate = birthDate;
		this.documentCpf = documentCpf;
		this.emailRegistration = emailRegistration;
		this.password = password;
		this.phone = phone;
	}

	public Integer getIdClient() {
		return idClient;
	}

	public void setIdClient(Integer idClient) {
		this.idClient = idClient;
	}

	public String getDateRegistration() {
		return dateRegistration;
	}

	public void setDateRegistration(String dateRegistration) {
		this.dateRegistration = dateRegistration;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getDocumentCpf() {
		return documentCpf;
	}

	public void setDocumentCpf(String documentCpf) {
		this.documentCpf = documentCpf;
	}

	public String getEmailRegistration() {
		return emailRegistration;
	}

	public void setEmailRegistration(String emailRegistration) {
		this.emailRegistration = emailRegistration.toLowerCase();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


}
