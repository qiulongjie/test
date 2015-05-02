package com.eyuan.action;

import java.util.Iterator;
import java.util.Set;

import javax.annotation.Resource;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.domain.MovieShowInfo;

public class DeleteMovieInfoAction {
	@Resource
	private MovieInfoDao movieInfoDao;
	@Resource
	private MovieShowInfoDao movieShowInfoDao;

	private Long movieId;

	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public String deleteMovieInfo() {
		try {
			Set<MovieShowInfo> set = movieInfoDao.getMovieInfoById(movieId)
					.getMovieShowInfos();
			Iterator<MovieShowInfo> it = set.iterator();
			while(it.hasNext()){
				MovieShowInfo ms = it.next();
				movieShowInfoDao.deleteMovieShowInfo(ms);
			}
			movieInfoDao.deleteMovieInfo(movieId);
			return "success";
		} catch (Exception e) {
			return "error";
		}
	}
}
