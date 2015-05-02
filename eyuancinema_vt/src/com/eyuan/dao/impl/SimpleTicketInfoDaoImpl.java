package com.eyuan.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.SeatInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.dao.SimpleTicketInfoDao;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.SeatInfo;
import com.eyuan.domain.SimpleTicketInfo;
import com.eyuan.util.CreatPhoneTicketIdUtil;
import com.eyuan.util.StringArrayChange;

@Transactional
public class SimpleTicketInfoDaoImpl implements SimpleTicketInfoDao {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private SeatInfoDao seatInfoDao;
	@Resource
	private MovieShowInfoDao msDao;
	@Resource
	private ShowSeatRelationDao ssrDao;

	// 添加简单票信息
	public void addSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo) {
		sessionFactory.getCurrentSession().persist(simpleTicketInfo);
	}

	// 更新简单票信息
	public void updateSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo) {
		sessionFactory.getCurrentSession().merge(simpleTicketInfo);
	}

	// 删除简单票信息
	public void deleteSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo) {
		sessionFactory.getCurrentSession().delete(simpleTicketInfo);
	}

	// 通过ID删除票信息
	public void deleteSimpleTicketInfoByTicketId(String ticketId) {
		String sql = "delete from simple_ticket_info where ticket_id = ";
		sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
		sessionFactory.getCurrentSession().flush();
		sessionFactory.getCurrentSession().clear();
	}

	// 通过ID查找票信息
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SimpleTicketInfo getSimpleTicketInfoById(String simpleTicketInfoId) {
		String sql = "select * from simple_ticket_info where ticket_id = "
				+ simpleTicketInfoId;
		return (SimpleTicketInfo) sessionFactory.getCurrentSession()
				.createSQLQuery(sql).addEntity(sql, SimpleTicketInfo.class)
				.uniqueResult();
		// return (SimpleTicketInfo) sessionFactory.getCurrentSession().get(
		// SimpleTicketInfo.class, simpleTicketInfoId);
	}

	// 通过ID查找票信息返回List
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SimpleTicketInfo> getSimpleTicketInfoByIdToList(
			String simpleTicketInfoId) {
		String sql = "select * from simple_ticket_info where ticket_id = "
				+ simpleTicketInfoId;
		return sessionFactory.getCurrentSession().createSQLQuery(sql)
				.addEntity(sql, SimpleTicketInfo.class).list();
		// return (SimpleTicketInfo) sessionFactory.getCurrentSession().get(
		// SimpleTicketInfo.class, simpleTicketInfoId);
	}

	// 根据showId与seatId查找票信息
	public SimpleTicketInfo getSimpleTicketInfoByShowIdAndSeatId(Long showId,
			Long seatId) {
		String sql = "select * from simple_ticket_info where show_id= "
				+ showId + " and seat_id = " + seatId;
		return (SimpleTicketInfo) sessionFactory.getCurrentSession()
				.createSQLQuery(sql).addEntity(sql, SimpleTicketInfo.class)
				.uniqueResult();
	}

	// 根据订票电话号码查询电影票
	@SuppressWarnings("unchecked")
	public List<SimpleTicketInfo> getSimpleTicketInfoByPhone(String ticketPhone) {
		String sql = "select * from simple_ticket_info where ticket_phone = "
				+ ticketPhone;
		return sessionFactory.getCurrentSession().createSQLQuery(sql)
				.addEntity(sql, SimpleTicketInfo.class).list();
	}

	// 更新票状态
	public void updateTicketMark(String ticketId) {
		SimpleTicketInfo st = getSimpleTicketInfoById(ticketId);
		if (st.getTicketMark() == 0) { // 出票时调用
			st.setTicketMark(1);
			updateSimpleTicketInfo(st);
		} else { // 退票时调用
			st.setTicketMark(0);
			updateSimpleTicketInfo(st);
		}
	}

	// 获取全部票信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SimpleTicketInfo> getAllSimpleTicketInfo() {
		List<SimpleTicketInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from SimpleTicketInfo");
		list = q.list();
		return list;
	}

	// 购票函数--需要showId、phone、座位号码数组、价格
	@SuppressWarnings("null")
	public List<SimpleTicketInfo> addSimpleTicketInfoForBuy(Long showId,
			String phone, Double price, String seatIds, String buyTime) {
		List<SimpleTicketInfo> list = new ArrayList<SimpleTicketInfo>();
		int seatNumber[] = new StringArrayChange().stringToIntArray(seatIds);

		for (int i = 0; i < seatNumber.length; i++) {
			String ticketId = new CreatPhoneTicketIdUtil().getPhoneTicketId(
					showId, seatNumber[i]);

			SimpleTicketInfo st = new SimpleTicketInfo();
			st.setTicketId(ticketId);
			MovieShowInfo ms = msDao.getMovieShowInfoById(showId);
			st.setMovieShowInfo(ms);
			SeatInfo seat = seatInfoDao.getSeatInfoByNumber(seatNumber[i]);
			st.setSeatInfo(seat);
			st.setTicketMark(0);
			st.setTicketPhone(phone);
			st.setBuyTime(buyTime);
			st.setTicketPrice(price);
			addSimpleTicketInfo(st); // 保存票信息
			System.out.println("st++++" + st.getTicketId());
			ssrDao.changeSeatStatus(showId, (long) seatNumber[i]); // 更改座位状态和更新余票

			System.out.println("进入List");
			System.out.println(getSimpleTicketInfoByShowIdAndSeatId(showId,
					(long) seatNumber[i]));
			list.add(getSimpleTicketInfoByShowIdAndSeatId(showId,
					(long) seatNumber[i]));
		}
		System.out.println("list长度：" + list.size());
		return list;
	}
}
