package com.eyuan.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;

import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.dao.SimpleTicketInfoDao;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.SimpleTicketInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TicketAction extends ActionSupport implements RequestAware {
	@Resource
	private SimpleTicketInfoDao simpleTicketInfoDao;
	@Resource
	private ShowSeatRelationDao ssrDao;
	@Resource
	private MovieShowInfoDao msDao;

	private SimpleTicketInfo simpleTicketInfo;
	private String ticketId;

	private String ticketPhone;
	private List<SimpleTicketInfo> stList;

	Map<String, Object> request;

	// 跳到查询页面
	public String serchUI(){
		return "serchui";
	}
	
	// 根据电话查询电影票
	public String findTicketByPhone() {
		ActionContext.getContext().getSession().put("phone", ticketPhone);
		stList = simpleTicketInfoDao.getSimpleTicketInfoByPhone(ticketPhone);
		request.put("stList", stList);
		return "phonefindsuccess";
	}

	// 电话查询之后的出票
	public String ticketSerchOut() {
		simpleTicketInfoDao.updateTicketMark(ticketId);
		String p = (String) ActionContext.getContext().getSession().get("phone");
		System.out.println("电话查询之后的出票"+p);
		stList = simpleTicketInfoDao.getSimpleTicketInfoByPhone(p);
		request.put("stList", stList);
		return "pserchoutsuccess";
	}
	
	// 电话查询之后的退票
	public String ticketSerchDelete() {
		System.out.println(ticketId);

		SimpleTicketInfo s = simpleTicketInfoDao
				.getSimpleTicketInfoById(ticketId);
		Long sid =s.getMovieShowInfo().getShowId();
		Long seid =s.getSeatInfo().getSeatId();
		MovieShowInfo ms = s.getMovieShowInfo();
		ms.getSimpleTicketInfos().remove(s);
		msDao.updateMovieShowInfo(ms);
		System.out.println(s.getMovieShowInfo().getShowId());
		System.out.println(s.getSeatInfo().getSeatId());
		simpleTicketInfoDao.deleteSimpleTicketInfo(s);
		ssrDao.changeSeatStatus(sid, seid);
		System.out.println("退票成功");
		String p = (String) ActionContext.getContext().getSession().get("phone");
		stList = simpleTicketInfoDao.getSimpleTicketInfoByPhone(p);
		request.put("stList", stList);
		System.out.println(stList.get(0));
		return "pserchdeletesuccess";
	}
	
	// 根据验证码(ID)查询电影票
	public String findTicketById() {
		ActionContext.getContext().getSession().put("tiid", ticketId);
		System.out.println("根据验证码(ID)查询电影票"+ticketId);
		stList = simpleTicketInfoDao.getSimpleTicketInfoByIdToList(ticketId);
		System.out.println("stList"+stList.get(0).getTicketId());
		request.put("stList", stList);
		return "idfindsuccess";
	}

	// 验证码(ID)查询之后的出票
	public String ticketIdSerchOut() {
		simpleTicketInfoDao.updateTicketMark(ticketId);
		
		stList = simpleTicketInfoDao.getSimpleTicketInfoByIdToList(ticketId);
		request.put("stList", stList);
		ActionContext.getContext().getSession().remove("tiid");
		return "iserchoutsuccess";
	}
	
	// 验证码(ID)查询之后的退票票
	public String ticketIdSerchDelete() {
		System.out.println(ticketId);

		SimpleTicketInfo s = simpleTicketInfoDao
				.getSimpleTicketInfoById(ticketId);
		Long sid =s.getMovieShowInfo().getShowId();
		Long seid =s.getSeatInfo().getSeatId();
		MovieShowInfo ms = s.getMovieShowInfo();
		ms.getSimpleTicketInfos().remove(s);
		msDao.updateMovieShowInfo(ms);
		System.out.println(s.getMovieShowInfo().getShowId());
		System.out.println(s.getSeatInfo().getSeatId());
		simpleTicketInfoDao.deleteSimpleTicketInfo(s);
		ssrDao.changeSeatStatus(sid, seid);
		System.out.println("退票成功");
		return "iserchdeletesuccess";
	}
	
	// 全部电话订票的电影票列表
	public String allPhoneTicket() {
		stList = simpleTicketInfoDao.getAllSimpleTicketInfo();
		request.put("stList", stList);
		return "allphonefindsuccess";
	}

	// 出票
	public String ticketOut() {
		simpleTicketInfoDao.updateTicketMark(ticketId);
		return "outsuccess";
	}

	// 退票
	public String ticketDelete() {
		System.out.println(ticketId);

		SimpleTicketInfo s = simpleTicketInfoDao
				.getSimpleTicketInfoById(ticketId);
		Long sid =s.getMovieShowInfo().getShowId();
		Long seid =s.getSeatInfo().getSeatId();
		MovieShowInfo ms = s.getMovieShowInfo();
		ms.getSimpleTicketInfos().remove(s);
		msDao.updateMovieShowInfo(ms);
		System.out.println(s.getMovieShowInfo().getShowId());
		System.out.println(s.getSeatInfo().getSeatId());
		simpleTicketInfoDao.deleteSimpleTicketInfo(s);
		ssrDao.changeSeatStatus(sid, seid);
		System.out.println("退票成功");
		return "deletesuccess";
	}

	public String getTicketPhone() {
		return ticketPhone;
	}

	public void setTicketPhone(String ticketPhone) {
		this.ticketPhone = ticketPhone;
	}

	public List<SimpleTicketInfo> getStList() {
		return stList;
	}

	public void setStList(List<SimpleTicketInfo> stList) {
		this.stList = stList;
	}

	public SimpleTicketInfo getSimpleTicketInfo() {
		return simpleTicketInfo;
	}

	public void setSimpleTicketInfo(SimpleTicketInfo simpleTicketInfo) {
		this.simpleTicketInfo = simpleTicketInfo;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

}
