package com.eyuan.action;

import java.util.List;

import javax.annotation.Resource;

import com.eyuan.dao.SellerInfoDao;
import com.eyuan.domain.SellerInfo;
import com.opensymphony.xwork2.ActionContext;

public class SellerInfoAction {
	@Resource
	private SellerInfoDao sellerInfoDao;

	private List list;

	private SellerInfo sellerInfo;

	// 添加管理员
	public String addSellerInfo() {
		try {
			sellerInfoDao.addSellerInfo(sellerInfo);
			return "addsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到添加页面
	public String addUI() {
		return "addUI";
	}

	// 删除管理员
	public String deleteSellerInfo() {
		try {
			sellerInfoDao.deleteSellerInfoById(sellerInfo.getSeId());
			return "deletesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到更新页面
	public String updateUI() {
		ActionContext.getContext().getSession()
				.put("seid", sellerInfo.getSeId());
		SellerInfo se = sellerInfoDao.getSellerInfoById(sellerInfo.getSeId());
		ActionContext.getContext().getSession().put("se", se);
		return "updateUI";
	}

	// 更新管理员信息
	public String updateSellerInfo() {
		try {
			ActionContext.getContext().getSession().remove("se");
			Long seId = (Long) ActionContext.getContext().getSession()
					.get("seid");
			SellerInfo s = sellerInfoDao.getSellerInfoById(seId);
			s.setSeName(sellerInfo.getSeName());
			s.setSePassword(sellerInfo.getSePassword());
			sellerInfoDao.updateSellerInfo(s);
			ActionContext.getContext().getSession().remove("seid");
			return "updatesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 显示管理员列表
	public String sellerInfoList() {
		try {
			list = sellerInfoDao.getAllSellerInfo();
			return "listsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	public SellerInfo getSellerInfo() {
		return sellerInfo;
	}

	public void setSellerInfo(SellerInfo sellerInfo) {
		this.sellerInfo = sellerInfo;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
}
