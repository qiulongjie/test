package com.eyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.domain.MovieInfo;
import com.eyuan.util.PageUtil;

@Transactional
public class MovieInfoDaoImpl implements MovieInfoDao {
	@Resource
	private SessionFactory sessionFactory;

	// 增加影片信息，即向movie_info表中插入数据
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.eyuan.dao.impl.MovieInfoDao#addMovieInfo(com.eyuan.domain.MovieInfo)
	 */
	public void addMovieInfo(MovieInfo movieInfo) {
		sessionFactory.getCurrentSession().persist(movieInfo);
	}

	// 更新影片信息
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.eyuan.dao.impl.MovieInfoDao#updateMovieInfo(com.eyuan.domain.MovieInfo
	 * )
	 */
	public void updateMovieInfo(MovieInfo movieInfo) {
		sessionFactory.getCurrentSession().merge(movieInfo);
	}

	// 根据movieId删除这影片信息
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.eyuan.dao.impl.MovieInfoDao#deleteMovieInfo(java.lang.Long)
	 */
	public void deleteMovieInfo(Long movieId) {
		MovieInfo movieInfo = getMovieInfoById(movieId);
		if (null != movieInfo) {
			deleteMovieInfo(movieInfo);
		}
	}

	// 删除影片信息
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.eyuan.dao.impl.MovieInfoDao#deleteMovieInfo(com.eyuan.domain.MovieInfo
	 * )
	 */
	public void deleteMovieInfo(MovieInfo movieInfo) {
		sessionFactory.getCurrentSession().delete(movieInfo);
	}

	// 根据movieId查找影片信息
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.eyuan.dao.impl.MovieInfoDao#getMovieInfoById(java.lang.Long)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public MovieInfo getMovieInfoById(Long movieId) {
		return (MovieInfo) sessionFactory.getCurrentSession().get(
				MovieInfo.class, movieId);
	}

	// 根据movieName查找影片信息 影片名称可能重名
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.eyuan.dao.impl.MovieInfoDao#getMovieInfoByName(java.lang.String)
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieInfo> getMovieInfoByName(String movieName) {
		List<MovieInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from MovieInfo where movieName=:movieName");
		q.setString("movieName", movieName);
		list = q.list();
		return list;
	}

	// 得到全部电影信息
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.eyuan.dao.impl.MovieInfoDao#getAllMovieInfo()
	 */
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieInfo> getAllMovieInfo() {
		List<MovieInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from MovieInfo");
		list = q.list();
		return list;
	}

	// 分页查找电影信息
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<MovieInfo> getMovieInfoPageList(int first, int max) {
		List<MovieInfo> list = null;
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from MovieInfo");
		q.setFirstResult(first);
		q.setMaxResults(max);
		list = q.list();
		return list;
	}

	// 获取记录总数
	public int getAllRowCount() {
		return getAllMovieInfo().size();
	}

	// 分页查询 pageSize页面显示总数 currentPage当前页数
	public PageUtil getPageFromMovieInfo(int pageSize, int currentPage) {
		int allRow = getAllRowCount();
		int totalPage = PageUtil.countTotalPage(pageSize, allRow); // 总页数
		final int offset = PageUtil.countOff(pageSize, currentPage); // 当前页开始记录
		final int length = pageSize; // 每页记录数
		List<MovieInfo> list = getMovieInfoPageList(offset, length); // "一页"的记录

		PageUtil pageUtil = new PageUtil();
		pageUtil.setPageSize(pageSize);
		pageUtil.setCurrentPage(currentPage);
		pageUtil.setAllRow(allRow);
		pageUtil.setTotalPage(totalPage);
		pageUtil.setList(list);
		pageUtil.init();
		return pageUtil;
	}
}
