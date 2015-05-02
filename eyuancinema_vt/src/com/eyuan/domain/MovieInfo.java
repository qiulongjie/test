package com.eyuan.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * MovieInfo entity. @author MyEclipse Persistence Tools
 */

public class MovieInfo implements java.io.Serializable {

	// Fields

	private Long movieId;
	private String movieName;
	private String movieDesc;
	private String movieShow;
//	private Date movieShow;
	private String movieType;
	private String movieDatatype;
	private String movieDirector;
	private String movieAuther;
	private String movieShoot;
	private String movieRole;
	private Integer movieTime;
	private String movieArea;
	private String movieLanguage;
	private String movieImageUrl;   //后期加上的属性
	
	public String getMovieImageUrl() {
		return movieImageUrl;
	}

	public void setMovieImageUrl(String movieImageUrl) {
		this.movieImageUrl = movieImageUrl;
	}

	private Set<MovieShowInfo> movieShowInfos = new HashSet<MovieShowInfo>();

	// Constructors

	/** default constructor */
	public MovieInfo() {
	}

	/** full constructor */
	public MovieInfo(String movieName, String movieDesc, String movieShow,
			String movieType, String movieDatatype, String movieDirector,
			String movieAuther, String movieShoot, String movieRole,
			Integer movieTime, String movieArea, String movieLanguage) {
		this.movieName = movieName;
		this.movieDesc = movieDesc;
		this.movieShow = movieShow;
		this.movieType = movieType;
		this.movieDatatype = movieDatatype;
		this.movieDirector = movieDirector;
		this.movieAuther = movieAuther;
		this.movieShoot = movieShoot;
		this.movieRole = movieRole;
		this.movieTime = movieTime;
		this.movieArea = movieArea;
		this.movieLanguage = movieLanguage;
	}

	@Override
	public String toString() {
		return "��Ӱ��ƣ�" + this.movieName + "\n���ݣ�" + this.movieDirector
				+ "\n���ݣ�" + this.movieRole + "\n��Ӱ������" + this.movieDesc
				+ "\n���ͣ�" + this.movieDatatype + "\n���ࣺ" + this.movieType
				+ "\n��ӳʱ�䣺" + this.movieShow + "\nʱ����" + this.movieTime
				+ "\n��磺" + this.movieAuther + "\n��Ӱ��" + this.movieShoot
				+ "\n����" + this.movieArea + "\n���ԣ�" + this.movieLanguage;
	}

	// Property accessors

	public Long getMovieId() {
		return this.movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return this.movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMovieDesc() {
		return this.movieDesc;
	}

	public void setMovieDesc(String movieDesc) {
		this.movieDesc = movieDesc;
	}

	public String getMovieShow() {
		return this.movieShow;
	}

	public void setMovieShow(String movieShow) {
		this.movieShow = movieShow;
	}

	public String getMovieType() {
		return this.movieType;
	}

	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}

	public String getMovieDatatype() {
		return this.movieDatatype;
	}

	public void setMovieDatatype(String movieDatatype) {
		this.movieDatatype = movieDatatype;
	}

	public String getMovieDirector() {
		return this.movieDirector;
	}

	public void setMovieDirector(String movieDirector) {
		this.movieDirector = movieDirector;
	}

	public String getMovieAuther() {
		return this.movieAuther;
	}

	public void setMovieAuther(String movieAuther) {
		this.movieAuther = movieAuther;
	}

	public String getMovieShoot() {
		return this.movieShoot;
	}

	public void setMovieShoot(String movieShoot) {
		this.movieShoot = movieShoot;
	}

	public String getMovieRole() {
		return this.movieRole;
	}

	public void setMovieRole(String movieRole) {
		this.movieRole = movieRole;
	}

	public Integer getMovieTime() {
		return this.movieTime;
	}

	public void setMovieTime(Integer movieTime) {
		this.movieTime = movieTime;
	}

	public String getMovieArea() {
		return this.movieArea;
	}

	public void setMovieArea(String movieArea) {
		this.movieArea = movieArea;
	}

	public String getMovieLanguage() {
		return this.movieLanguage;
	}

	public void setMovieLanguage(String movieLanguage) {
		this.movieLanguage = movieLanguage;
	}

	public Set<MovieShowInfo> getMovieShowInfos() {
		return movieShowInfos;
	}

	public void setMovieShowInfos(Set<MovieShowInfo> movieShowInfos) {
		this.movieShowInfos = movieShowInfos;
	}
}