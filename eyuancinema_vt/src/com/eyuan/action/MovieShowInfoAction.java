package com.eyuan.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.domain.MovieInfo;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.ShowSeatRelation;
import com.eyuan.util.DateTypeConverter;
import com.eyuan.util.GetNowTimeUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MovieShowInfoAction extends ActionSupport implements RequestAware {
	@Resource
	private MovieShowInfoDao movieShowInfoDao;
	@Resource
	private MovieInfoDao movieInfoDao;
	@Resource
	private ShowSeatRelationDao showSeatRelationDao;

	private Long movieId;
	private Long showId;

	private Date showDate;
	private String showTime;
	private Double showPrice;
	private Integer ticketLeft;
	private MovieInfo movieInfo;
	private MovieShowInfo movieShowInfo;

	private List<MovieShowInfo> showList;
	private List<MovieInfo> movieList;
	private List<ShowSeatRelation> ssrList;

	Map<String, Object> request;
	

//	在主页显示本日影讯
	public String todayShow(){
		Date d = new Date();
		System.out.println(d);
		String dd = (String) new DateTypeConverter().convertValue(null,
				d, String.class);
		System.out.println(dd);
		showList = movieShowInfoDao.getMovieShowInfoByDate(dd);
		return "todayshow";
	}
	
	// 在主页显示明天影讯
	public String tomarrowShow(){
		String tomarrow = new GetNowTimeUtil().getTomarrowDay();
		showList = movieShowInfoDao.getMovieShowInfoByDate(tomarrow);
		return "tomarrowshow";
	}
	
	// 在主页显示后天影讯
	public String afterShow(){
		String after = new GetNowTimeUtil().getAfterTomarrowDay();
		showList = movieShowInfoDao.getMovieShowInfoByDate(after);
		return "aftershow";
	}
	
	// 在前台显示本片影讯信息
	public String movieShowForestage() {
		// System.out.println(movieId+">>>>>>>>>>");
		showList = movieShowInfoDao.getMovieShowListByMovieId(movieId);
		// System.out.println("end---");
		return "showforestage";
	}

	// 在前台显示当日影讯信息
	public String movieShowAllForestage() {
		// System.out.println(movieId+">>>>>>>>>>");
		Date d = new Date();
		System.out.println(d);
		String dd = (String) new DateTypeConverter().convertValue(null,
				d, String.class);
		System.out.println(dd);
		showList = movieShowInfoDao.getMovieShowInfoByDate(dd);
		// System.out.println("end---");
		return "showalldateforestage";
	}

	//跳到购买页面
	public String buyTicketForSeat(){
		MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById(showId);
		ActionContext.getContext().getSession().put("ms", ms);
		MovieInfo m = ms.getMovieInfo();
		ActionContext.getContext().getSession().put("m", m);
		ssrList = showSeatRelationDao.getShowSeatList(ms.getShowId());
		request.put("ssrList", ssrList);
		return "showseatsuccess";
	}
	
	// 查看座位信息
	public String showSeat() {
		MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById(showId);
		ActionContext.getContext().getSession().put("ms", ms);
		MovieInfo m = ms.getMovieInfo();
		ActionContext.getContext().getSession().put("m", m);
		ssrList = showSeatRelationDao.getShowSeatList(ms.getShowId());
		request.put("ssrList", ssrList);
		return "showsuccess";
	}

	// 跳到添加页面
	public String showAddUI() {
		movieList = movieInfoDao.getAllMovieInfo();
		return "addUI";
	}

	// 添加场次信息
	public String addMovieShowInfo() {
		try {
			MovieShowInfo ms = new MovieShowInfo();

			String showDate2 = (String) new DateTypeConverter().convertValue(
					null, showDate, String.class);

			ms.setShowDate(showDate2);
			ms.setShowTime(showTime);
			ms.setShowPrice(showPrice);
			ms.setTicketLeft(ticketLeft);
			movieShowInfoDao.addMovieShowInfo(ms);
			movieShowInfoDao.addMovieToShow(movieId, ms.getShowId());// 与影片进行关联
			showSeatRelationDao.initShowSeatRelation(ms);// 初始化座位
			return "addsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 删除场次信息
	public String deleteMovieShowInfo() {
		try {
			MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById(showId);
			movieShowInfoDao.deleteMovieShowInfo(ms);
			return "deletesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 跳到更新页面
	public String showUpdateUI() {
		try {
			ActionContext.getContext().getSession().put("showId", showId);
			movieShowInfo = movieShowInfoDao.getMovieShowInfoById(showId);
			movieList = movieInfoDao.getAllMovieInfo();
			return "updateUI";
		} catch (Exception e) {
			return "error";
		}
	}

	// 更新场次表
	public String updateMovieShowInfo() {
		try {
			Long showid = (Long) ActionContext.getContext().getSession()
					.get("showId");
			MovieInfo m = movieInfoDao.getMovieInfoById(movieId);
			MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById(showid);
			ms.setMovieInfo(m);
			String showDate2 = (String) new DateTypeConverter().convertValue(
					null, showDate, String.class);
			ms.setShowDate(showDate2);
			ms.setShowTime(showTime);
			ms.setShowPrice(showPrice);
			// ms.setTicketLeft(ticketLeft);
			movieShowInfoDao.updateMovieShowInfo(ms);
			ActionContext.getContext().getSession().remove("showId");
			return "updatesuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	// 显示列表
	public String movieShowInfoList() {
		try {
			showList = movieShowInfoDao.getAllMovieShowInfo();
			return "listsuccess";
		} catch (Exception e) {
			return "error";
		}
	}

	public Date getShowDate() {
		return showDate;
	}

	public void setShowDate(Date showDate) {
		this.showDate = showDate;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public Double getShowPrice() {
		return showPrice;
	}

	public void setShowPrice(Double showPrice) {
		this.showPrice = showPrice;
	}

	public Integer getTicketLeft() {
		return ticketLeft;
	}

	public void setTicketLeft(Integer ticketLeft) {
		this.ticketLeft = ticketLeft;
	}

	public MovieInfo getMovieInfo() {
		return movieInfo;
	}

	public void setMovieInfo(MovieInfo movieInfo) {
		this.movieInfo = movieInfo;
	}

	public List<MovieShowInfo> getShowList() {
		return showList;
	}

	public void setShowList(List<MovieShowInfo> showList) {
		this.showList = showList;
	}

	public List<MovieInfo> getMovieList() {
		return movieList;
	}

	public void setMovieList(List<MovieInfo> movieList) {
		this.movieList = movieList;
	}

	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public Long getShowId() {
		return showId;
	}

	public void setShowId(Long showId) {
		this.showId = showId;
	}

	public MovieShowInfo getMovieShowInfo() {
		return movieShowInfo;
	}

	public void setMovieShowInfo(MovieShowInfo movieShowInfo) {
		this.movieShowInfo = movieShowInfo;
	}

	public List<ShowSeatRelation> getSsrList() {
		return ssrList;
	}

	public void setSsrList(List<ShowSeatRelation> ssrList) {
		this.ssrList = ssrList;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
}
