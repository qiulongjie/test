<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'serchTicket.jsp' starting page</title>

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
	<br>
	<br>
	<br>
	<center>
	<form action="ticket_findTicketByPhone" method="post"
		name="serchTicketByPhone">
		<input type="text" name="ticketPhone" size="22" />&nbsp; 
		<input type="submit" name="submit" value="电话查询" size="10"/>
	</form>
		
	<form action="ticket_findTicketById" method="post"
		name="serchTicketByID">
		<input type="text" name="ticketId" size="20" />&nbsp; 
		<input type="submit" name="submit2" value="验证码查询" size="10"/>
	</form>
	</center>
</body>
</html>
