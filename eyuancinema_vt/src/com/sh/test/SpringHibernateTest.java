package com.sh.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.eyuan.dao.MovieInfoDao;
import com.eyuan.dao.MovieShowInfoDao;
import com.eyuan.dao.SeatInfoDao;
import com.eyuan.dao.ShowSeatRelationDao;
import com.eyuan.dao.SimpleTicketInfoDao;
import com.eyuan.domain.SimpleTicketInfo;

public class SpringHibernateTest {
	private static MovieShowInfoDao movieShowInfoDao;
	private static MovieInfoDao movieInfoDao;
	private static ShowSeatRelationDao ssrDao;
	private static SeatInfoDao seatInfoDao;
	private static SimpleTicketInfoDao stDao;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		movieShowInfoDao = (MovieShowInfoDao) applicationContext
				.getBean("movieShowInfoDao");
		movieInfoDao = (MovieInfoDao) applicationContext
				.getBean("movieInfoDao");
		ssrDao = (ShowSeatRelationDao) applicationContext
				.getBean("showSeatRelationDao");
		seatInfoDao = (SeatInfoDao) applicationContext.getBean("seatInfoDao");
		stDao =  (SimpleTicketInfoDao) applicationContext.getBean("simpleTicketInfoDao");
	}

	@Test
	public void test() {
		
		
		List<SimpleTicketInfo> list = stDao.getSimpleTicketInfoByIdToList("130315192816565242");
		System.out.println(list.size());
		System.out.println(list.get(0));
		System.out.println(list.get(0).getTicketId());
//		SimpleTicketInfo st = stDao.getSimpleTicketInfoById("130315191240631222");
//		System.out.println(st.getBuyTime());
//		System.out.println(st.getTicketId());
//		MovieShowInfo ms = st.getMovieShowInfo();
//		System.out.println(ms.getSimpleTicketInfos().size());
//		ms.getShowSeatRelations().remove(st);
//		movieShowInfoDao.updateMovieShowInfo(ms);
//		
//		System.out.println(ms.getSimpleTicketInfos().size());
//		stDao.deleteSimpleTicketInfo(st);
//		
//		ssrDao.changeSeatStatus(ms.getShowId(), (long)21);
		
//		String t = new GetNowTimeUtil().getNowTime();
//		System.out.println(t);
		
		
//		SimpleTicketInfo st = stDao.getSimpleTicketInfoByShowIdAndSeatId((long)1, (long)10);
//		System.out.println(st);
		

//		Long showId = (long) 10;
//		MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById(showId);
//		Set<SimpleTicketInfo> st = ms.getSimpleTicketInfos();
//		System.out.println(st.size());

//		String phone = "15278416564";
//
//		int id[] = new int[3];
//		id[0] = 99;
//		id[1] = 88;
//		id[2] = 77;
//		for (int i = 0; i < id.length; i++) {
//			System.out.println(id[i]);
//			SeatInfo seat = seatInfoDao.getSeatInfoByNumber(id[i]);
//			
//			System.out.println(seat.getSeatLocation());
//			
//			String ticketId = new CreatPhoneTicketIdUtil().getPhoneTicketId(
//					showId, id[i]);
//			SimpleTicketInfo st = new SimpleTicketInfo();
//			st.setTicketId(ticketId);
//			st.setMovieShowInfo(ms);
//			st.setSeatInfo(seat);
//			st.setTicketMark(0);
//			st.setTicketPhone(phone);
//			st.setTicketPrice(100.0);
//			
//			System.out.println("开始保存");
//			
//			stDao.addSimpleTicketInfo(st);
//			
//			ssrDao.changeSeatStatus(showId, (long)id[i]);
//			System.out.println("保存成功");
//			
//			System.out.println("=======>>>>>>>>");
//			
//			System.out.println(st.getTicketId());
//			System.out.println(st.getTicketPhone());
//			System.out.println(st.getMovieShowInfo().getMovieInfo().getMovieName());
//			System.out.println(st.getSeatInfo().getSeatLocation());
//			System.out.println(st.getTicketMark());
//			System.out.println(st.getTicketPrice());
//			
//			System.out.println("<<<<<<<<===-------");
//		}


		// String tt = new SimpleDateFormat("yyMMddHHmmssSSS") .format(new
		// Date() );
		// System.out.println(tt);
		//
		// try {
		// InetAddress net = InetAddress.getLocalHost();
		// System.out.println(net);
		// } catch (UnknownHostException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }

		// Date d = new Date();
		// System.out.println(d);
		// String dd = (String) new DateTypeConverter().convertValue(null,
		// d, String.class);
		// System.out.println(dd);
		//
		// List<MovieShowInfo> list =
		// movieShowInfoDao.getMovieShowInfoByDate(dd);
		// for(MovieShowInfo ms : list){
		// System.out.println("===================");
		// System.out.println(ms.getShowDate());
		// System.out.println(ms);
		// System.out.println(ms.getMovieInfo().getMovieTime());
		// }

		/*
		 * int total = movieShowInfoDao.getTicketLeftFromRelation((long)29);
		 * System.out.println(total);
		 * 
		 * movieShowInfoDao.updateTicketLeft((long)29);
		 */

		// ShowSeatRelation ssr =
		// ssrDao.getShowSeatRelationByShowIdAndSeatId((long)20, (long)100);
		// System.out.println("<><><><><><><>");
		// System.out.println(ssr.getShowSeatId());
		// System.out.println(ssr.getMovieShowInfo().getMovieInfo().getMovieName());
		// System.out.println(ssr.getSeatInfo().getSeatLocation());
		// System.out.println(ssr.getSeatStatus());

		// List<ShowSeatRelation> list= ssrDao.getShowSeatList((long)20);
		// System.out.println(list.size());
		// for(ShowSeatRelation ssr : list){
		// System.out.println("<><><><><><><>");
		// System.out.println(ssr.getShowSeatId());
		// System.out.println(ssr.getMovieShowInfo().getMovieInfo().getMovieName());
		// System.out.println(ssr.getSeatInfo().getSeatLocation());
		// System.out.println(ssr.getSeatStatus());
		// }

		// MovieInfo m = movieInfoDao.getMovieInfoById((long)11);
		// MovieShowInfo ms = movieShowInfoDao.getMovieShowInfoById((long)3);
		// ms.setMovieInfo(m);
		// ms.setShowDate("1111");
		// movieShowInfoDao.updateMovieShowInfo(ms);
		// movieShowInfoDao.deleteMovieShowInfoById((long)8);

		// Set<ShowSeatRelation> ssSet =
		// movieShowInfoDao.getMovieShowInfoById((long)15).getShowSeatRelations();
		// System.out.println("ssSet size:" + ssSet.size());
		// Iterator it = ssSet.iterator();
		// while (it.hasNext()) {
		// ShowSeatRelation ss = (ShowSeatRelation) it.next();
		// System.out.println("==========by ss============");
		// System.out.println(ss.getSeatInfo().getSeatLocation()+">>>>"+ss.getMovieShowInfo().getMovieInfo().getMovieName()+"<<<<"+ss.getSeatStatus());
		// System.out.println("=========================");
		// }
	}

}
