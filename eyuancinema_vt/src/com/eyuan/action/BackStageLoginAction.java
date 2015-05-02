package com.eyuan.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.eyuan.dao.SellerInfoDao;
import com.eyuan.dao.SuperUserInfoDao;
import com.eyuan.domain.SuperUserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BackStageLoginAction extends ActionSupport {
	@Resource
	private SellerInfoDao sellerInfoDao;
	@Resource
	private SuperUserInfoDao superUserInfoDao;

	private SuperUserInfo superUserInfo;

	public SuperUserInfo getSuperUserInfo() {
		return superUserInfo;
	}

	public void setSuperUserInfo(SuperUserInfo superUserInfo) {
		this.superUserInfo = superUserInfo;
	}

	Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private String backLoginName;
	private String backLoginPassword;
	private String backLoginIdentity;
	private String backLoginCode;

	private String code = (String) ActionContext.getContext().getSession()
			.get("rand");

	public String logout(){
		ActionContext.getContext().getSession().remove("managerName");
		return "out";
	}
	
	public String sellerLogout(){
		ActionContext.getContext().getSession().remove("sellerName");
		return "out";
	}
	
	public String login() {
		System.out.println(code);
		System.out.println(backLoginCode);
		if (code.equalsIgnoreCase(backLoginCode)) {
			
			if (backLoginIdentity.equals("manager")) {
				if (superUserInfoDao.isSuperUserPass(backLoginName,
						backLoginPassword)) {
					try {
						ActionContext.getContext().getSession()
								.put("managerName", backLoginName);
						return "managerLogin";
					} catch (Exception e) {
						return "errorLogin";
					}
				} else {// 管理员账号或密码错误
					HttpServletRequest request = ServletActionContext
							.getRequest();
					request.setAttribute("mess",
							"<script language='javascript'>alert('账号或密码输入有误！请重新输入！')</script>");
					return "errorLogin";
				}
			} else {
				if (sellerInfoDao.isSellerInfoPass(backLoginName,
						backLoginPassword)) {
					ActionContext.getContext().getSession()
					.put("sellerName", backLoginName);
					return "sellerLogin";
				} else {// 售票员账号或密码错误
					HttpServletRequest request = ServletActionContext
							.getRequest();
					request.setAttribute("mess",
							"<script language='javascript'>alert('账号或密码输入有误！请重新输入！')</script>");
					return "errorLogin";
				}
			}
		} else {// 验证码错误
			if (backLoginCode.equals("")) {
				HttpServletRequest request = ServletActionContext.getRequest();
				request.setAttribute("mess",
						"<script language='javascript'>alert('请输入验证码！')</script>");
			} else {
				HttpServletRequest request = ServletActionContext.getRequest();
				request.setAttribute("mess",
						"<script language='javascript'>alert('验证码输入错误！')</script>");
			}
			return "errorLogin";
		}
	}

	public String getBackLoginName() {
		return backLoginName;
	}

	public void setBackLoginName(String backLoginName) {
		this.backLoginName = backLoginName;
	}

	public String getBackLoginPassword() {
		return backLoginPassword;
	}

	public void setBackLoginPassword(String backLoginPassword) {
		this.backLoginPassword = backLoginPassword;
	}

	public String getBackLoginIdentity() {
		return backLoginIdentity;
	}

	public void setBackLoginIdentity(String backLoginIdentity) {
		this.backLoginIdentity = backLoginIdentity;
	}

	public String getBackLoginCode() {
		return backLoginCode;
	}

	public void setBackLoginCode(String backLoginCode) {
		this.backLoginCode = backLoginCode;
	}

}
