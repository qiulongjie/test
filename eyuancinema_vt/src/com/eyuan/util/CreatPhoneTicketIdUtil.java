package com.eyuan.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CreatPhoneTicketIdUtil {

	public String getPhoneTicketId(Long showId,int seatNumber){
		String tt = new SimpleDateFormat("yyMMddHHmmssSSS") .format(new Date() );
		return tt+showId+seatNumber;
	}
}
