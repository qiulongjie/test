package com.eyuan.action;

import java.util.List;

import javax.annotation.Resource;

import com.eyuan.dao.UserInfoDao;
import com.eyuan.domain.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport {
	@Resource
	private UserInfoDao userInfoDao;

	private List list;
	private UserInfo userInfo;

	// 添加用户
	public String addUserInfo() {
		try {
			userInfoDao.addUserInfo(userInfo);
			return "addsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到添加页面
	public String addUI() {
		return "addUI";
	}

	// 删除用户
	public String deleteUserInfo() {
		try {
			userInfoDao.deleteUserInfoById(userInfo.getUserId());
			return "deletesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到更新页面
	public String updateUI() {
		System.out.println(userInfo.getUserId());
		ActionContext.getContext().getSession()
				.put("userid", userInfo.getUserId());
		UserInfo u = userInfoDao.getUserInfoById(userInfo.getUserId());
		ActionContext.getContext().getSession().put("u", u);
		return "updateUI";
	}

	// 更新用户信息
	public String updateUserInfo() {
		try {
			ActionContext.getContext().getSession().remove("u");
			Long uId = (Long) ActionContext.getContext().getSession()
					.get("userid");
			UserInfo user = userInfoDao.getUserInfoById(uId);
			user.setUserName(userInfo.getUserName());
			user.setUserPassword(userInfo.getUserPassword());
			user.setUserPhone(userInfo.getUserPhone());
			user.setUserEmail(userInfo.getUserEmail());
			user.setUserBirthday(userInfo.getUserBirthday());
			user.setUserSex(userInfo.getUserSex());
			userInfoDao.updateUserInfo(user);
			ActionContext.getContext().getSession().remove("userid");
			return "updatesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 显示用户列表
	public String userInfoList() {
		try {
			list = userInfoDao.getAllUserInfo();
			return "listsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
}
