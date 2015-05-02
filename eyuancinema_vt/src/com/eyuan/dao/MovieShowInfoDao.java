package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.MovieShowInfo;

public interface MovieShowInfoDao {

	// 增加电影场次信息
	public void addMovieShowInfo(MovieShowInfo movieShowInfo);

	// 根据ID删除场次信息
	public void deleteMovieShowInfoById(Long showId);

	// 根据日期删除场次信息
	public void removeMovieShowInfoByDate(String showDate);

	// 删除场次信息
	public void deleteMovieShowInfo(MovieShowInfo movieShowInfo);

	// 更新场次信息
	public void updateMovieShowInfo(MovieShowInfo movieShowInfo);

	// 根据ID查询场次信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public MovieShowInfo getMovieShowInfoById(Long showId);

	// 根据日期得到场次信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieShowInfo> getMovieShowInfoByDate(String showDate);

	// 获取某一电影的场次信息
	public List<MovieShowInfo> getMovieShowListByMovieId(Long movieId);

	// 得到全部场次信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieShowInfo> getAllMovieShowInfo();

	// 添加电影到场次
	public void addMovieToShow(Long movieId, Long showId);

	// 更新剩余票数
	public void updateTicketLeft(Long showId);

	// 从关系表中获取本场次的剩余票数
	public int getTicketLeftFromRelation(Long showId);

}