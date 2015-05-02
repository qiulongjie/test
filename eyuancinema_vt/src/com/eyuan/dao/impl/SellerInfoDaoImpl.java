package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.SellerInfoDao;
import com.eyuan.domain.SellerInfo;

@Transactional
public class SellerInfoDaoImpl implements SellerInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 增加售票员工
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#addSellerInfo(com.eyuan.domain.SellerInfo)
	 */
	public void addSellerInfo(SellerInfo sellerInfo) {
		sessionFactory.getCurrentSession().persist(sellerInfo);
	}

	// 删除售票员工信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#deleteSellerInfo(com.eyuan.domain.SellerInfo)
	 */
	public void deleteSellerInfo(SellerInfo sellerInfo) {
		sessionFactory.getCurrentSession().delete(sellerInfo);
	}

	// 根据ID删除售票员工
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#deleteSellerInfoById(java.lang.Long)
	 */
	public void deleteSellerInfoById(Long seId) {
		SellerInfo s = getSellerInfoById(seId);
		if (null != s) {
			deleteSellerInfo(s);
		}
	}

	// 根据Name删除售票员工
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#deleteSellerByName(java.lang.String)
	 */
	public void deleteSellerByName(String seName) {
		SellerInfo s = getSellerInfoByName(seName);
		if (null != s) {
			deleteSellerInfo(s);
		}
	}

	// 更新售票员工信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#updateSellerInfo(com.eyuan.domain.SellerInfo)
	 */
	public void updateSellerInfo(SellerInfo sellerInfo) {
		sessionFactory.getCurrentSession().merge(sellerInfo);
	}

	// 根据ID查询售票员工信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#getSellerInfoById(java.lang.Long)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SellerInfo getSellerInfoById(Long seId) {
		return (SellerInfo) sessionFactory.getCurrentSession().get(
				SellerInfo.class, seId);
	}

	// 根据Name查询售票员工信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#getSellerInfoByName(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public SellerInfo getSellerInfoByName(String seName) {
		SellerInfo seller = null;
		Criteria c = sessionFactory.getCurrentSession().createCriteria(
				SellerInfo.class);
		c.add(Restrictions.eq("seName", seName));
		seller = (SellerInfo) c.uniqueResult();
		return seller;
	}

	// 获取全部售票员工信息
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#getAllSellerInfo()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<SellerInfo> getAllSellerInfo() {
		List<SellerInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from SellerInfo");
		q.setFirstResult(0);
		q.setMaxResults(20);
		list = q.list();
		return list;
	}

	// 根据Name判断该售货员是否存在
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#isExistSellerInfo(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isExistSellerInfo(String seName) {
		SellerInfo s = getSellerInfoByName(seName);
		if (null != s) {
			return true;
		} else {
			return false;
		}
	}

	// 判断该售货员账号和密码是否匹配
	/* (non-Javadoc)
	 * @see com.eyuan.dao.impl.SellerInfoDao#isSellerInfoPass(java.lang.String, java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public boolean isSellerInfoPass(String seName, String sePassword) {
		SellerInfo s = getSellerInfoByName(seName);
		if (null != s && (sePassword.equals(s.getSePassword()))) {
			return true;
		} else {
			return false;
		}
	}
}
