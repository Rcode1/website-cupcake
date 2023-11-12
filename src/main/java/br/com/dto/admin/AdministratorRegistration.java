package br.com.dto.admin;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */



public class AdministratorRegistration {

    private Integer idAdmin; // Para realizar a Interação com a chave primaria DB (pesquisa).
    private String adiminDateRegistration;
    private String nameAdmin;
    private String accessLevel;
    private String emailAccess;
    private String phoneContact;
    private String adminPassword;
    
    //Construtores
    public AdministratorRegistration() {
    }

	public Integer getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getAdiminDateRegistration() {
		return adiminDateRegistration;
	}

	public void setAdiminDateRegistration(String adiminDateRegistration) {
		this.adiminDateRegistration = adiminDateRegistration;
	}

	public String getNameAdmin() {
		return nameAdmin;
	}

	public void setNameAdmin(String nameAdmin) {
		this.nameAdmin = nameAdmin;
	}

	public String getAccessLevel() {
		return accessLevel;
	}

	public void setAccessLevel(String accessLevel) {
		this.accessLevel = accessLevel;
	}

	public String getEmailAccess() {
		return emailAccess;
	}

	public void setEmailAccess(String emailAccess) {
		this.emailAccess = emailAccess;
	}

	public String getPhoneContact() {
		return phoneContact;
	}

	public void setPhoneContact(String phoneContact) {
		this.phoneContact = phoneContact;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	
   
}
