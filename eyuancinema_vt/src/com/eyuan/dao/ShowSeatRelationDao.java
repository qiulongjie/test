package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.ShowSeatRelation;

public interface ShowSeatRelationDao {

	// 初始化场次座位信息
	public void initShowSeatRelation(MovieShowInfo movieShowInfo);

	// 更新场次座位信息
	public void updateShowSeatRelation(ShowSeatRelation showSeatRelation);

	// 删除场次座位信息
	public void deleteShowSeatRelation(ShowSeatRelation showSeatRelation);

	// 根据showSeatId查询场次座位信息对象
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public ShowSeatRelation getShowSeatRelationById(Long showSeatId);

	// 获取某场次的全部场次座位信息记录
	public List<ShowSeatRelation> getShowSeatList(Long showId);

	// 获取某场次某座位的场次座位信息记录
	@SuppressWarnings("unchecked")
	public ShowSeatRelation getShowSeatRelationByShowIdAndSeatId(Long showId,
			Long seatId);

	// 根据showId和seatId更改座位状态并更新场次余票数
	public void changeSeatStatus(Long showId, Long seatId);
}