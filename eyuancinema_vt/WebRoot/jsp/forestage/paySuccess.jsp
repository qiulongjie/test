<%@ page language="java" import="java.util.*,com.eyuan.domain.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>支付成功页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body><%List<SimpleTicketInfo> list = (List<SimpleTicketInfo>)session.getAttribute("list");%>
   <center><h1>恭喜您，支付成功！<br> </h1>
   <h5> 以下验证码将会发到你的手机上，请注意查收。请在放映前到影厅柜台取票！<br>
        <% for(int i = 0;i<list.size();i++){ %>
        <%=list.get(i).getTicketId() %><br>
        <%}session.removeAttribute("list"); %>
   </h5>
   <br>
   <a href="eyuancinema.jsp">返回首页</a>
   </center>
   
  </body>
</html>
