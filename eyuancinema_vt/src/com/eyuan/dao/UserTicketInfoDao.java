package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.UserTicketInfo;

public interface UserTicketInfoDao {

	// 添加用户票信息
	public void addUserTicketInfo(UserTicketInfo userTicketInfo);

	// 删除用户票信息
	public void deleteUserTicketInfo(UserTicketInfo userTicketInfo);

	// 更新用户票信息
	public void updateUserTicketInfo(UserTicketInfo userTicketInfo);

	// 通过ID查找票信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserTicketInfo getUserTicketById(String ticketId);

	// 查询全部用户票信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<UserTicketInfo> getAllUserTicketInfo();

}