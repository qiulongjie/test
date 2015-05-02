package com.eyuan.action;

import java.io.File;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.domain.MovieInfo;
import com.eyuan.util.DateTypeConverter;
import com.eyuan.util.GetPathUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AddMovieInfoAction extends ActionSupport {
	@Resource
	private MovieInfoDao movieInfoDao;

	private String movieName;
	private String movieDirector;
	private String movieRole;
	private String movieAuther;
	private String movieShoot;
	private Integer movieTime;
	private String movieType;
	private String movieDatatype;
//	private String movieShow;
	private Date movieShow;
	private String movieLanguage;
	private String movieArea;
	private String movieDesc;

	private String movieImageUrl;

	private File movieImage;
	private String movieImageFileName;

	public String addUI(){
		return "addui";
	}
	
	public String addMovieinfo() {
		try {
			MovieInfo movieInfo = new MovieInfo();
System.out.println(movieShow);
String movieShow2 = (String) new DateTypeConverter().convertValue(null, movieShow, String.class);
System.out.println(movieShow2);
			movieInfo.setMovieName(movieName);
			movieInfo.setMovieDirector(movieDirector);
			movieInfo.setMovieRole(movieRole);
			movieInfo.setMovieShoot(movieShoot);
			movieInfo.setMovieAuther(movieAuther);
			movieInfo.setMovieTime(movieTime);
			movieInfo.setMovieType(movieType);
			movieInfo.setMovieDatatype(movieDatatype);
			movieInfo.setMovieShow(movieShow2);
			movieInfo.setMovieLanguage(movieLanguage);
			movieInfo.setMovieArea(movieArea);
			movieInfo.setMovieDesc(movieDesc);
System.out.println(movieInfo);
			String realpath = ServletActionContext.getServletContext()
					.getRealPath("/images/movie");
System.out.println(realpath);
			if (movieImage != null) {
				File savefile = new File(new File(realpath), movieImageFileName);
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(movieImage, savefile);
			}

			String movieImageUrl = new GetPathUtil().change2(realpath
					+ File.separator + movieImageFileName);

			movieInfo.setMovieImageUrl(movieImageUrl);

			movieInfoDao.addMovieInfo(movieInfo);
			return "success";
		} catch (Exception e) {
			return "error";
		}
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
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

//	public String getMovieShow() {
//		return movieShow;
//	}
//
//	public void setMovieShow(String movieShow) {
//		this.movieShow = movieShow;
//	}
	
	public Date getMovieShow() {
		return movieShow;
	}

	public void setMovieShow(Date movieShow) {
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

	public String getMovieImageUrl() {
		return movieImageUrl;
	}

	public void setMovieImageUrl(String movieImageUrl) {
		this.movieImageUrl = movieImageUrl;
	}

	public File getMovieImage() {
		return movieImage;
	}

	public void setMovieImage(File movieImage) {
		this.movieImage = movieImage;
	}

	public String getMovieImageFileName() {
		return movieImageFileName;
	}

	public void setMovieImageFileName(String movieImageFileName) {
		this.movieImageFileName = movieImageFileName;
	}
}
