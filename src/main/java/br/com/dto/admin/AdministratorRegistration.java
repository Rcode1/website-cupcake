package br.com.dto.admin;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import br.com.dto.enums.AdministratorType;


public class AdministratorRegistration {

    private Integer idAdmin; // Para realizar a Interação com a chave primaria DB (pesquisa).
    private String dateRegistrationAdmin;
    private String nameAdmin;
    private AdministratorType accessLevel;
    private String email;
    private String phone;
    private String password;
    
    //Construtores
    public AdministratorRegistration() {
    }

	public AdministratorRegistration(String dateRegistrationAdmin, String nameAdmin, AdministratorType accessLevel,
			String email, String phone, String password) {
		super();
		this.dateRegistrationAdmin = dateRegistrationAdmin;
		this.nameAdmin = nameAdmin;
		this.accessLevel = accessLevel;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public AdministratorRegistration(Integer idAdmin, String dateRegistrationAdmin, String nameAdmin,
			AdministratorType accessLevel, String email, String phone, String password) {
		super();
		this.idAdmin = idAdmin;
		this.dateRegistrationAdmin = dateRegistrationAdmin;
		this.nameAdmin = nameAdmin;
		this.accessLevel = accessLevel;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public Integer getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getDateRegistrationAdmin() {
		return dateRegistrationAdmin;
	}

	public void setDateRegistrationAdmin(String dateRegistrationAdmin) {
		this.dateRegistrationAdmin = dateRegistrationAdmin;
	}

	public String getNameAdmin() {
		return nameAdmin;
	}

	public void setNameAdmin(String nameAdmin) {
		this.nameAdmin = nameAdmin;
	}

	public AdministratorType getAccessLevel() {
		return accessLevel;
	}

	public void setAccessLevel(AdministratorType accessLevel) {
		this.accessLevel = accessLevel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

   
   
}
