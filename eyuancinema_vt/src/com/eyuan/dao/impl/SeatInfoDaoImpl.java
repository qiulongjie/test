package com.eyuan.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.SeatInfoDao;
import com.eyuan.domain.SeatInfo;

@Transactional
public class SeatInfoDaoImpl implements SeatInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 设置座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#setSeatInfo()
	 */
	public void setSeatInfo() {
		for (int i = 1; i <= 100; i++) {
			if (i > 10) {
				if (i % 10 != 0) {
					int j = i / 10 + 1;
					int k = i % 10;
					addSeatInfo(new SeatInfo(i, "第" + j + "排第" + k + "号"));
				} else {
					addSeatInfo(new SeatInfo(i, "第" + i / 10 + "排第10号"));
				}
			} else {
				addSeatInfo(new SeatInfo(i, "第1排第" + i + "号"));
			}
		}

	}

	// 增加座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#addSeatInfo(com.eyuan.domain.SeatInfo)
	 */
	public void addSeatInfo(SeatInfo seatInfo) {
		sessionFactory.getCurrentSession().persist(seatInfo);
	}

	// 更新座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#updateSeatInfo(com.eyuan.domain.SeatInfo)
	 */
	public void updateSeatInfo(SeatInfo seatInfo) {
		sessionFactory.getCurrentSession().merge(seatInfo);
	}

	// 删除座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#deleteSeatInfo(com.eyuan.domain.SeatInfo)
	 */
	public void deleteSeatInfo(SeatInfo seatInfo) {
		sessionFactory.getCurrentSession().delete(seatInfo);
	}

	// 通过ID获取座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#getSeatInfoById(java.lang.Long)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SeatInfo getSeatInfoById(Long seatId) {
		return (SeatInfo) sessionFactory.getCurrentSession().get(
				SeatInfo.class, seatId);
	}

	// 通过seatNumber获取座位信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SeatInfoDao#getSeatInfoByNumber(int)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SeatInfo getSeatInfoByNumber(int seatNumber) {
		SeatInfo seatInfo = null;
		Criteria c = sessionFactory.getCurrentSession().createCriteria(
				SeatInfo.class);
		c.add(Restrictions.eq("seatNumber", seatNumber));
		seatInfo = (SeatInfo) c.uniqueResult();
		return seatInfo;
	}
}
