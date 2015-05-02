<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="ds" uri="/struts-dojo-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head></head>

<title></title>
<ds:head/>


<body>
	<form name="addMovieShowInfoForm" method="post" action="movieShowInfo_addMovieShowInfo">

     
   
		放映电影：<select name="movieId">
		             <s:iterator value="movieList" >
		                <option value="<s:property value="movieId"/>"><s:property value="movieName"/></option>
		             </s:iterator>
		          </select>
		<br>
		放映日期：<!-- <input type="text" name="showDate"> -->
		<ds:datetimepicker name="showDate" type="date"
		displayFormat="yyyy年MM月dd日">
		</ds:datetimepicker><br> 
		放映时间：<input type="text" name="showTime"><br> 
		价&nbsp;&nbsp;&nbsp;格：<input type="text" name="showPrice"><br> 
		剩余票数：<input type="text" name="ticketLeft" value="100" readonly="readonly"><br> 
		<input type="submit" name="submit" value="提交"> 
		<input type="reset" name="reset" value="重置">
	</form>

</body>
</html>
