package com.eyuan.dao;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.SeatInfo;

public interface SeatInfoDao {

	// 设置座位信息
	public void setSeatInfo();

	// 增加座位信息
	public void addSeatInfo(SeatInfo seatInfo);

	// 更新座位信息
	public void updateSeatInfo(SeatInfo seatInfo);

	// 删除座位信息
	public void deleteSeatInfo(SeatInfo seatInfo);

	// 通过ID获取座位信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SeatInfo getSeatInfoById(Long seatId);

	// 通过seatNumber获取座位信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SeatInfo getSeatInfoByNumber(int seatNumber);

}