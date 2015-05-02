package com.eyuan.domain;

/**
 * SellerInfo entity. @author MyEclipse Persistence Tools
 */

public class SellerInfo implements java.io.Serializable {

	// Fields

	private Long seId;
	private String seName;
	private String sePassword;

	// Constructors

	/** default constructor */
	public SellerInfo() {
	}

	/** full constructor */
	public SellerInfo(String seName, String sePassword) {
		this.seName = seName;
		this.sePassword = sePassword;
	}

	@Override
	public String toString(){
		return "sellerName:"+this.seName+"\nsellerPassword:"+this.sePassword;
	}
	
	// Property accessors

	public Long getSeId() {
		return this.seId;
	}

	public void setSeId(Long seId) {
		this.seId = seId;
	}

	public String getSeName() {
		return this.seName;
	}

	public void setSeName(String seName) {
		this.seName = seName;
	}

	public String getSePassword() {
		return this.sePassword;
	}

	public void setSePassword(String sePassword) {
		this.sePassword = sePassword;
	}

}