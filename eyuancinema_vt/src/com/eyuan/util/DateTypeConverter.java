package com.eyuan.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

public class DateTypeConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Map<String, Object> context, Object value, Class toType) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
		try { 
			if(toType == Date.class){
				String[] params = (String[]) value;// request.getParameterValues() 
				return dateFormat.parse(params[0]);
			}else if(toType == String.class){
				Date date = (Date) value;
				return dateFormat.format(date);
			}
		} catch (ParseException e) {}
		return null;
	}
	
	public static void main(String[] args){
		Date d = new Date();
		System.out.println(d);
	}
}
