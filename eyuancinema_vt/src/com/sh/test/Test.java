package com.sh.test;

import java.util.Date;
import java.util.Map;

import com.eyuan.util.DateTypeConverter;
import com.eyuan.util.GetNowTimeUtil;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		String s = "G:\\Program Files\\Apache Software Foundation\\Tomcat 6.0\\webapps\\eyuancinema_vt\\images\\movie\\aaa.jpg";
//        String ss = new GetPathUtil().change(s);
//        System.out.println(ss);
//        String sss = new GetPathUtil().change2(s);
//        System.out.println(sss);
		
		Date d = new Date();
		System.out.println(d);
		
//		Map<String, Object> m = null;
		String s = (String) new GetNowTimeUtil().getTomarrowDay();
		String s2 = (String) new GetNowTimeUtil().getAfterTomarrowDay();
		System.out.println(s);
		System.out.println(s2);
	}

}
