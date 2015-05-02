package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.SuperUserInfoDao;
import com.eyuan.domain.SuperUserInfo;

@Transactional
public class SuperUserInfoDaoImpl implements SuperUserInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 添加管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#addSuperUserInfo(com.eyuan.domain.SuperUserInfo)
	 */
	public void addSuperUserInfo(SuperUserInfo superUserInfo) {
		sessionFactory.getCurrentSession().persist(superUserInfo);
	}

	// 更新管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#updateSuperUserInfo(com.eyuan.domain.SuperUserInfo)
	 */
	public void updateSuperUserInfo(SuperUserInfo superUserInfo) {
		sessionFactory.getCurrentSession().merge(superUserInfo);
	}

	// 删除管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#deleteSuperUserInfo(com.eyuan.domain.SuperUserInfo)
	 */
	public void deleteSuperUserInfo(SuperUserInfo superUserInfo) {
		sessionFactory.getCurrentSession().delete(superUserInfo);
	}

	// 根据ID删除管理员
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#deleteSuperUserInfoById(java.lang.Long)
	 */
	public void deleteSuperUserInfoById(Long suId) {
		SuperUserInfo su = getSuperUserInfoById(suId);
		if (null != su) {
			deleteSuperUserInfo(su);
		}
	}

	// 根据Name删除管理员
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#deleteSuperUserInfoByName(java.lang.String)
	 */
	public void deleteSuperUserInfoByName(String suName) {
		SuperUserInfo su = getSuperUserInfoByName(suName);
		if (null != su) {
			deleteSuperUserInfo(su);
		}
	}

	// 根据Id获取管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#getSuperUserInfoById(java.lang.Long)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SuperUserInfo getSuperUserInfoById(Long superUserInfoId) {
		return (SuperUserInfo) sessionFactory.getCurrentSession().get(
				SuperUserInfo.class, superUserInfoId);
	}

	// 根据Name获取管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#getSuperUserInfoByName(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SuperUserInfo getSuperUserInfoByName(String suName) {
		SuperUserInfo superUserInfo;
		Criteria c = sessionFactory.getCurrentSession().createCriteria(
				SuperUserInfo.class);
		c.add(Restrictions.eq("suName", suName));
		superUserInfo = (SuperUserInfo) c.uniqueResult();
		return superUserInfo;
	}

	// 获取全部管理员信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#getAllSuperUserInfo()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SuperUserInfo> getAllSuperUserInfo() {
		List<SuperUserInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from SuperUserInfo");
		q.setFirstResult(0);
		q.setMaxResults(20);
		list = q.list();
		return list;
	}

	// 判断该管理员是否存在
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#isExistSuperUser(java.lang.String)
	 */
	public boolean isExistSuperUser(String suName) {
		SuperUserInfo s = getSuperUserInfoByName(suName);
		if (null != s) {
			return true;
		} else {
			return false;
		}
	}

	// 判断该管理员账号和密码是否匹配
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SuperUserInfoDao#isSuperUserPass(java.lang.String, java.lang.String)
	 */
	public boolean isSuperUserPass(String suName, String suPassword) {
		SuperUserInfo s = getSuperUserInfoByName(suName);
		if (null != s && (suPassword.equals(s.getSuPassword()))) {
			return true;
		} else {
			return false;
		}
	}
}
