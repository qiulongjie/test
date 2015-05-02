package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.UserInfoDao;
import com.eyuan.domain.UserInfo;

@Transactional
public class UserInfoDaoImpl implements UserInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 向user_info表插入记录
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#addUserInfo(com.eyuan.domain.UserInfo)
	 */
	public void addUserInfo(UserInfo userInfo) {
		sessionFactory.getCurrentSession().persist(userInfo);
	}

	// 删除用户
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#deleteUserInfo(com.eyuan.domain.UserInfo)
	 */
	public void deleteUserInfo(UserInfo userInfo) {
		sessionFactory.getCurrentSession().delete(userInfo);
	}

	// 根据ID删除用户信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#deleteUserInfoById(java.lang.Long)
	 */
	public void deleteUserInfoById(Long userId) {
		UserInfo userInfo = getUserInfoById(userId);
		if (userInfo != null) {
			deleteUserInfo(userInfo);
		}
	}

	// 通过userName从user_info表中删除记录
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#deleteUserInfoByName(java.lang.String)
	 */
	public void deleteUserInfoByName(String userName) {
		UserInfo userInfo = getUserInfoByName(userName);
		if (userInfo != null) {
			deleteUserInfo(userInfo);
		}
	}

	// 更新用户信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#updateUserInfo(com.eyuan.domain.UserInfo)
	 */
	public void updateUserInfo(UserInfo userInfo) {
		sessionFactory.getCurrentSession().merge(userInfo);
	}

	// 根据Id查询用户信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#getUserInfoById(java.lang.Long)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserInfo getUserInfoById(Long userId) {
		return (UserInfo) sessionFactory.getCurrentSession().get(
				UserInfo.class, userId);
	}

	// 通过userName从user_info表中查记录
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#getUserInfoByName(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public UserInfo getUserInfoByName(String userName) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(
				UserInfo.class);
		c.add(Restrictions.eq("userName", userName));
		UserInfo userInfo = (UserInfo) c.uniqueResult();
		return userInfo;
	}

	// 得到user_info表中全部记录
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#getAllUserInfo()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<UserInfo> getAllUserInfo() {
		List<UserInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from UserInfo");
		q.setFirstResult(0);
		q.setMaxResults(20);
		list = q.list();
		return list;
	}

	// 判断该userName是否存在
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#isExistUser(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isExistUser(String userName) {
		if (null != getUserInfoByName(userName)) {
			return true;
		} else {
			return false;
		}
	}

	// 判断该用户账号和密码是否匹配
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.UserInfoDao#isUserPass(java.lang.String, java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isUserPass(String userName, String userPassword) {
		UserInfo userInfo = getUserInfoByName(userName);
		if (null != userInfo
				&& (userPassword.equals(userInfo.getUserPassword()))) {
			return true;
		} else {
			return false;
		}
	}
}
