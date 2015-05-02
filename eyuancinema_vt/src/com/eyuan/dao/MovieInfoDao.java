package com.eyuan.dao;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.domain.MovieInfo;
import com.eyuan.util.PageUtil;

public interface MovieInfoDao {

	// 增加影片信息，即向movie_info表中插入数据
	public void addMovieInfo(MovieInfo movieInfo);

	// 更新影片信息
	public void updateMovieInfo(MovieInfo movieInfo);

	// 根据movieId删除这影片信息
	public void deleteMovieInfo(Long movieId);

	// 删除影片信息
	public void deleteMovieInfo(MovieInfo movieInfo);

	// 根据movieId查找影片信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public MovieInfo getMovieInfoById(Long movieId);

	// 根据movieName查找影片信息 影片名称可能重名
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieInfo> getMovieInfoByName(String movieName);

	// 得到全部电影信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieInfo> getAllMovieInfo();

	// 分页查找电影信息
	public List<MovieInfo> getMovieInfoPageList(int first, int max);

	// 获取记录总数
	public int getAllRowCount();

	// 分页查询
	public PageUtil getPageFromMovieInfo(int pageSize, int currentPage);
}