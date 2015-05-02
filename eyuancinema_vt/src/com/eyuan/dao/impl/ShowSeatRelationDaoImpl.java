package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.SeatInfo;
import com.eyuan.domain.ShowSeatRelation;

@Transactional
public class ShowSeatRelationDaoImpl implements ShowSeatRelationDao {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private MovieShowInfoDao movieShowInfoDao;

	// 初始化场次座位信息
	public void initShowSeatRelation(MovieShowInfo movieShowInfo) {
		for (int i = 1; i <= 100; i++) {
			SeatInfo seatInfo = (SeatInfo) sessionFactory.getCurrentSession()
					.load(SeatInfo.class, (long) i);
			ShowSeatRelation ssr = new ShowSeatRelation();
			ssr.setMovieShowInfo(movieShowInfo);
			ssr.setSeatInfo(seatInfo);
			ssr.setSeatStatus(0);
			sessionFactory.getCurrentSession().persist(ssr);
		}
	}

	// 更新场次座位信息
	public void updateShowSeatRelation(ShowSeatRelation showSeatRelation) {
		sessionFactory.getCurrentSession().merge(showSeatRelation);
	}

	// 删除场次座位信息
	public void deleteShowSeatRelation(ShowSeatRelation showSeatRelation) {
		sessionFactory.getCurrentSession().delete(showSeatRelation);
	}

	// 获取某场次的全部场次座位信息记录
	@SuppressWarnings("unchecked")
	public List<ShowSeatRelation> getShowSeatList(Long showId) {
		String sql = "select * from show_seat_relation where show_seat_relation.show_id = "
				+ showId;
		return sessionFactory.getCurrentSession().createSQLQuery(sql)
				.addEntity(sql, ShowSeatRelation.class).list();

	}

	// 获取某场次某座位的场次座位信息记录
	@SuppressWarnings("unchecked")
	public ShowSeatRelation getShowSeatRelationByShowIdAndSeatId(Long showId,
			Long seatId) {
		String sql = "select * from show_seat_relation where show_seat_relation.show_id = "
				+ showId + " and show_seat_relation.seat_id = " + seatId;
		return (ShowSeatRelation) sessionFactory.getCurrentSession()
				.createSQLQuery(sql).addEntity(sql, ShowSeatRelation.class)
				.uniqueResult();

	}

	// 根据showId和seatId更改座位状态并更新场次余票数
	public void changeSeatStatus(Long showId, Long seatId) {
		ShowSeatRelation ssr = getShowSeatRelationByShowIdAndSeatId(showId,
				seatId);
		int status = ssr.getSeatStatus();
		if(status == 0){
			ssr.setSeatStatus(1);
			updateShowSeatRelation(ssr);
		}
		else{
			ssr.setSeatStatus(0);
			updateShowSeatRelation(ssr);
		}
		System.out.println("票状态更新成功！！！！！！！");
		movieShowInfoDao.updateTicketLeft(showId);
	}

	// 根据showSeatId查询场次座位信息对象
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public ShowSeatRelation getShowSeatRelationById(Long showSeatId) {
		return (ShowSeatRelation) sessionFactory.getCurrentSession().get(
				ShowSeatRelation.class, showSeatId);
	}

}
