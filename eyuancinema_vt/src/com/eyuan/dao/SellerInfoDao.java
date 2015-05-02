package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.SellerInfo;

public interface SellerInfoDao {

	// 增加售票员工
	public void addSellerInfo(SellerInfo sellerInfo);

	// 删除售票员工信息
	public void deleteSellerInfo(SellerInfo sellerInfo);

	// 根据ID删除售票员工
	public void deleteSellerInfoById(Long seId);

	// 根据Name删除售票员工
	public void deleteSellerByName(String seName);

	// 更新售票员工信息
	public void updateSellerInfo(SellerInfo sellerInfo);

	// 根据ID查询售票员工信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SellerInfo getSellerInfoById(Long seId);

	// 根据Name查询售票员工信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SellerInfo getSellerInfoByName(String seName);

	// 获取全部售票员工信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SellerInfo> getAllSellerInfo();

	// 根据Name判断该售货员是否存在
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isExistSellerInfo(String seName);

	// 判断该售货员账号和密码是否匹配
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isSellerInfoPass(String seName, String sePassword);

}