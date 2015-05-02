<%@ page language="java" import="java.util.*,com.eyuan.domain.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>My JSP 'phoneFindTicketList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style type="text/css">
.cdiv {
	width: 100%;
	height: 14px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	text-overflow: ellipsis; /* IE/Safari */
	-ms-text-overflow: ellipsis;
	-o-text-overflow: ellipsis; /* Opera */
	-moz-binding: url("ellipsis.xml#ellipsis"); /*FireFox*/
}
</style>
  
  <body>
    <br>
	<center>
	<form action="ticket_findTicketByPhone" method="post"
		name="serchTicketByPhone2">
		<input type="text" name="ticketPhone" />&nbsp; 
		<input type="submit" name="submit" value="电话查询" />
	</form>

	<form action="ticket_findTicketById" method="post"
		name="serchTicketByID2">
		<input type="text" name="ticketId" />&nbsp; 
		<input type="submit" name="submit2" value="验证码查询" />
	</form>
	</center>
	<br>
	<center>
	<table width="100%" border="0" bordercolor="blue" cellpadding="0" class="cdiv">
			<tr>
				<th scope="col">验证码</th>
				<th scope="col">订票电话</th>
				<th scope="col">订票时间</th>
				<th scope="col">影片</th>
				<th scope="col">放映日期</th>
				<th scope="col">放映时间</th>
				<th scope="col">座位</th>
				<th scope="col">价格</th>
				<th scope="col">状态</th>
				<th scope="col">操作</th>
			</tr>
			<%
				List<SimpleTicketInfo> relist = (List<SimpleTicketInfo>) request.getAttribute("stList");
			%>
			<%for(int i = 0;i<relist.size();i++){ %>
				<tr>
					<td><%=((SimpleTicketInfo)relist.get(i)).getTicketId() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getTicketPhone() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getBuyTime() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getMovieShowInfo().getMovieInfo().getMovieName() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getMovieShowInfo().getShowDate() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getMovieShowInfo().getShowTime() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getSeatInfo().getSeatLocation() %>
					</td>
					<td><%=((SimpleTicketInfo)relist.get(i)).getTicketPrice() %>
					</td>
					
					<%if(relist.get(i).getTicketMark()==0){ %>
					<td>未出票</td>
					<td><a href="ticket_ticketSerchOut?ticketId=<%=((SimpleTicketInfo)relist.get(i)).getTicketId() %>"
						onclick="return confirm('确定出票？')">出票</a>
						<a href="ticket_ticketSerchDelete?ticketId=<%=((SimpleTicketInfo)relist.get(i)).getTicketId() %>"
						onclick="return confirm('确定退票？退票将扣除50%的退票费！！')">退票</a>
					</td>
					<%}else{ %>
					
					<td>已出票</td>
					<td>&nbsp;&nbsp;</td>
					<%} %>
					
				</tr>
			<%} %>

		</table>
	</center>
  </body>
</html>
