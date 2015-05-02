<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>更新管理员信息</title>
    
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
  <h3>更新管理员信息</h3>
     <form name="updateSuperuserInfoForm" method="post" action="superUserInfo_updateSuperUserInfo">
		账号：<input type="text" name="superUserInfo.suName" value=${su.suName }><br>
		密码：<input type="text" name="superUserInfo.suPassword" value=${su.suPassword }><br> 
		<input type="submit" name="submit" value="确定"> 
		<a href="superUserInfo_superUserInfoList">返回</a>
	</form>
  </body>
</html>
