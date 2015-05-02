package com.eyuan.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.eyuan.dao.SuperUserInfoDao;
import com.eyuan.domain.SuperUserInfo;
import com.opensymphony.xwork2.ActionContext;

public class SuperUserInfoAction {
	@Resource
	private SuperUserInfoDao superUserInfoDao;

	private List list;

	private SuperUserInfo superUserInfo;

	// 添加管理员
	public String addSuperUserInfo() {
		try {
			superUserInfoDao.addSuperUserInfo(superUserInfo);
			return "addsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到添加页面,判断管理员权限
	public String addUI() {
		return "addUI";
	}

	// 删除管理员
	public String deleteSuperUserInfo() {
		try {
			superUserInfoDao.deleteSuperUserInfoById(superUserInfo.getSuId());
			return "deletesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到更新页面
	public String updateUI() {
		ActionContext.getContext().getSession()
				.put("suid", superUserInfo.getSuId());
		SuperUserInfo su = superUserInfoDao.getSuperUserInfoById(superUserInfo
				.getSuId());
		ActionContext.getContext().getSession().put("su", su);
		return "updateUI";
	}

	// 更新管理员信息
	public String updateSuperUserInfo() {
		try {
			ActionContext.getContext().getSession().remove("su");
			Long suId = (Long) ActionContext.getContext().getSession()
					.get("suid");
			SuperUserInfo sup = superUserInfoDao.getSuperUserInfoById(suId);
			sup.setSuName(superUserInfo.getSuName());
			sup.setSuPassword(superUserInfo.getSuPassword());
			superUserInfoDao.updateSuperUserInfo(sup);
			ActionContext.getContext().getSession().remove("suid");
			return "updatesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 显示管理员列表
	public String superUserInfoList() {
		try {
			list = superUserInfoDao.getAllSuperUserInfo();
			return "listsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	public SuperUserInfo getSuperUserInfo() {
		return superUserInfo;
	}

	public void setSuperUserInfo(SuperUserInfo superUserInfo) {
		this.superUserInfo = superUserInfo;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
}
