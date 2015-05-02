package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.SimpleTicketInfo;

public interface SimpleTicketInfoDao {

	// 添加简单票信息
	public void addSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo);

	// 更新简单票信息
	public void updateSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo);

	// 删除简单票信息
	public void deleteSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo);

	// 通过ID删除票信息
	public void deleteSimpleTicketInfoByTicketId(String ticketId);

	// 通过ID查找票信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SimpleTicketInfo getSimpleTicketInfoById(String simpleTicketInfoId);

	// 通过ID查找票信息返回List
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SimpleTicketInfo> getSimpleTicketInfoByIdToList(
			String simpleTicketInfoId);

	// 根据showId与seatId查找票信息
	public SimpleTicketInfo getSimpleTicketInfoByShowIdAndSeatId(Long showId,
			Long seatId);

	// 根据订票电话号码查询电影票
	@SuppressWarnings("unchecked")
	public List<SimpleTicketInfo> getSimpleTicketInfoByPhone(String ticketPhone);

	// 更新票状态
	public void updateTicketMark(String ticketId);

	// 获取全部票信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SimpleTicketInfo> getAllSimpleTicketInfo();

	// 购票函数--需要showId、phone、座位号码数组、价格
	public List<SimpleTicketInfo> addSimpleTicketInfoForBuy(Long showId,
			String phone, Double price, String seatIds, String buyTime);

}