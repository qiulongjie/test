package com.eyuan.action;

import javax.annotation.Resource;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.domain.MovieInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateMovieInfoAction extends ActionSupport {
	@Resource
	private MovieInfoDao movieInfoDao;

	private Long movieId;
	private String movieName;
	private String movieDirector;
	private String movieRole;
	private String movieAuther;
	private String movieShoot;
	private Integer movieTime;
	private String movieType;
	private String movieDatatype;
	private String movieShow;
	private String movieLanguage;
	private String movieArea;
	private String movieDesc;
	private String movieInfoDatatype;

	private MovieInfo movieInfo;

	public String updateMovieInfo() {
		Long id = (Long) ActionContext.getContext().getSession().get("movieId");
		MovieInfo m = movieInfoDao.getMovieInfoById(id);
		m.setMovieName(movieName);
		m.setMovieDirector(movieDirector);
		m.setMovieRole(movieRole);
		m.setMovieShoot(movieShoot);
		m.setMovieAuther(movieAuther);
		m.setMovieTime(movieTime);
		m.setMovieType(movieType);
		m.setMovieDatatype(movieDatatype);
		m.setMovieShow(movieShow);
		m.setMovieLanguage(movieLanguage);
		m.setMovieArea(movieArea);
		m.setMovieDesc(movieDesc);
		movieInfoDao.updateMovieInfo(m);
		ActionContext.getContext().getSession().remove("movieId");
		return "updatesuccess";
	}

	public String showUI() {
		ActionContext.getContext().getSession().put("movieId", movieId);
		movieInfo = movieInfoDao.getMovieInfoById(movieId);
		movieInfoDatatype = movieInfo.getMovieDatatype();
		return "uisuccess";
	}

	public String getMovieDirector() {
		return movieDirector;
	}

	public void setMovieDirector(String movieDirector) {
		this.movieDirector = movieDirector;
	}

	public String getMovieRole() {
		return movieRole;
	}

	public void setMovieRole(String movieRole) {
		this.movieRole = movieRole;
	}

	public String getMovieAuther() {
		return movieAuther;
	}

	public void setMovieAuther(String movieAuther) {
		this.movieAuther = movieAuther;
	}

	public String getMovieShoot() {
		return movieShoot;
	}

	public void setMovieShoot(String movieShoot) {
		this.movieShoot = movieShoot;
	}

	public Integer getMovieTime() {
		return movieTime;
	}

	public void setMovieTime(Integer movieTime) {
		this.movieTime = movieTime;
	}

	public String getMovieType() {
		return movieType;
	}

	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}

	public String getMovieDatatype() {
		return movieDatatype;
	}

	public void setMovieDatatype(String movieDatatype) {
		this.movieDatatype = movieDatatype;
	}

	public String getMovieShow() {
		return movieShow;
	}

	public void setMovieShow(String movieShow) {
		this.movieShow = movieShow;
	}

	public String getMovieLanguage() {
		return movieLanguage;
	}

	public void setMovieLanguage(String movieLanguage) {
		this.movieLanguage = movieLanguage;
	}

	public String getMovieArea() {
		return movieArea;
	}

	public void setMovieArea(String movieArea) {
		this.movieArea = movieArea;
	}

	public String getMovieDesc() {
		return movieDesc;
	}

	public void setMovieDesc(String movieDesc) {
		this.movieDesc = movieDesc;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public MovieInfo getMovieInfo() {
		return movieInfo;
	}

	public void setMovieInfo(MovieInfo movieInfo) {
		this.movieInfo = movieInfo;
	}

	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public String getMovieInfoDatatype() {
		return movieInfoDatatype;
	}

	public void setMovieInfoDatatype(String movieInfoDatatype) {
		this.movieInfoDatatype = movieInfoDatatype;
	}
}
