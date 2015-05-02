package com.eyuan.domain;

/**
 * SuperUserInfo entity. @author MyEclipse Persistence Tools
 */

public class SuperUserInfo implements java.io.Serializable {

	// Fields

	private Long suId;
	private String suName;
	private String suPassword;

	// Constructors

	/** default constructor */
	public SuperUserInfo() {
	}

	/** full constructor */
	public SuperUserInfo(String suName, String suPassword) {
		this.suName = suName;
		this.suPassword = suPassword;
	}

	// Property accessors

	@Override
	public String toString() {
		return "suName:" + this.suName + "\nsuPassword:" + this.suPassword;
	}

	public Long getSuId() {
		return this.suId;
	}

	public void setSuId(Long suId) {
		this.suId = suId;
	}

	public String getSuName() {
		return this.suName;
	}

	public void setSuName(String suName) {
		this.suName = suName;
	}

	public String getSuPassword() {
		return this.suPassword;
	}

	public void setSuPassword(String suPassword) {
		this.suPassword = suPassword;
	}

}