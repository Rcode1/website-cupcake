package br.com.dto.path;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import br.com.dto.enums.ImageType;

public class ImageAddress {
	
	private Integer idImage; // Para realizar a Interação com a chave primaria DB (pesquisa).
    private ImageType imageType;
    private String imageAddress;
	
    
    public ImageAddress() {
		
	}


	public ImageAddress(ImageType imageType, String imageAddress) {
		super();
		this.imageType = imageType;
		this.imageAddress = imageAddress;
	}


	public ImageAddress(Integer idImage, ImageType imageType, String imageAddress) {
		super();
		this.idImage = idImage;
		this.imageType = imageType;
		this.imageAddress = imageAddress;
	}


	public Integer getIdImage() {
		return idImage;
	}


	public void setIdImage(Integer idImage) {
		this.idImage = idImage;
	}


	public ImageType getImageType() {
		return imageType;
	}


	public void setImageType(ImageType imageType) {
		this.imageType = imageType;
	}


	public String getImageAddress() {
		return imageAddress;
	}


	public void setImageAddress(String imageAddress) {
		this.imageAddress = imageAddress;
	}
	
    

}
