package com.eyuan.util;

public class GetPathUtil {

	/*返回要存入数据库的字段
	 * 此方法跨平台性很弱，不建议使用
	 * 在本人机子可用
	 * 
	 * */
	public String change(String str){
		return "..\\..\\images\\movie"+str.substring(str.lastIndexOf("\\"));
	}
	
	public String change2(String str){
		return str.substring(str.lastIndexOf("\\",70));
	}
}
