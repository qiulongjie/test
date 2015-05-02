package com.eyuan.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.dao.SimpleTicketInfoDao;
import com.eyuan.domain.MovieShowInfo;
import com.eyuan.domain.SimpleTicketInfo;
import com.eyuan.util.GetNowTimeUtil;
import com.eyuan.util.SendMessageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BuyTicketAction extends ActionSupport implements SessionAware {
	@Resource
	private SimpleTicketInfoDao stDao;
	@Resource
	private ShowSeatRelationDao ssrDao;
	@Resource
	private MovieShowInfoDao msDao;

	private List<SimpleTicketInfo> list;

	Map<String, Object> session;

	// 跳到支付页面
	public String toPay() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = (String) request.getParameter("id");
		String phone = (String) request.getParameter("phone");

		MovieShowInfo ms = (MovieShowInfo) ActionContext.getContext()
				.getSession().get("ms");

		System.out
				.println(ms.getMovieInfo().getMovieName() + ms.getShowPrice());
		System.out.println(id);
		System.out.println(phone);
		System.out.println("===========>>>>>");

		String buyTime = new GetNowTimeUtil().getNowTime();

		list = stDao.addSimpleTicketInfoForBuy(ms.getShowId(), phone,
				ms.getShowPrice(), id, buyTime);
		System.out.println("回到Action");
		System.out.println(list.size());
		System.out.println(list.get(0));
		session.put("list", list);
		return "paying";
	}

	// 支付时间超时
	public String payTimeOut() {
		return "payfalse";
	}

	// 取消支付 (目前没有实现批量取消)
	public String payQuit() {
		System.out.println("进入取消支付===");
		list = (List<SimpleTicketInfo>) session.get("list");
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {

			SimpleTicketInfo s = list.get(i);
			Long sid = s.getMovieShowInfo().getShowId();
			Long seid = s.getSeatInfo().getSeatId();
			MovieShowInfo ms = s.getMovieShowInfo();
			ms.getSimpleTicketInfos().remove(s);
			msDao.updateMovieShowInfo(ms);

			System.out.println("删除开始");
			System.out.println(s.getTicketId());
			stDao.deleteSimpleTicketInfo(s);
			System.out.println("showID:" + sid);
			ssrDao.changeSeatStatus(sid, seid);
		}
		return "payquit";
	}

	// 支付成功
	public String paySuccess() {

		 list = (List<SimpleTicketInfo>) session.get("list");
//		 String phone = list.get(0).getTicketPhone();
//		 String codes = "";
//		 for(int i=0;i<list.size();i++){
//		 codes = codes+list.get(i).getTicketId()+",";
//		 }
//		 String text = "购票成功！您的验证码如下："+codes+"请凭此在电影放映前到影院前台取票";
//		 try {
//		 new SendMessageUtil().sendMessage(phone, text);
//		 } catch (Exception e) {
//		 // TODO Auto-generated catch block
//		 e.printStackTrace();
//		 System.out.println("短信发送失败");
//		 return "paysuccess";
//		 }
		return "paysuccess";
	}

	public List<SimpleTicketInfo> getList() {
		return list;
	}

	public void setList(List<SimpleTicketInfo> list) {
		this.list = list;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
