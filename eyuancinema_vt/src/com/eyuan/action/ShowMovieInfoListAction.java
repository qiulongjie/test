package com.eyuan.action;

import java.util.List;

import javax.annotation.Resource;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.domain.MovieInfo;
import com.eyuan.util.PageUtil;

public class ShowMovieInfoListAction {
	@Resource
	private MovieInfoDao movieInfoDao;

	List list;

	private MovieInfo movieInfo;
	private Long movieId;
	
	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public MovieInfo getMovieInfo() {
		return movieInfo;
	}

	public void setMovieInfo(MovieInfo movieInfo) {
		this.movieInfo = movieInfo;
	}

	private int page;

	public int pageNow = 1;// 初始化为1,默认从第一页开始显示
	public int pageSize = 3;// 每页显示3条记录
	private PageUtil pageUtil;
	
	public String movieInfoForestage(){
		movieInfo = movieInfoDao.getMovieInfoById(movieId);
		System.out.println(movieId);
		return "movieInfofore";
	}
	
	public String pageListForestage(){
		pageUtil=movieInfoDao.getPageFromMovieInfo( pageSize,pageNow);
		System.out.println(pageUtil.getCurrentPage());
		return "forestagepage";
	}

	public String pageList() {
		pageUtil=movieInfoDao.getPageFromMovieInfo( pageSize,pageNow);
		return "pagesuccess";
	}

	public String showMovieInfoList() {
		try {
			list = movieInfoDao.getAllMovieInfo();
			return "success";
		} catch (Exception e) {
			return "error";
		}
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public PageUtil getPageUtil() {
		return pageUtil;
	}

	public void setPageUtil(PageUtil pageUtil) {
		this.pageUtil = pageUtil;
	}
}
