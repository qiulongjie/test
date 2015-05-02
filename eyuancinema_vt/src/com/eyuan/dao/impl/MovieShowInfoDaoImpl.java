package com.eyuan.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.domain.MovieInfo;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.ShowSeatRelation;
import com.eyuan.domain.SimpleTicketInfo;

@Transactional
public class MovieShowInfoDaoImpl implements MovieShowInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 增加电影场次信息
	public void addMovieShowInfo(MovieShowInfo movieShowInfo) {
		sessionFactory.getCurrentSession().persist(movieShowInfo);
	}

	// 根据ID删除场次信息
	public void deleteMovieShowInfoById(Long showId) {
		MovieShowInfo ms = getMovieShowInfoById(showId);
		if (null != ms) {
			deleteMovieShowInfo(ms);
		}
	}

	// 根据日期删除场次信息
	public void removeMovieShowInfoByDate(String showDate) {
		List<MovieShowInfo> list = getMovieShowInfoByDate(showDate);
		for (MovieShowInfo m : list) {
			deleteMovieShowInfo(m);
		}
	}

	// 删除场次信息
	public void deleteMovieShowInfo(MovieShowInfo movieShowInfo) {
		Set<ShowSeatRelation> set = movieShowInfo.getShowSeatRelations();
		Iterator it = set.iterator();
		while (it.hasNext()) {
			ShowSeatRelation ssr = (ShowSeatRelation) it.next();
			sessionFactory.getCurrentSession().delete(ssr);
		}
		Set<SimpleTicketInfo> sset = movieShowInfo.getSimpleTicketInfos();
		Iterator sit = sset.iterator();
		while (sit.hasNext()) {
			SimpleTicketInfo st = (SimpleTicketInfo) sit.next();
			sessionFactory.getCurrentSession().delete(st);
		}
		sessionFactory.getCurrentSession().delete(movieShowInfo);
	}

	// 更新场次信息
	public void updateMovieShowInfo(MovieShowInfo movieShowInfo) {
		sessionFactory.getCurrentSession().merge(movieShowInfo);
	}

	// 根据ID查询场次信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public MovieShowInfo getMovieShowInfoById(Long showId) {
		return (MovieShowInfo) sessionFactory.getCurrentSession().get(
				MovieShowInfo.class, showId);
	}

	// 根据日期得到场次信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieShowInfo> getMovieShowInfoByDate(String showDate) {
		List<MovieShowInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from MovieShowInfo where showDate=:showDate");
		q.setString("showDate", showDate);
		list = q.list();
		return list;
	}

	// 获取某一电影的场次信息
	public List<MovieShowInfo> getMovieShowListByMovieId(Long movieId) {
		String sql = "select * from movie_show_info where movie_id = "
				+ movieId;
		@SuppressWarnings("unchecked")
		List<MovieShowInfo> list = sessionFactory.getCurrentSession()
				.createSQLQuery(sql).addEntity(sql, MovieShowInfo.class)
				.list();
		return list;
	}

	// 得到全部场次信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieShowInfo> getAllMovieShowInfo() {
		List<MovieShowInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from MovieShowInfo");
		q.setFirstResult(0);
		q.setMaxResults(20);
		list = q.list();
		return list;
	}

	// 添加电影到场次
	public void addMovieToShow(Long movieId, Long showId) {
		MovieInfo m = (MovieInfo) sessionFactory.getCurrentSession().load(
				MovieInfo.class, movieId);

		MovieShowInfo ms = (MovieShowInfo) sessionFactory.getCurrentSession()
				.load(MovieShowInfo.class, showId);
		ms.setMovieInfo(m);
		m.getMovieShowInfos().add(ms);

	}

	// 更新剩余票数
	public void updateTicketLeft(Long showId) {
		MovieShowInfo msInfo = (MovieShowInfo) sessionFactory.getCurrentSession()
				.load(MovieShowInfo.class, showId);
		msInfo.setTicketLeft(getTicketLeftFromRelation(showId));
		updateMovieShowInfo(msInfo);
	}

	// 从关系表中获取本场次的剩余票数
	public int getTicketLeftFromRelation(Long showId) {
		String sql = "select * from show_seat_relation where show_id = "
				+ showId + " and seat_status = 0";
		@SuppressWarnings("unchecked")
		List<ShowSeatRelation> list = sessionFactory.getCurrentSession()
				.createSQLQuery(sql).addEntity(sql, ShowSeatRelation.class)
				.list();
		return list.size();
	}
}
