package model;

import java.io.Serializable;
import java.text.NumberFormat;

public class Product implements Serializable{
	private String pId;
	private String pName;
	private int priceNew;
	private int priceOld;
	private String pDescription;
	private String cateId;
	private String photo;
	
	public Product() {
		
	}
	public Product(String pId, String pName, int priceNew, int priceOld, String pDescription, String cateId,
			String photo) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.priceNew = priceNew;
		this.priceOld = priceOld;
		this.pDescription = pDescription;
		this.cateId = cateId;
		this.photo = photo;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getPriceNew() {
		return priceNew;
	}
	public void setPriceNew(int priceNew) {
		this.priceNew = priceNew;
	}
	public int getPriceOld() {
		return priceOld;
	}
	public void setPriceOld(int priceOld) {
		this.priceOld = priceOld;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public String getCateId() {
		return cateId;
	}
	public void setCateId(String cateId) {
		this.cateId = cateId;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", priceNew=" + priceNew + ", priceOld=" + priceOld
				+ ", pDescription=" + pDescription + ", cateId=" + cateId + ", photo=" + photo + "]";
	}


	
}
