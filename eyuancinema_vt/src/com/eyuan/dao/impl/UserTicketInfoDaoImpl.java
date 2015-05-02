package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.UserTicketInfoDao;
import com.eyuan.domain.UserInfo;
import com.eyuan.domain.UserTicketInfo;

@Transactional
public class UserTicketInfoDaoImpl implements UserTicketInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 添加用户票信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserTicketInfoDao#addUserTicketInfo(com.eyuan.domain.UserTicketInfo)
	 */
	public void addUserTicketInfo(UserTicketInfo userTicketInfo) {
		sessionFactory.getCurrentSession().persist(userTicketInfo);
	}

	// 删除用户票信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserTicketInfoDao#deleteUserTicketInfo(com.eyuan.domain.UserTicketInfo)
	 */
	public void deleteUserTicketInfo(UserTicketInfo userTicketInfo) {
		sessionFactory.getCurrentSession().delete(userTicketInfo);
	}

	// 更新用户票信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserTicketInfoDao#updateUserTicketInfo(com.eyuan.domain.UserTicketInfo)
	 */
	public void updateUserTicketInfo(UserTicketInfo userTicketInfo) {
		sessionFactory.getCurrentSession().merge(userTicketInfo);
	}

	// 通过ID查找票信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserTicketInfoDao#getUserTicketById(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserTicketInfo getUserTicketById(String ticketId) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(
				UserTicketInfo.class);
		c.add(Restrictions.eq("ticketId", ticketId));
		UserTicketInfo userTicketInfo = (UserTicketInfo) c.uniqueResult();
		return userTicketInfo;
	}

	// 查询全部用户票信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserTicketInfoDao#getAllUserTicketInfo()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<UserTicketInfo> getAllUserTicketInfo() {
		List<UserTicketInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from UserTicketInfo");
		q.setFirstResult(0);
		q.setMaxResults(20);
		list = q.list();
		return list;
	}
}
