<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>更新用户信息</title>
    
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
    <h3>更新用户信息</h3>
     <form name="updateUserInfoForm" method="post" action="userInfo_updateUserInfo">
		账号：<input type="text" name="userInfo.userName" value=${u.userName }><br>
		密码：<input type="text" name="userInfo.userPassword" value=${u.userPassword }><br> 
		电话：<input type="text" name="userInfo.userPhone" value=${u.userPhone }><br>
		邮箱：<input type="text" name="userInfo.userEmail" value=${u.userEmail }><br> 
		生日：<input type="text" name="userInfo.userBirthday" value=${u.userBirthday }><br>
		性别：<input type="text" name="userInfo.userSex" value=${u.userSex }><br> 
		<input type="submit" name="submit" value="确定"> 
		<a href="userInfo_userInfoList">返回</a>
	</form>
  </body>
</html>
