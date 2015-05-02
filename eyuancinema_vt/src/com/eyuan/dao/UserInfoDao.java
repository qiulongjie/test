package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.UserInfo;

public interface UserInfoDao {

	// 向user_info表插入记录
	public void addUserInfo(UserInfo userInfo);

	// 删除用户
	public void deleteUserInfo(UserInfo userInfo);

	// 根据ID删除用户信息
	public void deleteUserInfoById(Long userId);

	// 通过userName从user_info表中删除记录
	public void deleteUserInfoByName(String userName);

	// 更新用户信息
	public void updateUserInfo(UserInfo userInfo);

	// 根据Id查询用户信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserInfo getUserInfoById(Long userId);

	// 通过userName从user_info表中查记录
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserInfo getUserInfoByName(String userName);

	// 得到user_info表中全部记录
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<UserInfo> getAllUserInfo();

	// 判断该userName是否存在
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isExistUser(String userName);

	// 判断该用户账号和密码是否匹配
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isUserPass(String userName, String userPassword);

}