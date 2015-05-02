<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>update movieShowInfo</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
    <form name="updateMovieShowInfoForm" method="post" action="movieShowInfo_updateMovieShowInfo">
		
		放映电影：<select name="movieId">
		             <s:iterator value="movieList" >
		                <option value="<s:property value="movieId"/>"><s:property value="movieName"/></option>
		             </s:iterator>
		          </select>
		<br>
        放映日期：<input type="text" name="showDate" value=${movieShowInfo.showDate }><br> 
		放映时间：<input type="text" name="showTime" value=${movieShowInfo.showTime }><br> 
		价格：<input type="text" name="showPrice" value=${movieShowInfo.showPrice }><br> 
		剩余票数：<input type="text" name="ticketLeft" disabled="disabled" value=${movieShowInfo.ticketLeft }><br> 
		<input type="submit" name="submit" value="确定"> 
		<a href="movieShowInfo_movieShowInfoList">返回</a>
	</form>
  </body>
</html>
