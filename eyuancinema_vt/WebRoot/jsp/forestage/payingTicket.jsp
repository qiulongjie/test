<%@ page language="java" import="java.util.*,com.eyuan.domain.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>影片支付</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>&nbsp; 
     <center>
    <%List<SimpleTicketInfo> list = (List<SimpleTicketInfo>)session.getAttribute("list");%>
    <table border="0">
    <tr><td colspan="5">你将购买的影票为: </td></tr>
    <tr>
    <td>影&nbsp;&nbsp;片</td>
    <td>放映日期</td>
    <td>放映时间</td>
    <td>订票电话</td>
    <td>单&nbsp;&nbsp;价</td>
    </tr>
    <% double sum = 0; %>
    <% for(int i=0;i<list.size();i++) {%>
    <% sum=sum+(double)(list.get(i).getTicketPrice()); %>
    <tr>
    <td><%=list.get(i).getMovieShowInfo().getMovieInfo().getMovieName() %></td>
    <td><%=list.get(i).getMovieShowInfo().getShowDate() %></td>
    <td><%=list.get(i).getMovieShowInfo().getShowTime() %></td>
    <td><%=list.get(i).getTicketPhone() %></td>
    <td><%=list.get(i).getTicketPrice() %></td>
    </tr>
    <%} %>
    <tr><td colspan="5"><center>总票价：<span style="red"><%=sum %></span></center></td></tr>
    <tr><td colspan="5"><center><a href="buyTicket_payQuit">取消</a>&nbsp;&nbsp;&nbsp;<a href="buyTicket_paySuccess">确认支付</a></td></tr>
    </table>
    </center>
  </body>
</html>
