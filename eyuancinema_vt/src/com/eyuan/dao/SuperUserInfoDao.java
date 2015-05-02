package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.SuperUserInfo;

public interface SuperUserInfoDao {

	// 添加管理员信息
	public void addSuperUserInfo(SuperUserInfo superUserInfo);

	// 更新管理员信息
	public void updateSuperUserInfo(SuperUserInfo superUserInfo);

	// 删除管理员信息
	public void deleteSuperUserInfo(SuperUserInfo superUserInfo);

	// 根据ID删除管理员
	public void deleteSuperUserInfoById(Long suId);

	// 根据Name删除管理员
	public void deleteSuperUserInfoByName(String suName);

	// 根据Id获取管理员信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SuperUserInfo getSuperUserInfoById(Long superUserInfoId);

	// 根据Name获取管理员信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SuperUserInfo getSuperUserInfoByName(String suName);

	// 获取全部管理员信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SuperUserInfo> getAllSuperUserInfo();

	// 判断该管理员是否存在
	public boolean isExistSuperUser(String suName);

	// 判断该管理员账号和密码是否匹配
	public boolean isSuperUserPass(String suName, String suPassword);

}