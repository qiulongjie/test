<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>更新售票员信息</title>
    
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
  <h3>更新售票员信息</h3>
     <form name="updateSellerInfoForm" method="post" action="sellerInfo_updateSellerInfo">
		账号：<input type="text" name="sellerInfo.seName" value=${se.seName }><br>
		密码：<input type="text" name="sellerInfo.sePassword" value=${se.sePassword }><br> 
		<input type="submit" name="submit" value="确定"> 
		<a href="sellerInfo_sellerInfoList">返回</a>
	</form>
  </body>
</html>
