package com.eyuan.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * UserInfo entity. @author MyEclipse Persistence Tools
 */

public class UserInfo implements java.io.Serializable {

	// Fields

	private Long userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userPhone;
	private String userSex;
	private String userBirthday;
	private Set<UserTicketInfo> userTicketInfos = new HashSet<UserTicketInfo>();

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** minimal constructor */
	public UserInfo(String userName, String userPassword, String userEmail,
			String userPhone) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
	}

	/** full constructor */
	public UserInfo(String userName, String userPassword, String userEmail,
			String userPhone, String userSex, String userBirthday) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userSex = userSex;
		this.userBirthday = userBirthday;
	}

	// Property accessors

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserSex() {
		return this.userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserBirthday() {
		return this.userBirthday;
	}

	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}

	public Set<UserTicketInfo> getUserTicketInfos() {
		return userTicketInfos;
	}

	public void setUserTicketInfos(Set<UserTicketInfo> userTicketInfos) {
		this.userTicketInfos = userTicketInfos;
	}
}